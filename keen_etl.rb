require 'keen'

# Project to read from 
Keen.project_id = '<your source project>'
Keen.read_key = '<your key>'

# Project to post to, 'keen_store'
keen_store = Keen::Client.new(:project_id => '<new project>', :write_key  => '<new key>')

# This script is for small jobs! Keep extractions < 5k events
data = Keen.extraction("my_event_collection", 
  :timeframe => "last_30_days",
  :filters => [{
    "property_name" => "score",
    "operator" => "gte",
    "property_value" => 0
  }]
  )
  
i = 0
t1 = Time.now
puts 'Total number of events to process: ' + data.length.to_s

new_data = []

data.each do |event|  
	puts i.to_s + " out of " + data.length.to_s
	new_event = event
	new_event['keen'].delete('created_at') 
	new_event['keen'].delete('id')

	new_data << event
	i = i + 1
end

keen_store.publish_batch(:new_collection_name => new_data)

puts "Script Completed!"
t2 = Time.now
delta = t2 - t1
puts "Total Runtime: " + delta.to_s

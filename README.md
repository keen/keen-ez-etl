# keen-ez-etl
A tiny ruby script for exporting small batches of events from one project, modifying them, and loading them into another

Steps to use this script:

1. Clone this repo or download the script `keen_etl.rb`
2. In terminal, navigate to the folder where you put `keen_etl.rb`
3. Install keen gem from the command line: `$ gem install keen`
4. Open the script and populate it with the following:

* source project ID
* source read key
* source collection name
* destination project ID
* destination write key
* destination collection name

Finally, run the script using the command `$ ruby keen_etl.rb`

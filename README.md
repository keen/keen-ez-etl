# keen-ez-etl
A tiny ruby script for exporting small batches of events from one project, modifying them, and loading them into another

Steps to use this script:

1. Clone the repo or download the script keen_etl.rb
2. In your terminal, navigate to the folder where you put keen_etl.rb
3. If you don't already have the keen gem installed, install it from the command line: '$ gem install keen'
4. Open the script populate it with the following:
    a. source project ID
    b. source read key
    c. source collection name
    d. destination project ID
    e. destination write key
    f. destination collection name
5. Run the script using the command '$ ruby keen_etl.rb'

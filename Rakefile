# #!/usr/bin/env ruby
#
# require './app/house_bills/house_bills.rb'
# require './app/house_bills/convert_house_bills.rb'
#
desc "Go get all information from API and make csvs"
task :main do
  ruby 'app/house_bills/house_bills.rb'
  # Run the curl commands
  # sleep 1
  # Run the convert files
  ruby 'app/house_bills/convert_house_bills.rb'
end

# #!/usr/bin/env ruby
#
# require './app/house_bills/house_bills.rb'
# require './app/house_bills/convert_house_bills.rb'
#
desc "Go get all information from API and make csvs"
task :main do

  ruby 'app/tasks/cleanup.rb'

  ruby 'app/house_bills/house_bills.rb'

  ruby 'app/house_bills/convert_house_bills.rb'

  ruby 'app/senate_bills/senate_bills.rb'

  ruby 'app/senate_bills/convert_senate_bills.rb'
end

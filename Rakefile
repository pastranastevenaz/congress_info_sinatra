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

# THIS FILE FAILS TO EXECUTE PROPERLY WHILE RUN AS A RAKE TASK.
# NEE TO FIGUREE OUT WHY.
  # ruby 'app/tasks/aws_connect.rb'

end

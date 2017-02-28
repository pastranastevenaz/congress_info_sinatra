if File.exists?('app/house_bills/temp/current_house.json')
  FileUtils.rm('app/senate_bills/temp/current_senate.json')

  FileUtils.rm('app/house_bills/temp/current_house.json')

  FileUtils.rm('app/house_bills/public/current_house.csv')

  FileUtils.rm('app/senate_bills/public/current_senate.csv')

end

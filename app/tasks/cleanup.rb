if File.exists?('app/house_bills/temp/current_house.json')
  FileUtils.rm('app/house_bills/temp/current_house.json')

  FileUtils.rm('app/house_bills/public/current_house.csv')
end

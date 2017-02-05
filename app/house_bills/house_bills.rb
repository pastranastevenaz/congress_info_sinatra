#!/usr/bin/env ruby

require 'curb'
require 'curb-fu'

current_time = Time.new
currentTimeYear = current_time.year
currentTimeMonth = current_time.month
currentTimeDay = current_time.day

response = CurbFu.get(:url => 'https://api.propublica.org/congress/v1/115/house/bills/introduced.json',
					  :headers => {'X-API-Key' => '0G65D2vjkSrMYjh3NQSk9dZ235c2yVZ1gBtxUHVf'})
# puts response.body
# ct = current_time.to_s
cty = currentTimeYear.to_s
ctm = currentTimeMonth.to_s
ctd = currentTimeDay.to_s

date_stamp = cty+" "+ctm+" "+ctd
puts date_stamp

File.open('app/house_bills/temp/current_house.json', 'ab'){ |f|
	f.write(
	# date_stamp + "\n" +
	response.body)}

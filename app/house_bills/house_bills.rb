#!/usr/bin/env ruby

require 'curb'
require 'curb-fu'


response = CurbFu.get(:url => 'https://api.propublica.org/congress/v1/115/house/bills/introduced.json',
					  :headers => {'X-API-Key' => '0G65D2vjkSrMYjh3NQSk9dZ235c2yVZ1gBtxUHVf'})


File.open('app/house_bills/temp/current_house.json', 'ab'){ |f|
	f.write(
	response.body)}

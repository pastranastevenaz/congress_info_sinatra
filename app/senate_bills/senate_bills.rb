require 'curb'
require 'curb-fu'


response = CurbFu.get(:url => 'https://api.propublica.org/congress/v1/115/senate/bills/introduced.json',
					  :headers => {'X-API-Key' => '0G65D2vjkSrMYjh3NQSk9dZ235c2yVZ1gBtxUHVf'})

File.open('app/senate_bills/temp/current_senate.json', 'ab'){ |f|
  f.write(
  response.body)}

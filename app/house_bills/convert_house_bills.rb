#!/usr/bin/env ruby

require 'csv'
require 'json'
require 'curb'
require 'curb-fu'

#Open file
json_file = File.read('app/house_bills/temp/current_house.json')
#Parse data from file in variable
json_hash = JSON.parse(json_file)

##################################################
#  FIND MEMBER AND ASSIGN LAST AND FIRST TO VAR  #
# ##################################################
# member_response = CurbFu.get(:url => 'https://api.propublica.org/congress/v1/members/C001068.json',
# 					  :headers => {'X-API-Key' => '0G65D2vjkSrMYjh3NQSk9dZ235c2yVZ1gBtxUHVf'})
# member_hash = JSON.parse(member_response.body)
#
# last_name = member_hash['results'][0]['last_name']
# first_name = member_hash['results'][0]['first_name']
# puts last_name +", " + first_name
##################################################
#  GET ALL 20 BILLS AND THEN APPEND TO AN ARRAY  #
##################################################
#=============NUMBERS=============================
n0 = json_hash['results'][0]['bills'][0]['number']
n1 = json_hash['results'][0]['bills'][1]['number']
n2 = json_hash['results'][0]['bills'][2]['number']
n3 = json_hash['results'][0]['bills'][3]['number']
n4 = json_hash['results'][0]['bills'][4]['number']
n5 = json_hash['results'][0]['bills'][5]['number']
n6 = json_hash['results'][0]['bills'][6]['number']
n7 = json_hash['results'][0]['bills'][7]['number']
n8 = json_hash['results'][0]['bills'][8]['number']
n9 = json_hash['results'][0]['bills'][9]['number']
n10 = json_hash['results'][0]['bills'][10]['number']
n11 = json_hash['results'][0]['bills'][11]['number']
n12 = json_hash['results'][0]['bills'][12]['number']
n13 = json_hash['results'][0]['bills'][13]['number']
n14 = json_hash['results'][0]['bills'][14]['number']
n15 = json_hash['results'][0]['bills'][15]['number']
n16 = json_hash['results'][0]['bills'][16]['number']
n17 = json_hash['results'][0]['bills'][17]['number']
n18 = json_hash['results'][0]['bills'][18]['number']
n19 = json_hash['results'][0]['bills'][19]['number']
num_array = [n0,n1,n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12,n13,n14,n15,n16,n17,n18,n19]
#=============TITLES=============================
title0 = json_hash['results'][0]['bills'][0]['title']
title1 = json_hash['results'][0]['bills'][1]['title']
title2 = json_hash['results'][0]['bills'][2]['title']
title3 = json_hash['results'][0]['bills'][3]['title']
title4 = json_hash['results'][0]['bills'][4]['title']
title5 = json_hash['results'][0]['bills'][5]['title']
title6 = json_hash['results'][0]['bills'][6]['title']
title7 = json_hash['results'][0]['bills'][7]['title']
title8 = json_hash['results'][0]['bills'][8]['title']
title9 = json_hash['results'][0]['bills'][9]['title']
title10 = json_hash['results'][0]['bills'][10]['title']
title11 = json_hash['results'][0]['bills'][11]['title']
title12 = json_hash['results'][0]['bills'][12]['title']
title13 = json_hash['results'][0]['bills'][13]['title']
title14 = json_hash['results'][0]['bills'][14]['title']
title15 = json_hash['results'][0]['bills'][15]['title']
title16 = json_hash['results'][0]['bills'][16]['title']
title17 = json_hash['results'][0]['bills'][17]['title']
title18 = json_hash['results'][0]['bills'][18]['title']
title19 = json_hash['results'][0]['bills'][19]['title']
title_array = [title0,title1,title2,title3,title4,title5,title6,title7,title8,title9,title10,title11,title12,title13,title14,title15,title16,title17,title18,title19]
#=============INTRODUCED_DATE=============================
intdate0 = json_hash['results'][0]['bills'][0]['introduced_date']
intdate1 = json_hash['results'][0]['bills'][1]['introduced_date']
intdate2 = json_hash['results'][0]['bills'][2]['introduced_date']
intdate3 = json_hash['results'][0]['bills'][3]['introduced_date']
intdate4 = json_hash['results'][0]['bills'][4]['introduced_date']
intdate5 = json_hash['results'][0]['bills'][5]['introduced_date']
intdate6 = json_hash['results'][0]['bills'][6]['introduced_date']
intdate7 = json_hash['results'][0]['bills'][7]['introduced_date']
intdate8 = json_hash['results'][0]['bills'][8]['introduced_date']
intdate9 = json_hash['results'][0]['bills'][9]['introduced_date']
intdate10 = json_hash['results'][0]['bills'][10]['introduced_date']
intdate11 = json_hash['results'][0]['bills'][11]['introduced_date']
intdate12 = json_hash['results'][0]['bills'][12]['introduced_date']
intdate13 = json_hash['results'][0]['bills'][13]['introduced_date']
intdate14 = json_hash['results'][0]['bills'][14]['introduced_date']
intdate15 = json_hash['results'][0]['bills'][15]['introduced_date']
intdate16 = json_hash['results'][0]['bills'][16]['introduced_date']
intdate17 = json_hash['results'][0]['bills'][17]['introduced_date']
intdate18 = json_hash['results'][0]['bills'][18]['introduced_date']
intdate19 = json_hash['results'][0]['bills'][19]['introduced_date']
introduced_date_array = [intdate0,intdate1,intdate2,intdate3,intdate4,intdate5,intdate6,intdate7,intdate8,intdate9,intdate10,intdate11,intdate12,intdate13,intdate14,intdate15,intdate16,intdate17,intdate18,intdate19]
#=============SPONSOR=============================
sponsor0 = json_hash['results'][0]['bills'][0]['sponsor_uri']
sponsor1 = json_hash['results'][0]['bills'][1]['sponsor_uri']
sponsor2 = json_hash['results'][0]['bills'][2]['sponsor_uri']
sponsor3 = json_hash['results'][0]['bills'][3]['sponsor_uri']
sponsor4 = json_hash['results'][0]['bills'][4]['sponsor_uri']
sponsor5 = json_hash['results'][0]['bills'][5]['sponsor_uri']
sponsor6 = json_hash['results'][0]['bills'][6]['sponsor_uri']
sponsor7 = json_hash['results'][0]['bills'][7]['sponsor_uri']
sponsor8 = json_hash['results'][0]['bills'][8]['sponsor_uri']
sponsor9 = json_hash['results'][0]['bills'][9]['sponsor_uri']
sponsor10 = json_hash['results'][0]['bills'][10]['sponsor_uri']
sponsor11 = json_hash['results'][0]['bills'][11]['sponsor_uri']
sponsor12 = json_hash['results'][0]['bills'][12]['sponsor_uri']
sponsor13 = json_hash['results'][0]['bills'][13]['sponsor_uri']
sponsor14 = json_hash['results'][0]['bills'][14]['sponsor_uri']
sponsor15 = json_hash['results'][0]['bills'][15]['sponsor_uri']
sponsor16 = json_hash['results'][0]['bills'][16]['sponsor_uri']
sponsor17 = json_hash['results'][0]['bills'][17]['sponsor_uri']
sponsor18 = json_hash['results'][0]['bills'][18]['sponsor_uri']
sponsor19 = json_hash['results'][0]['bills'][19]['sponsor_uri']
sponsor_array = [sponsor0,sponsor1,sponsor2,sponsor3,sponsor4,sponsor5,sponsor6,sponsor7,sponsor8,sponsor9,sponsor10,sponsor11,sponsor12,sponsor13,sponsor14,sponsor15,sponsor16,sponsor17,sponsor18,sponsor19]
#=============COSPONSORS=============================
cosponsors0 = json_hash['results'][0]['bills'][0]['cosponsors']
cosponsors1 = json_hash['results'][0]['bills'][1]['cosponsors']
cosponsors2 = json_hash['results'][0]['bills'][2]['cosponsors']
cosponsors3 = json_hash['results'][0]['bills'][3]['cosponsors']
cosponsors4 = json_hash['results'][0]['bills'][4]['cosponsors']
cosponsors5 = json_hash['results'][0]['bills'][5]['cosponsors']
cosponsors6 = json_hash['results'][0]['bills'][6]['cosponsors']
cosponsors7 = json_hash['results'][0]['bills'][7]['cosponsors']
cosponsors8 = json_hash['results'][0]['bills'][8]['cosponsors']
cosponsors9 = json_hash['results'][0]['bills'][9]['cosponsors']
cosponsors10 = json_hash['results'][0]['bills'][10]['cosponsors']
cosponsors11 = json_hash['results'][0]['bills'][11]['cosponsors']
cosponsors12 = json_hash['results'][0]['bills'][12]['cosponsors']
cosponsors13 = json_hash['results'][0]['bills'][13]['cosponsors']
cosponsors14 = json_hash['results'][0]['bills'][14]['cosponsors']
cosponsors15 = json_hash['results'][0]['bills'][15]['cosponsors']
cosponsors16 = json_hash['results'][0]['bills'][16]['cosponsors']
cosponsors17 = json_hash['results'][0]['bills'][17]['cosponsors']
cosponsors18 = json_hash['results'][0]['bills'][18]['cosponsors']
cosponsors19 = json_hash['results'][0]['bills'][19]['cosponsors']
cosponsors_array = [cosponsors0,cosponsors1,cosponsors2,cosponsors3,cosponsors4,cosponsors5,cosponsors6,cosponsors7,cosponsors8,cosponsors9,cosponsors10,cosponsors11,cosponsors12,cosponsors13,cosponsors14,cosponsors15,cosponsors16,cosponsors17,cosponsors18,cosponsors19]
#=============COMMITTEES=============================
committees0 = json_hash['results'][0]['bills'][0]['committees']
committees1 = json_hash['results'][0]['bills'][1]['committees']
committees2 = json_hash['results'][0]['bills'][2]['committees']
committees3 = json_hash['results'][0]['bills'][3]['committees']
committees4 = json_hash['results'][0]['bills'][4]['committees']
committees5 = json_hash['results'][0]['bills'][5]['committees']
committees6 = json_hash['results'][0]['bills'][6]['committees']
committees7 = json_hash['results'][0]['bills'][7]['committees']
committees8 = json_hash['results'][0]['bills'][8]['committees']
committees9 = json_hash['results'][0]['bills'][9]['committees']
committees10 = json_hash['results'][0]['bills'][10]['committees']
committees11 = json_hash['results'][0]['bills'][11]['committees']
committees12 = json_hash['results'][0]['bills'][12]['committees']
committees13 = json_hash['results'][0]['bills'][13]['committees']
committees14 = json_hash['results'][0]['bills'][14]['committees']
committees15 = json_hash['results'][0]['bills'][15]['committees']
committees16 = json_hash['results'][0]['bills'][16]['committees']
committees17 = json_hash['results'][0]['bills'][17]['committees']
committees18 = json_hash['results'][0]['bills'][18]['committees']
committees19 = json_hash['results'][0]['bills'][19]['committees']
committees_array = [committees0,committees1,committees2,committees3,committees4,committees5,committees6,committees7,committees8,committees9,committees10,committees11,committees12,committees13,committees14,committees15,committees16,committees17,committees18,committees19]
#=============LATEST_MAJOR_ACTON_DATE=============================
latest_major_action_date0 = json_hash['results'][0]['bills'][0]['latest_major_action_date']
latest_major_action_date1 = json_hash['results'][0]['bills'][1]['latest_major_action_date']
latest_major_action_date2 = json_hash['results'][0]['bills'][2]['latest_major_action_date']
latest_major_action_date3 = json_hash['results'][0]['bills'][3]['latest_major_action_date']
latest_major_action_date4 = json_hash['results'][0]['bills'][4]['latest_major_action_date']
latest_major_action_date5 = json_hash['results'][0]['bills'][5]['latest_major_action_date']
latest_major_action_date6 = json_hash['results'][0]['bills'][6]['latest_major_action_date']
latest_major_action_date7 = json_hash['results'][0]['bills'][7]['latest_major_action_date']
latest_major_action_date8 = json_hash['results'][0]['bills'][8]['latest_major_action_date']
latest_major_action_date9 = json_hash['results'][0]['bills'][9]['latest_major_action_date']
latest_major_action_date10 = json_hash['results'][0]['bills'][10]['latest_major_action_date']
latest_major_action_date11 = json_hash['results'][0]['bills'][11]['latest_major_action_date']
latest_major_action_date12 = json_hash['results'][0]['bills'][12]['latest_major_action_date']
latest_major_action_date13 = json_hash['results'][0]['bills'][13]['latest_major_action_date']
latest_major_action_date14 = json_hash['results'][0]['bills'][14]['latest_major_action_date']
latest_major_action_date15 = json_hash['results'][0]['bills'][15]['latest_major_action_date']
latest_major_action_date16 = json_hash['results'][0]['bills'][16]['latest_major_action_date']
latest_major_action_date17 = json_hash['results'][0]['bills'][17]['latest_major_action_date']
latest_major_action_date18 = json_hash['results'][0]['bills'][18]['latest_major_action_date']
latest_major_action_date19 = json_hash['results'][0]['bills'][19]['latest_major_action_date']
latest_major_action_date_array = [latest_major_action_date0,latest_major_action_date1,latest_major_action_date2,latest_major_action_date3,latest_major_action_date4,latest_major_action_date5,latest_major_action_date6,latest_major_action_date7,latest_major_action_date8,latest_major_action_date9,latest_major_action_date10,latest_major_action_date11,latest_major_action_date12,latest_major_action_date13,latest_major_action_date14,latest_major_action_date15,latest_major_action_date16,latest_major_action_date17,latest_major_action_date18,latest_major_action_date19]
#=============LATEST_MAJOR_ACTON=============================
latest_major_action0 = json_hash['results'][0]['bills'][0]['latest_major_action']
latest_major_action1 = json_hash['results'][0]['bills'][1]['latest_major_action']
latest_major_action2 = json_hash['results'][0]['bills'][2]['latest_major_action']
latest_major_action3 = json_hash['results'][0]['bills'][3]['latest_major_action']
latest_major_action4 = json_hash['results'][0]['bills'][4]['latest_major_action']
latest_major_action5 = json_hash['results'][0]['bills'][5]['latest_major_action']
latest_major_action6 = json_hash['results'][0]['bills'][6]['latest_major_action']
latest_major_action7 = json_hash['results'][0]['bills'][7]['latest_major_action']
latest_major_action8 = json_hash['results'][0]['bills'][8]['latest_major_action']
latest_major_action9 = json_hash['results'][0]['bills'][9]['latest_major_action']
latest_major_action10 = json_hash['results'][0]['bills'][10]['latest_major_action']
latest_major_action11 = json_hash['results'][0]['bills'][11]['latest_major_action']
latest_major_action12 = json_hash['results'][0]['bills'][12]['latest_major_action']
latest_major_action13 = json_hash['results'][0]['bills'][13]['latest_major_action']
latest_major_action14 = json_hash['results'][0]['bills'][14]['latest_major_action']
latest_major_action15 = json_hash['results'][0]['bills'][15]['latest_major_action']
latest_major_action16 = json_hash['results'][0]['bills'][16]['latest_major_action']
latest_major_action17 = json_hash['results'][0]['bills'][17]['latest_major_action']
latest_major_action18 = json_hash['results'][0]['bills'][18]['latest_major_action']
latest_major_action19 = json_hash['results'][0]['bills'][19]['latest_major_action']
latest_major_action_array = [latest_major_action0,latest_major_action1,latest_major_action2,latest_major_action3,latest_major_action4,latest_major_action5,latest_major_action6,latest_major_action7,latest_major_action8,latest_major_action9,latest_major_action10,latest_major_action11,latest_major_action12,latest_major_action13,latest_major_action14,latest_major_action15,latest_major_action16,latest_major_action17,latest_major_action18,latest_major_action19]

####################################
# APPEND ALL ARRAYS TO table ARRAY #
####################################
data_headers = ['number', 'title', 'introduced date', 'sponsor', 'cosponsors', 'committees', 'latest action day', 'latest action']
data_table = [num_array, title_array, introduced_date_array,sponsor_array, cosponsors_array, committees_array, latest_major_action_date_array, latest_major_action_array].transpose
CSV.open('app/house_bills/public/current_house.csv', 'ab') do |csv|
	csv << data_headers
	data_table.each do |row|
    csv << row
  end
end

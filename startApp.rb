require 'sinatra'


# # S3 settings
#  s3 = Aws::S3.new(
#  :access_key_id => ENV['S3_ACCESS_ID'],
#  :secret_access_key => ENV['S3_SECRET_KEY']
#  )
# BUCKET = s3.buckets[ENV['S3_BUCKET']]

set :public_folder, File.dirname(__FILE__)
set :root, File.dirname(__FILE__)
# set :public_folder, File.dirname(__FILE__) + "/app/house_bills/public"
get '/' do
  @title = "Current Bills"
  erb :index
end

get '/currrent_house/' do
  "Hello"
end

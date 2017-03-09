require 'sinatra'
require 'rack/flash/test'

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

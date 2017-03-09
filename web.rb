require 'sinatra'

set :public_folder, '/app/house_bills/public'

get '/' do
  @title = "Current Bills"
  erb :index
end

get '/currrent_house/' do
  "Hello"
end

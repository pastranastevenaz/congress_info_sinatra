require 'sinatra'

get '/' do
  @title = "Current Bills"
  erb :index
end

get '/currrent_house/' do
  "Hello"
end

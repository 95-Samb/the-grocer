# myapp.rb
require 'sinatra'
get '/' do
  erb :hello
end

get '/inventory' do
	erb :inventory_table
end
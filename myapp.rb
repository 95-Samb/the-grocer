# myapp.rb
require 'bundler/setup'
require 'sinatra'
require 'csv'

get '/' do
  erb :hello
end

get '/inventory' do
	erb :inventory_table
end

get '/test' do
	erb :test
end

get '/csv' do 
    #content_type 'application/csv'
    #attachment "test.csv"
    @@csv_string = CSV.generate do |csv|
        csv << ["row", "of", "CSV", "data",]
        csv << ["another", "row"]
        # ...
    end    
end
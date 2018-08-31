# myapp.rb
require 'bundler/setup'
require 'sinatra'
require 'csv'

get '/' do
  erb :hello
end

get '/inventory' do
    # content_type 'application/csv'
    # attachment "test.csv"
    @csv_string = CSV.generate do |csv|
        csv << ["ID", "Name", "Price", "Stock",]
        csv << ["1", "Widget", "£100", "3"]
        csv << ["2", "Thingy", "£150", "30"]
    end

    @products = [
        {
            id: 1,
            name: "Widget",
            price: "100",
            stock: 3
        },
        {
            id: 2,
            name: "Thingy",
            price: "150",
            stock: 30
        },
    ]

    erb :inventory_table
end

post '/inventory' do
    "HELLO"
end

get '/test' do
    erb :test
end

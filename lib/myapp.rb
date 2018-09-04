# myapp.rb
require 'bundler/setup'
require 'sinatra'
require 'csv'
require "sinatra/base"

class App < Sinatra::Base

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
    @id = params[:id]
    @name = params[:name]
    @price = params[:price]
    @stock = params[:stock]
    @products.push({id: @id,
        name: @name,
        price: @price,
        stock: @stock})
  end

  get '/test' do
    erb :test
  end
end

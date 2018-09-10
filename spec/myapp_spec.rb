require "spec_helper"
require_relative "../myapp"

describe App do
	it "works" do
		get "/"
		expect(last_response).to be_ok
	end	
	

	it "posts up information inserted into the form in /inventory" do
		post "/inventory", {id: 1,name: "banana",price: 0.1, stock: 10}
		expect(last_response.body).to eq("[id:1, name:banana, price:0.1, stock:10]")
	end
end
require "spec_helper"
require_relative "../myapp"

RSpec.describe App do
	it "works" do
		get "/"
		expect(last_response).to be_ok
	end	
end
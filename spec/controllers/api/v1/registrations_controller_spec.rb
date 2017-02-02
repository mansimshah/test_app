require 'rails_helper'

RSpec.describe Api::V1::RegistrationsController, type: :controller do
	let(:user) { FactoryGirl.attributes_for(:user) }

	describe "Create User" do
	    it "register a User" do
			@request.env["devise.mapping"] = Devise.mappings[:user]
	  		expect {
        		post :create, user: (user), format: :json
      	}.to change(User, :count).by(1)
	  	end
	end
end
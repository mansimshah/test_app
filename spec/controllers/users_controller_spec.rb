require 'rails_helper'

RSpec.describe UsersController, type: :controller do

	let(:user) { FactoryGirl.create(:user) }

	describe "GET User" do
	    it "Retrieve User details" do
			get :show, params: { id: user.id }, format: :json
      		assert_response :success
	  	end
	end

end

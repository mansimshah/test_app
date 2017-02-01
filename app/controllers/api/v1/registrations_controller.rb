class Api::V1::RegistrationsController < Devise::RegistrationsController
	respond_to :json

	def create
		build_resource(sign_up_params)
		respond_to do |format|
			if resource.save
		  		sign_in resource
				format.json { render json: { status: 200, data: resource }}
			else
				format.json { render json: { status: 200, message: "Invalid details" }}
			end
		end		
	end

	def sign_up_params
		params.require(:user).permit(:email, :password, :password_confirmation, :first_name, :last_name, :zipcode, :street, :country)
	end
end

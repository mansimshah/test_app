class Api::V1::RegistrationsController < Devise::RegistrationsController

	def create
		build_resource(sign_up_params)

    respond_to do |format|
			if resource.save
        sign_in resource
        if request.format == 'html'
          format.html { redirect_to users_path }
        else
          format.json { render json: { status: 200, data: resource }}
        end
			else
				format.json { render json: { status: 200, message: "Invalid details" }}
			end
    end

  end

  protected

	def sign_up_params
		params.require(:user).permit(:email, :password, :password_confirmation, :first_name, :last_name, :zipcode, :street, :country)
  end

end
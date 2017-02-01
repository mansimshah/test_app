class UsersController < ApplicationController
	respond_to :json

	def show
		@user = User.find(params[:id])
		respond_to do |format|
			if @user.present?
				format.json { render json: { status: 200, data: @user }}
			else
				format.json { render json: { status: 200, message: "User details not found" }}
			end
		end		
	end
end

Rails.application.routes.draw do
    devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 	
 	resources :users
	
	namespace :api do
		namespace :v1 do
		  devise_for :users, controllers: {registrations: "api/v1/registrations" }
		end
	end

end
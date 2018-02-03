Rails.application.routes.draw do


  	#resources :themes
	root to: "home#index"
	devise_for :shop_admins

	namespace :admin do
		resources :themes
		resources :dashboard
	end
end

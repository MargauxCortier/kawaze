Rails.application.routes.draw do
	devise_for :users, controllers: { registrations: 'users/registrations' }
	
  # get 'home/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'categories#index'
  get '/topic/new', to: 'home#new_topic_03'
  get '/topic', to: 'home#topic_02'
  get '/new_account', to: 'home#new_account_04'
  get '/categories/forums/:id', to:'forums#show'

  root 'categories#index'

  resources :categories do
    resources :forums do
  		resources :posts do
  			resources :comments
  		end
  	end
  end
end



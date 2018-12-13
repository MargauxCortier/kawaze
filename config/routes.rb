Rails.application.routes.draw do
	
  # get 'home/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  

  devise_for :users, controllers: { registrations: 'users/registrations' }

  root 'home#index'
  get '/users/:id', to: 'profile#show'
  get '/chat', to: 'rooms#show'
  mount ActionCable.server => '/cable'
  
  get '/find', to: 'find_users#show'
  post '/find', to: 'find_users#find'
 
  get '/new_account', to: 'home#new_account_04'

# Forum routes
  resources :categories do
    resources :forums do
  		resources :posts do
  			resources :comments
  		end
  	end
  end

  

  
end


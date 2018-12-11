Rails.application.routes.draw do
	
  
  get 'find_users/show'
  get 'find_users/find'
	devise_for :users, controllers: { registrations: 'users/registrations' }

  # get 'home/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'
  get '/users/:id', to: 'profile#show'
  get '/chat', to: 'chat#index'
  post '/chat', to: 'chat#index'
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

  mount ActionCable.server => '/cable'
end



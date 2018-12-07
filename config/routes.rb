Rails.application.routes.draw do
	devise_for :users, controllers: { registrations: 'users/registrations' }

  # get 'home/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'
  get '/users/:id', to: 'profile#show'
  get '/topic', to: 'home#topic_02'
 
  get '/new_account', to: 'home#new_account_04'
end

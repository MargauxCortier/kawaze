Rails.application.routes.draw do
	devise_for :users, controllers: { registrations: 'users/registrations' }
  # get 'home/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'
  get '/topic/new', to: 'home#new_topic_03'
  get '/topic', to: 'home#topic_02'
end

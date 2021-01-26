Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do
    resources :users, only: [:show, :index, :create]
    post '/users/login', to: 'users#login'
    resources :reviews, only: [:show, :index, :create, :update, :destroy]
    resources :delis, only: [:index, :show, :create]
    resources :sandwiches, only: [:index, :show, :create]
    resources :likes, only: [:index, :show, :create]
    resources :deli_sandwiches, only: [:index, :show, :create]
  end
end

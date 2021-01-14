Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do
    resources :users, only: [:index, :create]
    resources :reviews, only: [:show, :index, :create]
    resources :delis, only: [:index, :show, :create]
    resources :sandwiches, only: [:index, :show]
    resources :likes, only: [:index, :show, :create]
    resources :deli_sandwiches, only: [:index, :show, :create]
  end
end

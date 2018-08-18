Rails.application.routes.draw do


  root to: 'pages#home'
  devise_for :users
  namespace :users do
    resources :bookings, only: [:index]
  end

  resources :lessons, only: [:index, :show, :edit] do
    resources :videos, only: [:show]
    resources :bookings, only: [:show, :create] do
      resources :payments, only: [:new, :create]
    end

  get 'video/show'
  end
end

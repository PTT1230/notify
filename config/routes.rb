Rails.application.routes.draw do

  post '/callback' => 'linebot#callback'
  
  devise_for :users, controllers: {
    omniauth_callbacks: 'omniauth_callbacks'
  }
  root to: 'contents#index'
  resources :contents
  resources :users, only: :show
end
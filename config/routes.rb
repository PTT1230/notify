Rails.application.routes.draw do
  get 'contents/index'
  get 'contents/new'
  devise_for :users, controllers: {
    omniauth_callbacks: "omniauth_callbacks"
  }
  root to: 'contents#index'
  resources :contents
end

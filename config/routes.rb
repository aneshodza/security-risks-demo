Rails.application.routes.draw do
  get 'insecure-login', to: 'insecure_user#index'
  post 'insecure-login', to: 'insecure_user#create'
  get 'items', to: 'items#index'
  get 'admin', to: 'broken_access_control#index'

  get 'ssrf', to: 'ssrf#index'

  devise_for :users
  root to: "home#index"
end

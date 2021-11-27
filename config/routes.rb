Rails.application.routes.draw do
  resources :conversations
  resources :prospects

  devise_for :users

  root "prospects#index"
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

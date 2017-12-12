Rails.application.routes.draw do
  resources :comments
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  root 'homes#index'
  resources :animes
  resources :pages
end

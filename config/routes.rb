Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'uno' => 'animes#uno'
  post 'uno' => 'animes#postuno'

  root 'homes#index'
  resources :animes
end

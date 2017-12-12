Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  root 'homes#index'
  resources :animes do
    resources :comments, only: [:create, :destroy, :update]
  end
  resources :pages 
end

Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "top#index"
  resources :user, only: [:show, :edit, :update]
  resources :group, only: [:show, :edit, :update]
  resources :questions, only: [:create]
  resources :answers  , only: [:new, :create]

end

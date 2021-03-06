Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :vans do
    resources :reservations, only: [:new, :create]
  end
  resources :reservations, only: [:index, :edit, :update, :destroy] do
    resources :reviews, only: [:show, :new, :create]
  end
end

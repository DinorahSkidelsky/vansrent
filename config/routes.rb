Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :vans do
    resources :reservations, only: [:show, :new, :create] do
      resources :reviews, only: [:show, :new, :create]
    end
  end
  resources :reservations, only: [:edit, :update, :destroy]
end

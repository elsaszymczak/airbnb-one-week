Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :users do
    resources :bookings, only: [:index, :show]
  end

  resources :camps do
    resources :bookings, only: [:new, :create]
  end

  # resources :users do
  #   resources :camps, only: []
  # end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

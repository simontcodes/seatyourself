Rails.application.routes.draw do

resources :sessions, only: [:new, :create, :destroy]

  resources :restaurants do
    resources :reservations
  end

  resources :users do
    resources :reservations
  end

end

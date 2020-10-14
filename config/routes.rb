Rails.application.routes.draw do
  resources :players, only: %i[index show]
  resources :teams, only: %i[index show]

  root to: 'home#index'
end

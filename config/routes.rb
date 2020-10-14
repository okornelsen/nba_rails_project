Rails.application.routes.draw do
  resources :players, only: %i[index show]
  resources :teams, only: %i[index show]
  resources :about, only: %i[index]

  root to: "home#index"
end

Rails.application.routes.draw do

  resources :players, only: %i[index show]
  resources :teams, only: %i[index show]
  resources :about, only: %i[index]
  resources :countries, only: %i[index show]
  resources :arenas, only: %i[index show]

  root to: "home#index"
end

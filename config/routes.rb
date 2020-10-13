Rails.application.routes.draw do
  get 'teams/index'
  get 'teams/show'
  get 'players/index'
  get 'players/show'
  get 'about/index'
  get 'home/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

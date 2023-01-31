Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'pokemons#new'
  resources :pokemons
  namespace :admin do
    root to: 'dashboards#index'
  end
end

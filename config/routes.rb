Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'recipes#index'
  match 'recipes', :to => 'recipes#index', :via => :get

  get '/ingredients/:id', to: 'ingredients#show', as: 'show_ing'
  get '/ingredients/new/:id', to: 'ingredients#new', as: 'new_ing'



  resource :recipes, only: [:index,:new,:create]
  resource :ingredients, only: [:show,:new,:create]
end

Rails.application.routes.draw do
  get '/', to: 'recipes#index'
  get '/recipes', to: 'recipes#index'
  get '/recipes/new', to: 'recipes#new'
  get '/recipes/:id', to: 'recipes#show'
  post '/recipes', to: 'recipes#create'
  get '/recipes/:id/edit', to: 'recipes#edit'
  patch '/recipes/:id', to: 'recipes#update'

  get '/signup', to: 'users#new'
  post '/users', to: 'users#create'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'
  
end

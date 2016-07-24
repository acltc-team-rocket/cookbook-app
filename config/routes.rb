Rails.application.routes.draw do
  get '/recipes', to: 'recipes#index'
  get '/first_recipe', to: 'recipes#first_recipe'
end

Rails.application.routes.draw do
  get '/first_recipe', to: 'recipes#first_recipe'
  get '/last_recipe', to: 'recipes#last_recipe'
end

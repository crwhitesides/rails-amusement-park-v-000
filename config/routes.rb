Rails.application.routes.draw do

  root 'welcome#home'

  get '/signin' => 'sessions#new'
  post '/signin' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'
  post '/attractions/:id/goonride' => 'attractions#goonride'

  resources :users
  resources :attractions

end

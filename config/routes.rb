Rails.application.routes.draw do

resources :rooms
resources :users

resources :rooms do
  resources :messages
end


root 'rooms#index'

  get 'rooms/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get '/signin', to: 'sessions#new'
  post '/signin', to: 'sessions#create'
  delete '/signout', to: 'sessions#destroy'



end

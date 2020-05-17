Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'pages#home'
  resources :profiles
  get '/houses', to: 'houses#index'
  get '/houses/new', to: 'houses#new'
  get '/houses/:id', to: 'houses#show', as: :house
  post '/houses', to: 'houses#create'
  get '/houses/:id/edit', to: 'houses#edit', as: :edit
  patch '/houses/:id', to: 'houses#update'
  delete '/houses/:id', to: 'houses#destroy', as: :destroy
end

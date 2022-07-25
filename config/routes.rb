Rails.application.routes.draw do
  resources :users, only:[:create, :index, :show]
  resources :cats, only:[:create, :index, :show]
  resources :appointments, only:[:create, :index, :show]

  post "/signup", to: "users#create"
  get "/me", to: "users#show"

  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

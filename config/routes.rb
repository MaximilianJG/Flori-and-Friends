Rails.application.routes.draw do

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # Dogs Controller
  get "dog/:id", to: "dogs#show", as: "dog"

  get "dogs/nofaelle", to: "dogs#notfaelle", as: "notfaelle"
  get "dogs/rueden", to: "dogs#rueden", as: "rueden"


end

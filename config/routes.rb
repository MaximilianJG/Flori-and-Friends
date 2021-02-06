Rails.application.routes.draw do

  get 'lucky_dogs/index'
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # Dogs Controller
  get "dog/:id", to: "dogs#show", as: "dog"

  get "dogs/nofaelle", to: "dogs#notfaelle", as: "notfaelle"
  get "dogs/rueden", to: "dogs#rueden", as: "rueden"
  get "dogs/huendinnen", to: "dogs#huendinnen", as: "huendinnen"
  get "dogs/handicap_dogs", to: "dogs#handicap_dogs", as: "handicap_dogs"
  get "dogs/unsere_angsthaesschen", to: "dogs#unsere_angsthaesschen", as: "unsere_angsthaesschen"
  get "dogs/gluecksfellchen_zuhause", to: "dogs#gluecksfellchen_zuhause", as: "gluecksfellchen_zuhause"


  # Contacts Controller
  get "contact", to: "contacts#new", as: "new_contact"
  post "contacts", to: "contacts#create", as: "contacts"

  post "dogs/:dog_id/contacts", to: "contacts#create", as: "dog_contacts"

  # Pages Controller
  get "mitglied_werden", to: "pages#mitglied_werden", as: "mitglied_werden"
  get "wir_ueber_uns", to: "pages#wir_ueber_uns", as: "wir_ueber_uns"
  get "team", to: "pages#team", as: "team"
  get "impressum", to: "pages#impressum", as: "impressum"
  get "datenschutz", to: "pages#datenschutz", as: "datenschutz"

  get "spenden", to: "pages#spenden", as: "spenden"
  get "patenschaft", to: "pages#patenschaft", as: "patenschaft"
  get "foerdermitgliedschaft", to: "pages#foerdermitgliedschaft", as: "foerdermitgliedschaft"

  # News Posts
  get "news", to: "news_posts#index", as: "news_posts"

  resources :categories, only: [:show]

  get "gedenken", to: "dead_dogs#index", as: "dead_dogs"
  get "glücksfellchen", to: "lucky_dogs#index", as: "lucky_dogs"




end

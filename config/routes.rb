Rails.application.routes.draw do

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # Dogs Controller
  get "dog/:id", to: "dogs#show", as: "dog"

  get "dogs/nofaelle", to: "dogs#notfaelle", as: "notfaelle"
  get "dogs/rueden", to: "dogs#rueden", as: "rueden"

  # Contacts Controller
  get "contact", to: "contacts#new", as: "new_contact"
  post "contacts", to: "contacts#create", as: "contacts"

  post "dogs/:dog_id/contacts", to: "contacts#create", as: "dog_contacts"

  # Pages Controller
  get "mitglied_werden", to: "pages#mitglied_werden", as: "mitglied_werden"
  get "team", to: "pages#team", as: "team"
end

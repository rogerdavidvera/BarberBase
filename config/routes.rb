Rails.application.routes.draw do
  root to: 'sessions#new'
  get  '/help',    to: 'static_pages#help'
  get  '/about',   to: 'static_pages#about'
  get  '/team', to: 'static_pages#contact'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/clients/signup', to: 'clients#new', as: 'client_signup'

  get "login", to: "sessions#new", as: "login"

  post "sessions", to: "sessions#create", as: "sessions"

  delete "sessions", to: "sessions#destroy"

  resources :clients, only: [:create, :show, :edit, :update]

  resources :stylists

  delete "/appointments/:id", to: "appointments#destroy", as: "appointment_delete"

  resources :appointments, only: [:new, :create]


end

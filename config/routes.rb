Rails.application.routes.draw do
  root to: 'static_pages#main'
  get  '/help',    to: 'static_pages#help'
  get  '/about',   to: 'static_pages#about'
  get  '/contact', to: 'static_pages#contact'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'profile', to: 'clients#show'
  resources :stylists
end

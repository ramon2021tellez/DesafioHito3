Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :conditions
  resources :vets
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
   resources :home
  # Defines the root path route ("/")
  root "home#index"
end

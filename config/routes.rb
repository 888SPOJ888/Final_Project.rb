Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :courses
  resources :units
  resources :levels
  resources :companies
  get 'home/index'

  devise_for :users, controllers: { registrations: 'users/registrations' }


  devise_scope :user do
    authenticated :user do
      root 'home#index', as: :authenticated_root
    end

    unauthenticated :user do
      root 'devise/sessions#new', as: :unauthenticated_root
    end
  end

  
end

Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  namespace :admin do
    root 'dashboard#index'

    devise_scope :user do
      get '/login', to: 'sessions#new', as: :login
      post '/login', to: 'sessions#create'
    end

    resources :articles
  end
end

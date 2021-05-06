Rails.application.routes.draw do

  resources :events
  root to: 'events#index'
  devise_for :users, :controllers => { registrations: 'registrations' }

  resources :event_users

  resources :event_users do
    match '/join', to: 'event_user#join', via: :post, on: :collection
  end
  
  resources :users, only: [:index, :show, :update, :destroy]
end

Rails.application.routes.draw do

  resources :events
  root to: 'events#index'
  devise_for :users, :controllers => { registrations: 'registrations' }
  resources :users, only: [:show, :update, :destroy]

  resources :event_users

  resources :event_users do
    match '/join', to: 'event_users#join', via: :post, on: :collection
  end
  
end




Rails.application.routes.draw do

  resources :events
  root to: 'home#index'
  
  devise_for :users, :controllers => { registrations: 'registrations' }
  resources :users, only: [:show, :update, :destroy]
end




Rails.application.routes.draw do
  
 
  resources :genres
  resources :categories
  root 'store#index'
  resources :line_items
  resources :carts
  devise_for :users, path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register' }
   
  
  resources :movies 
  
  #root :to => 'site#index'
 
  end
  
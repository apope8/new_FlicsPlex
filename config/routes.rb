Rails.application.routes.draw do
  
 get '/about', to: 'pages#about' 
 get '/contact', to: 'pages#contact' 
 get '/help', to: 'pages#help' 
 get '/home', to: 'pages#home'
  
 
 #get 'orderitems/index'
 #get 'orderitems/show'
 #get 'orderitems/new'
 #get 'orderitems/edit'

 root 'store#index'
 
  
  resources :line_items
  resources :carts
  #devise_for :users, path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register' }
  resources :orders 
  
  resources :movies
  
    resources :orders do 
      resources:orderitems
    end
    
  resources :categories
  
  
    devise_for :users do 
      resources :orders
    end 
  
  get '/checkout', to: 'cart#createOrder'
  get 'cart/index'
  
  get '/login', to: 'user#login'
  get '/logout', to: 'user#logout'
  
  get '/cart', to: 'cart#index'
  get '/cart/:id', to: 'cart#add'
  get '/cart/remove/:id', to: 'cart#remove'
  
  get '/cart/clear', to: 'cart#clearCart'
  
end
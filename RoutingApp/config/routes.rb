Rails.application.routes.draw do
  
  namespace :admin do
    get 'dashboard/main'
    get 'dashboard/user'
    get 'dashboard/blog'
  end

  get 'about', to: 'pages#about'

  get 'leadgen/advertising/asdf/lead', to: 'pages#contact', as: 'lead' 
  
  Rails.application.config.root = "../RoutingApp"

  resources :blogs
  resources :posts
  get 'posts/*missing' , to: 'posts#missing'
  
  get 'query/:else/:another_one', to: 'pages#something'
  get 'query/:else', to: 'pages#something'
  
  root to: 'pages#home'
  
end

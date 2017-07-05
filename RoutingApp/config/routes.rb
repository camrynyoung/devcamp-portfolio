Rails.application.routes.draw do
  get 'about', to: 'pages#about'

  get 'leadgen/advertising/landingpage/lead', to: 'pages#contact'

  resources :blogs
end

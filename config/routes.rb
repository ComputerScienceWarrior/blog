Rails.application.routes.draw do
  resource :user, only: %i[show edit update]
  resources :blog_entries

  # sessions controller
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  
  #pages_controller
  get 'home', to: 'pages#home'
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'

  # root page
  root 'blog_entries#index'
end

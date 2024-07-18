Rails.application.routes.draw do
  resource :user, only: %i[show edit update]

  resources :blog_entries
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  get 'home', to: 'pages#home'
  root 'blog_entries#index'
end

Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#home'
  get 'about', to: 'pages#about'

  resources:articles

  get 'signup', to: 'users#new'
  resources :users, except: [:new]

  # route for log-in
  get 'login', to: 'sessions#new'
  # route for post to login
  post 'login', to: 'sessions#create'
  #route to log route - sessions controller, destroy action
  delete 'logout', to: 'sessions#destroy'
end

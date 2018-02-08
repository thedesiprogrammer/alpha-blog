Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#home'
  get 'about', to: 'pages#about'

  resources:articles

  get 'signup', to: "users#new"
  #post 'users', to: "users#create
  #Better way: All routes, except the new user route, which is already defined above
  resources :users, except: [:new]
end

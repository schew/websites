AlumServ::Application.routes.draw do
  root to: 'pages#home'

  match '/about', to: 'pages#about'
  match '/contact', to: 'pages#contact'
  match '/signup', to: 'users#new'

  resources :schools

  resources :users
  match '/signup', to: 'users#new'

  resources :sessions, only: [:new, :create, :destroy]
  match '/signin', to: 'sessions#new'
  match '/signout', to: 'sessions#destroy', via: :delete
end

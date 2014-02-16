Dps::Application.routes.draw do
  get "searches/new"
  get "searches/create"
  get "searches/show"
  get "searches/edit"
  get "searches/update"
  get "searches/destroy"
  get "searches/index"
  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  resources :teams, only: [:index, :show]
  resources :clients
  resources :searches

  root "pages#home"

  match '/help',    to: 'pages#help',    via: 'get'
  match '/about',   to: 'pages#about',   via: 'get'
  match '/contact', to: 'pages#contact', via: 'get'
  match '/locations',  to: 'pages#locations',  via: 'get'
  match '/signup',  to: 'users#new', 	 via: 'get'
  match '/signin',  to: 'sessions#new',  via: 'get'
  match '/signout', to: 'sessions#destroy', via: 'delete'

end

Dps::Application.routes.draw do

  get "users/new"
  root "pages#home"

  match '/help',    to: 'pages#help',    via: 'get'
  match '/about',   to: 'pages#about',   via: 'get'
  match '/contact', to: 'pages#contact', via: 'get'
  match '/signup',  to: 'users#new', 	 via: 'get'

end

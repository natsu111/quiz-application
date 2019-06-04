# Rails.application.routes.draw do

#   get 'static_pages/home'

#   get 'static_pages/help'

#   # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  Rails.application.routes.draw do

  root 'static_pages#home'
  get  '/help',    to: 'static_pages#help'
  get  '/signup',  to: 'users#new'
  post '/signup',  to: 'users#create'
  resources :users
end

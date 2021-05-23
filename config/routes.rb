Rails.application.routes.draw do
  root 'top#home'
  get 'top/about'

  get 'session/new'
  post 'login', to: 'session#login'
  delete 'logout', to: 'session#logout'


  resources :users
  resources :post

  get 'post/second/:id', to: 'post#second',as: 'post_second'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

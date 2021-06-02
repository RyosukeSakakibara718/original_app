Rails.application.routes.draw do
  get 'top/home'
  root 'top#home'
  get 'top/about'

  get 'session/new'
  post 'login', to: 'session#login'
  delete 'logout', to: 'session#logout'

  resources :users
  resources :post
  post 'post_detail/:id', to: 'post#create_detail', as: 'create_detail' 
  post 'post_confirm/:id', to: 'post#post_confirm', as: 'post_confirm'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

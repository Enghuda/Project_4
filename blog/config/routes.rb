Rails.application.routes.draw do
devise_for :users
resources :posts do
resources :comments
end
get 'posts/new' , to: 'posts#new'
 get 'posts/:id' , to: 'posts#show'
 post 'posts' , to: 'posts#create'
 get 'posts' , to: 'posts#index'
 get 'posts/:id/edit' , to: 'posts#edit' 
 delete 'posts/:id', to: 'posts#destroy' 
 patch  'posts/:id', to: 'posts#update'
 get 'pages/home'
 get 'pages/about'
 get 'about',to:'pages#about'
 root 'pages#home'
end

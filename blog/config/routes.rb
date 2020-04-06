Rails.application.routes.draw do
devise_for :users

get 'posts/new' , to: 'posts#new'
 get 'posts/:id' , to: 'posts#show' , as: 'post'
 post 'posts' , to: 'posts#create'
 get 'posts' , to: 'posts#index'
 get 'posts/:id/edit' , to: 'posts#edit', as:'edit_post' 
 delete 'posts/:id', to: 'posts#destroy' , as: 'posts_delete'
 patch  'posts/:id', to: 'posts#update'



 get 'pages/home'
 get 'pages/about'
 get 'about',to:'pages#about'
root 'pages#home'
    end

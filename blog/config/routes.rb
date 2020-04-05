Rails.application.routes.draw do
devise_for :users
 get 'postes/:id' , to: 'postes#show'
 get 'pages/home'
 get 'pages/about'
 get 'about',to:'pages#about'
  root 'pages#home'
    end

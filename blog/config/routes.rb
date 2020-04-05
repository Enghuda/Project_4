Rails.application.routes.draw do
devise_for :users
 get 'pages/home'
  get 'pages/about'
   get 'about',to:'pages#about'
  root 'pages#home'
    end
Rails.application.routes.draw do
devise_for :users
get 'postes/new' , to: 'postes#new'
 get 'postes/:id' , to: 'postes#show' , as: 'poste'
 post 'postes' , to: 'postes#create'
 get 'postes' , to: 'postes#index'
 get 'postes/:id/edit' , to: 'postes#edit', as:'poste_edit' 
 delete 'postes/:id', to: 'postes#destroy' , as: 'postes_delete'
 patch  'postes/:id', to: 'postes#update'


 get 'pages/home'
 get 'pages/about'
 get 'about',to:'pages#about'
  root 'pages#home'
    end

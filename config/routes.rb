Rails.application.routes.draw do
  
  #get 'comments/create'
  #get 'comments/destroy'
  #get 'comments/index'
  #get 'comments/show'
  #get 'favorites/create'
  #get 'favorites/destroy'
  root 'tweets#index'
  devise_for :users
  
  #get 'tweets/new'
  #get 'tweets/index'
  #get 'tweets/show'
  #get 'tweets/create'
  #get 'users/index'
  #get 'users/show'
  
  resources :tweets do
    resource :favorites, only: [:create, :destroy]
    resource :comments, only: [:create, :destroy]
  end
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

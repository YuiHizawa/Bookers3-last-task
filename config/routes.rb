Rails.application.routes.draw do

  get 'homes/about'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'homes#top'

  resources :users, only: [:index, :show, :edit, :update] 

  resources :books, only: [:new, :create, :index, :show, :edit, :update, :destroy]

  resources :homes, only: [:top, :about]
end

Rails.application.routes.draw do
  get 'homes/top'
  get 'homes/about'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'homes#top'

  resources :users, only: [:index, :show]

  resources :books, only: [:new, :create, :index, :show]
end

Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'posts#index'
  get 'posts/new' => 'posts#new'
  post 'posts' => 'posts#create'
  resources :users, only: [:show]
end

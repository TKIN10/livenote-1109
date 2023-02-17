Rails.application.routes.draw do
  devise_for :users
  get 'venues/index'
  root to: "venues#index"
  resources :venues, only: [:index, :new, :create, :show, :edit, :update, :destroy]
  resources :venues do
    resources :comments, only: :create
  end
  resources :users, only: :show
end

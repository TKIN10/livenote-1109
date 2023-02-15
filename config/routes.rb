Rails.application.routes.draw do
  devise_for :users
  get 'venues/index'
  root to: "venues#index"
end

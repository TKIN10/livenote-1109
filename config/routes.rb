Rails.application.routes.draw do
  get 'venues/index'
  root to: "venues#index"
end

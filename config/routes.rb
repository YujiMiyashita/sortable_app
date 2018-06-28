Rails.application.routes.draw do
  resources :fruits
  root to: 'visitors#index'
end

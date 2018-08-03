Rails.application.routes.draw do
  root to: 'home#index'
  resources :words, only: [:index, :show]
  resources :kanjis, only: [:index, :show]
end

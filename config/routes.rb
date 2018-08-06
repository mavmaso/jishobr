Rails.application.routes.draw do
  devise_for :users
  root to: 'home#index'
  resources :words, only: [:index, :show, :new]
  resources :kanjis, only: [:index, :show]
end

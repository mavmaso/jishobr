Rails.application.routes.draw do
  devise_for :users
  root to: 'home#index'
  get '/search', to: 'words#search', as: 'search'
  resources :words, only: [:index, :show, :new, :create, :edit, :update]
  resources :kanjis, only: [:index, :show, :new, :create, :edit, :update]
end

Rails.application.routes.draw do
  root 'home#index'
  get 'search' => 'home#search'
  resources :articles, only: [:new, :create]
end

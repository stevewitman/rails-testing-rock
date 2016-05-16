Rails.application.routes.draw do
  devise_for :users
  root 'welcome#index'
  resources :achievements
  resources :events, only: [:new, :create]
  resources :courses, only: [:new, :create]
end

Rails.application.routes.draw do
  root 'welcome#index'
  resources :achievements, only: [:new, :create]
  resources :events, only: [:new, :create]
  resources :courses, only: [:new, :create]
end

Rails.application.routes.draw do
  root 'welcome#index'
  resources :achievements, only: [:new, :create, :show]
  resources :events, only: [:new, :create]
  resources :courses, only: [:new, :create]
end

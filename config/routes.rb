Rails.application.routes.draw do
  root 'welcome#index'
  resources :achievements
  resources :events, only: [:new, :create]
  resources :courses, only: [:new, :create]
end

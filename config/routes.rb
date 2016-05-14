Rails.application.routes.draw do
  root 'welcome#index'
  resources :achievements, only: [:new, :create]
  resources :events, only: [:new, :create]
end

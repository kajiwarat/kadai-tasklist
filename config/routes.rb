Rails.application.routes.draw do
  root to: 'toppages#index'  

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  get 'signup', to: 'users#new'
  # new: 新規作成用のフォームページ
  resources :users, only: [:index, :show, :new, :create]

  resources :tasks
end

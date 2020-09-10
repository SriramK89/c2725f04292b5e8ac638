Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :favorites, only: [:create, :index, :destroy]
  resources :user_sessions, only: [:create, :destroy]
  root to: 'shows#index'
end

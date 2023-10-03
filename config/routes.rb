Rails.application.routes.draw do
  devise_for :users
  root 'posts#index'

  resources :posts, only: [:new, :create, :show, :index] # 追加
end
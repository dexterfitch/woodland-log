Rails.application.routes.draw do
  root :to => 'users#index'
  resources :users do
    resources :posts, except: [:index]
  end
  resources :sessions, only: [:new, :create, :destroy]
end

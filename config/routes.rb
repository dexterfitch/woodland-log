Rails.application.routes.draw do
  root :to => 'users#index'
  
  resources :users

  resources :posts, except: [:index] do
    resources :comments, except: [:index]
  end

  resources :sessions, only: [:new, :create, :destroy]
end

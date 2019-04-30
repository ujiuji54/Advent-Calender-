Rails.application.routes.draw do
  devise_for :users
  root to: 'blogs#index'
  resources :blogs

  namespace :api do
    resources :blogs
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

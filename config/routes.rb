Rails.application.routes.draw do
  devise_for :users
  resources :groups do
    member  do
      post  :join
      post  :quit
    end

    resources :posts
  end

  namespace :account  do
    resources :groups
  end
  
  root 'groups#index'
  # root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

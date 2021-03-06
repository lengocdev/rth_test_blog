Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'about', to: 'pages#about'
  get 'signup', to: 'users#new'
  resources :posts
  resources :users, except: [:new]

  root 'pages#index'
end

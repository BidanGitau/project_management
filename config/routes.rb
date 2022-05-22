Rails.application.routes.draw do
  resources :students,except: [:new]
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  root 'pages#home'
  resources :projects
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

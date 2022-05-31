Rails.application.routes.draw do
  get 'signup', to: 'students#new'
  resources :students, expect: [:new]
  root 'pages#home'
   get 'projects', to: 'pages#project_idea'
  # resources :projects
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  
end
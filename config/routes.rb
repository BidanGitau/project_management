Rails.application.routes.draw do
  resources :students
  get 'signup', to: 'students#new'
  post 'login', to: 'students#create'
  root 'pages#home'
  resources :projects
  
end

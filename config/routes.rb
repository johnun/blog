Rails.application.routes.draw do
  devise_for :users
  resources :posts
  resources :projects
  resources :contacts, only: [:new, :create]
  get 'welcome/index'
  get 'splash/home'
  root 'splash#home'

  get '*path' => redirect('/')
end

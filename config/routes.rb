Rails.application.routes.draw do
  
  root to: 'home#index'
  get 'home/contact'
  
  devise_for :users, controllers: {
    confirmations: 'users/confirmations',
    passwords: 'users/passwords',
    registrations: 'users/registrations',
    sessions: 'users/sessions'
  }
  resources :users
  resources :saving_items
  resources :categories
  # get 'home/index' いらない？
  # devise_for :users
  resources :notes

  # get 'about/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
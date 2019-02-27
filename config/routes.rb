Rails.application.routes.draw do
  
  root to: 'home#index'
  get 'home/contact'
  
  devise_for :users, controllers: {
    confirmations: 'users/confirmations',
    passwords: 'users/passwords',
    registrations: 'users/registrations',
    sessions: 'users/sessions'
  }
  resources :users, :only => [:index, :show]
  # resources :users do
  #   member do
  #     get :following, :followers
  #   end
  # end

  devise_scope :user do
    get 'show/:id/' => 'users/registrations#show', as: 'profile'
    get 'show/:id/following', to: 'users/registrations#following', as: 'following'
    get 'show/:id/followers', to: 'users/registrations#followers', as: 'followers'
  end

  resources :relationships, only: [:create, :destroy]
  resources :saving_items
  resources :categories

  # get 'about/index'
end
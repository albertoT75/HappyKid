Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :kids
  resources :games, only: [:index, :show]
  # resources :games, only: [:index, :show] do
  #   resources :rewards only: [:new, :create]
  # end

  get 'dashboard', to: 'pages#dashboard', as: :dashboard
end

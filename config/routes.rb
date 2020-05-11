Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :kids
  resources :rewards
  resources :games, only: [:index, :show] do
    resources :reservations, only: [:new, :create] do
      patch :greenstarscounter
      put :greenstarscounter
    end

  end
  resources :reservations, only: [:update] do
    resources :comments, only: :create
  end
  get 'dashboard', to: 'pages#dashboard', as: :dashboard

end

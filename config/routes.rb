Rails.application.routes.draw do
  root 'recipes#index'

  resources :recipes do
    resources :reports, shallow: true
  end

  resources :users, only: [:create, :show, :edit, :update, :destroy]
  get 'signup', to: 'users#new', as: :signup

  resource :sessions, only: [:create]
  get 'signin', to: 'sessions#new', as: :signin
  get 'signout', to: 'sessions#destroy', as: :signout

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  root 'recipes#index'

  resources :recipes do
    resources :reports, shallow: true
  end

  get 'search', to: 'recipes#search'

  resources :users, only: [:create, :show, :edit, :update, :destroy]
  get 'signup', to: 'users#new'

  get 'signin', to: 'sessions#new'
  post 'signin', to: 'sessions#create'
  get 'signout', to: 'sessions#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

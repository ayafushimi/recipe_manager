Rails.application.routes.draw do
  root 'recipes#index'
  resources :recipes do
    resources :reports, shallow: true
  end
  resource :users, only: [:create, :show, :edit, :update, :destroy]
  get 'signup', to: 'users#new', as: :signup
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

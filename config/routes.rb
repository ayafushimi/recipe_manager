Rails.application.routes.draw do
  get 'sessions/new'

  get 'users/new'

  get 'users/show'

  get 'users/edit'

  get 'reports/index'

  get 'reports/new'

  get 'reports/show'

  get 'reports/edit'

  get 'recipes/index'

  get 'recipes/new'

  get 'recipes/show'

  get 'recipes/edit'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

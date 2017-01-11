Rails.application.routes.draw do
  get 'report/index'

  get 'report/new'

  get 'report/show'

  get 'report/edit'

  get 'recipe/index'

  get 'recipe/new'

  get 'recipe/show'

  get 'recipe/edit'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

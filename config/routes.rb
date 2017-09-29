Rails.application.routes.draw do
  get 'search/index'
  post 'search/show'
  get 'search/show'
  root 'search#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # get 'search/index'
  # root 'search#index'
end

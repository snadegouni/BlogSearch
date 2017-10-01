Rails.application.routes.draw do
  

  get 'search/index'
  post 'search/show'
  get 'search/show'
 
  post 'admin/create'
  root 'search#index'

  resources :admin
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # get 'search/index'
  # root 'search#index'
end

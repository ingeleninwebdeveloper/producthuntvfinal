Rails.application.routes.draw do



  
#get '/products', to: 'products#index'
#get '/products/new', to: 'products#new', as:'new_product'
#post 'products', to: 'products#create'
#get '/products/:id', to: 'products#show', as: 'product'
#get '/products/:id/edit', to: 'products#edit', as: 'edit_product'
#patch '/products/:id', to: 'products#update'
#delete '/products/:id', to: 'products#destroy'
root 'products#index'

get 'login', to: 'sessions#new'
post 'login', to: 'sessions#create'
delete  'logout', to: 'sessions#destroy'
resources :products do
	resource :vote, only: [:create, :destroy]
  resources :comments, only: [:create]
end

resources :users, only: [:new, :create]
resources :products


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

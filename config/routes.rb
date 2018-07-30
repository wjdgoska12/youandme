Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'
  resources :home
  post 'home/create' => "home#create"
  post 'home/update/:id' => "home#update"
#   get 'home/index' =>"home#index"
#   get 'home/new' =>"home#new"
#   get 'home/edit' => "home#edit"
#   get 'home/show/:id' => "home#show"
 end

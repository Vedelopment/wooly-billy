Rails.application.routes.draw do
  root 'wooly_billy#index'
  get 'wooly_billy/index'

  resources :areas do
    resources :hairs
  end

  # hairs
  # get '/hairs/:id' => 'hairs#show', as: 'hair'
  # get '/areas/:id/hairs/new' => 'hairs#new', as: 'new_hair'
  # post '/areas/:id/hairs/new' => 'hairs#create', as: 'create_hair'
  # get '/hairs/:id/edit' => 'hairs#edit', as: 'edit_hair'
  # patch '/hairs/:id' => 'hairs#update'
  # delete '/hairs/:id' => 'hairs#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

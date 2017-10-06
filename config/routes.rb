Rails.application.routes.draw do
  root 'wooly_billy#index'
  get 'wooly_billy/index'

  resources :areas do
    resources :hairs, only: [:index, :new, :create]
  end
  resources :hairs, only: [:destroy]
  delete '/areas/1/hairs/new' => 'hairs#hair_destroyer', as: 'hair_destroyer'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

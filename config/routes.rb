Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
   namespace :v1, defaults: { format: 'json' } do
    resources :users, only: [:create ]
    resources :laborers, only: [:index, :show, :create, :destroy]
    resources :reservations, only: [:index, :show, :create, :destroy]
  end
end

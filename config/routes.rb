Rails.application.routes.draw do
  resources :habitat_descriptions
  resources :habitats
  resources :animals
  resources :articles
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

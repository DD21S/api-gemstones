Rails.application.routes.draw do
  get 'gemstones/index'
  get 'gemstones/show'
  get 'gemstones/create'
  get 'gemstones/update'
  get 'gemstones/destroy'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

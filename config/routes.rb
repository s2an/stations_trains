Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "/", to: "welcome#index"
  get "/stations", to: "stations#index"
  get "/stations/:id", to: "stations#show"
end

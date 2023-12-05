Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "/", to: "welcome#index"
  get "/stations", to: "stations#index"
  get "/stations/:id", to: "stations#show"
  get "/trains", to: "trains#index"
  get "/trains/:id", to: "trains#show"
  get "/stations/:station_id/trains", to: "station_trains#index"
end

Rails.application.routes.draw do
  namespace :api do
    get "products/fetch_api", to: "products#fetch_from_api"
    get "products/scrape", to: "products#scrape_data"
    get "products", to: "products#index"
  end
end

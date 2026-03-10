class Api::ProductsController < ApplicationController
  def fetch_from_api
    ApiFetchService.call
    render json: { message: "API data fetched successfully" }
  end

  def scrape_data
    ScraperService.call
    render json: { message: "Scraping completed successfully" }
  end

  def index
    products = Product.all
    render json: products
  end
end

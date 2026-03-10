require "net/http"
require "json"
require "uri"

class ApiFetchService
  URL = "https://fakestoreapi.com/products"

  def self.call
    uri = URI(URL)

    response = Net::HTTP.get(uri)

    data = JSON.parse(response)

    data.each do |item|
      Product.find_or_create_by(title: item["title"]) do |product|
        product.price = item["price"]
      end
    end
  end
end

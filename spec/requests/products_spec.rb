require 'rails_helper'

RSpec.describe "Products API", type: :request do

  describe "GET /api/products" do

    it "returns list of products" do

      Product.create(title: "Book 1", price: "10")

      get "/api/products"

      expect(response).to have_http_status(:success)
      expect(JSON.parse(response.body).length).to eq(1)

    end

  end

end

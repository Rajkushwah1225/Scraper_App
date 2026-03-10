require 'rails_helper'

RSpec.describe Product, type: :model do

  it "is valid with title and price" do
    product = Product.new(title: "Book 1", price: "10")
    expect(product).to be_valid
  end

  it "is invalid without title" do
    product = Product.new(price: "10")
    expect(product).not_to be_valid
  end

  it "is invalid without price" do
    product = Product.new(title: "Book 1")
    expect(product).not_to be_valid
  end

end

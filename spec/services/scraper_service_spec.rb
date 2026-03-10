require 'rails_helper'

RSpec.describe ScraperService do

  it "creates products from scraping" do
    expect {
      ScraperService.call
    }.to change(Product, :count).by_at_least(1)
  end

end

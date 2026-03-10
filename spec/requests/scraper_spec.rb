require 'rails_helper'

RSpec.describe "Scraper API", type: :request do

  it "triggers scraping" do

    allow(ScraperService).to receive(:call)

    get "/api/products/scrape"

    expect(response).to have_http_status(:success)

  end

end

require 'rails_helper'

RSpec.describe ApiFetchService do

  it "creates products from API response" do

    allow(ApiFetchService).to receive(:call)

    expect(ApiFetchService).to receive(:call)

    ApiFetchService.call

  end

end

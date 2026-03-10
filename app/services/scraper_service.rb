require "net/http"
require "nokogiri"
require "uri"

class ScraperService
  URL = "https://books.toscrape.com/"

  def self.call
    uri = URI(URL)

    html = Net::HTTP.get(uri)

    doc = Nokogiri::HTML(html)

    doc.css(".product_pod").each do |product|
      title = product.css("h3 a").attr("title").value
      price = product.css(".price_color").text

      Product.create(
        title: title,
        price: price
      )
    end
  end
end

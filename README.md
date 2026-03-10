# Rails Scraper API

A simple Ruby on Rails API project that demonstrates two ways of collecting external data:

1. Fetching data from a public API
2. Scraping data from a website

The project stores the collected data in a database and exposes it through API endpoints.

---

## Tech Stack

* Ruby on Rails (API Mode)
* PostgreSQL / SQLite
* Nokogiri
* Net::HTTP / HTTParty
* Open URI

---

## Project Features

* Fetch product data from an external API
* Scrape product data from a website
* Store data in the database
* Expose data through REST API endpoints
* Service-based architecture for clean code

---

## Project Structure

```
app
 ├── controllers
 │     api/products_controller.rb
 │
 ├── models
 │     product.rb
 │
 ├── services
 │     api_fetch_service.rb
 │     scraper_service.rb
```

---

## API Endpoints

### 1. Fetch Data From API

Fetch products from an external API and store them in the database.

```
GET /api/products/fetch_api
```

---

### 2. Scrape Data From Website

Scrape product data from a website and store it in the database.

```
GET /api/products/scrape
```

---

### 3. Get Stored Products

Returns all stored products.

```
GET /api/products
```

---

## Example Response

```
[
 {
   "id": 1,
   "title": "A Light in the Attic",
   "price": "£51.77"
 }
]
```

---

## Scraping Flow

1. Send request to the website
2. Fetch HTML content
3. Parse HTML using Nokogiri
4. Extract required data using CSS selectors
5. Store data in the database

---

## API Fetch Flow

1. Send HTTP request to external API
2. Receive JSON response
3. Parse JSON data
4. Store data in database

---

## Setup Instructions

Clone the repository:

```
git clone https://github.com/YOUR_USERNAME/Scraper_App.git
```

Install dependencies:

```
bundle install
```

Run migrations:

```
rails db:migrate
```

Start the server:

```
rails s
```

---

## Author

Raj Kushwah
Ruby on Rails Developer

ShopifyApp.configure do |config|
  config.api_key = "e991806483601ea2f144ffa7bc871883"
  config.secret = "8aba540ab3f268eb76e08efc6071fd27"
  config.scope = "read_orders, read_products, read_customers, read_analytics"
  config.embedded_app = true


   config.webhooks = [
    {topic: 'fulfillments/create', address: 'https://unai.unai.ultrahooks.com'}
  ]
end

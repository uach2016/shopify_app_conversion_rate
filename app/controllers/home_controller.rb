class HomeController < ShopifyApp::AuthenticatedController

  def index
    @products = ShopifyAPI::Product.find(:all, params: { limit: 10 })
    @customers = ShopifyAPI::Customer.find(:all)

    all_orders

   end

   def all_orders	
   		@orders = [1]
   		@customers.each do |customer| 
     	@orders.push(customer.orders_count)
     	sum_orders
  		end
   end

   def sum_orders
   	@sum_orders = @orders.reduce(:+)
   end
end

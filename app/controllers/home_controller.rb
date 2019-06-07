class HomeController < ApplicationController
  def index

#use instance varianles inside ruby
#params include form filed names passed []
#when a page is called the controller is always called first

#need to add some error handling
#first check if param is equal to nothing
#if ticker value exists then run it or ignore it
if params[:ticker] == ""
   @nothing = "Hey! you did not enter a symbol"
elsif params[:ticker]
   @stock = StockQuote::Stock.quote(params[:ticker])
   if !@stock
   	 @error = "Stock symbol error"
   end
end 
#returns a ruby object

#shows info retrieving
#<%= stock.inspect %>

#get specifc value

#<%= stock.company_name %>
#<%= stock.latest_price %>

  end

  def about
  end

  
end

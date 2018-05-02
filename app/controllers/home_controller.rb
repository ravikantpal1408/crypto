class HomeController < ApplicationController
  
  def home
     
   render :layout => false
    
  end
  
  def aboutme
      
      @title="My Info"
      
      
  end
    
  def index
     @title="Index"
     require 'net/http'
     require 'json'
     
     @url = 'https://api.coinmarketcap.com/v1/ticker/'
     @uri = URI(@url)
     @response = Net::HTTP.get(@uri)
     @coins = JSON.parse(@response)
     
     @my_coins = ["BTC","XRP","ADA","XLM","STEEM", ]
     
     
  end
  def about
    @title="About"
  end
  
  
  def lookup
       @title="Search"
       require 'net/http'
       require 'json'
       
       @url = 'https://api.coinmarketcap.com/v1/ticker/'
       @uri = URI(@url)
       @response = Net::HTTP.get(@uri)
       @lookup_coin = JSON.parse(@response)
       
       #@my_coins = ["BTC","XRP","ADA","XLM","STEEM", ]
       @symbol=params[:sym]
       
       if @symbol 
         @symbol = @symbol.upcase
       end
       
       if @symbol == ""
         
         @symbol = "Please Enter Crypto Symbol"
         
       end
       
        
  end
  
  
end

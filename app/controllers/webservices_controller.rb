class WebservicesController < ApplicationController
    
    
   def getCity
      @city = City.all
      render json: @city
   end
   
       
       
end

class WebservicesController < ApplicationController
   protect_from_forgery with: :exception
   layout false
   def getCity
      #@city = City.find(:select => "id,cityname")
      @city = City.select('id,cityname')
      render json: @city
   end
       
end

class WebservicesController < ApplicationController
   
   protect_from_forgery with: :null_session
   layout false
   def getCity
      #@city = City.find(:select => "id,cityname")
      @city = City.select('id,cityname')
      render json: @city
   end
   
   def getPlaces
      placeid = params[:cityid]
      @loc = Place.select('id,placename').where(cityid: placeid ).all
      render json: @loc
   end
   
   def getMyLoc
      #byebug
      cityid = params[:cityid]
      placeid = params[:pID]
      @cordinated = Place.select("id,cityid,lat,lon").where(id: placeid ).where(cityid: cityid)
      render json: @cordinated
   end
   
   def getmyblog
      
      
      @myblogs = Blog.find(params[:bid])
      
      
      render json: @myblogs
      
   end
   
       
end

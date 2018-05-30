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
   
   
   def getselectedblog
      if params[:blogid] 
         bid = params[:blogid]
         @b = Blog.find(bid)
         render json: @b
      end
   end
   
   def iamravi
      @ = Blog.find(params[:blogid])
      render json: @b
   end
   
   
   
   def checkRegisteredVehicle
      uid = params[:uid]
      @message = 'not found' 
      @getVeh = Profile.find_by_uid(uid)
      if @getVeh
         render json: @getVeh
      else
         render json: @message
      end
   end
   
   
   
       
end

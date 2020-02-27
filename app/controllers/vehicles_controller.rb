class VehiclesController < ApplicationController
  
   def new
      @vehicle = Vehicle.new
   end

  
   def create_vehicles
      if logged_in?
         #Vehicle.find_by(vehicle_type: params[:vehicle_type])
         @vehicle = Vehicle.create(vehicle_params)
         
         redirect_to '/vehicles/selections'
      else
         redirect_to '/logout'
      end
   end


   def show 
      @vehicles = current_user.vehicles
   end

   def index
      render '/vehicles/index'
   end


    private

   def vehicle_params
    params.require(:vehicle).permit(:vehicle_type, :style, :model, :make, :year, :user_id)
   end
end

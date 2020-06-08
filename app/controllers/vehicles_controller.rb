class VehiclesController < ApplicationController
  
   def new
      @vehicle = Vehicle.new
      
   end

  
   def create
      if logged_in?
         #Vehicle.find_by(vehicle_type: params[:vehicle_type])
         @vehicle = Vehicle.create(vehicle_params)

         redirect_to '/ratings/new'
      else
         redirect_to '/logout'
      end
   end

   def show
      @vehicles = current_user.vehicles
   end

   def edit

   end

   def destroy

   end

   
    private

   def vehicle_params
    params.require(:vehicle).permit(:vehicle_type, :style, :model, :make, :year, :user_id)
   end
end

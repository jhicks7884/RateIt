class UsersController < ApplicationController
    protect_from_forgery
  

    def user   #homepage
      render "/home"

    end

    def new_sign_up  # creating users
      @user = User.new(user_params)
        if @user.save
          session[:user_id] = @user.id
          redirect_to '/show'
        else
          redirect_to '/login'
        end
    end

    def show
      @users = current_user.vehicles#.select {|type| type.vehicle_type == params[:vehicle_type]}
    end

    def login # route to logging user in
       #redirect_to '/login'
    end

    def logout  #signing a user out
      session.delete :user_id

      redirect_to "/home"
    end


    private

    def user_params
        params.require(:user).permit(:username, :email, :password)
    end
end
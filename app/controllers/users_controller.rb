class UsersController < ApplicationController
    protect_from_forgery
   # before_action :authenticate

    def user   #homepage
      render "/home"

    end

    def user_sign_up  #sign_up page
      @user = User.new
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
      @user = User.find_by(id: params[:id])
    end

    def login # route to logging user in

       #redirect_to '/login'
    end


    def logged_in #Logged user in redirected to user page

      @user = User.find_by(username: params[:user][:username])

      if @user.try(:authenticate, params[:user][:password])


       session[:user_id] = @user.id

       redirect_to '/show'

      else
        redirect_to '/login'
      end
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
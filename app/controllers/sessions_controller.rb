class SessionsController < ApplicationController
    protect_from_forgery



  def logged_in #Logged user in redirected to user page
    @user = User.find_by(username: params[:user][:username])
    if @user.try(:authenticate, params[:user][:password])
         session[:user_id] = @user.id
       redirect_to '/users/:id'

    else
        redirect_to '/login'
    end
  end
end





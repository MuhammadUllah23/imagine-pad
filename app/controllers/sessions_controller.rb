class SessionsController < ApplicationController 

    def welcome
    end
    
    def new
    end

    def create
        @user = User.find_by(email: params[:user][:email]) || User.find_by(username: params[:user][:username])
        if @user && @user.authenticate(params[:user][:password])
            session[:id] = @user.id
            redirect_to user_path(@user)
        else
            redirect_to login_path
        end
    end


end
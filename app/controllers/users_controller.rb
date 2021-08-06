class UsersController < ApplicationController
    def new
        @user = User.new
    end

    def create 
        @user.create(user_params)
        if @user.save
            session[:id] = @user.id
            redirect_to user_path(@user)
        else 
            render :new
        end
    end

end

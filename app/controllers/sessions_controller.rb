class SessionsController < ApplicationController 

    def welcome
        #byebug
        if session[:user_id]
            @user = User.find_by_id(session[:user_id])
        end
    end

    def new
    end

    def create
        @user = User.find_by(email: params[:user][:email]) 
        if @user && @user.authenticate(params[:user][:password])
            session[:user_id] = @user.id
            render :welcome
        else
            render :new
        end
    end

    def destroy
        session.delete(:user_id)
        redirect_to root_path
    end

    def omniauth
        user = User.find_or_create_by(uid: auth['uid']) do |u|
            u.username = auth['info']['name']
            u.email = auth['info']['email']
            u.password = SecureRandom.hex(15) 
          end
         
      
          session[:user_id] = user.id
      #byebug
      render :welcome
    end

    private

    def auth
      request.env['omniauth.auth']
    end
end
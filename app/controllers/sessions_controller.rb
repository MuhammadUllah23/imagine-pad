class SessionsController < ApplicationController 

    def welcome
    end

    def new
    end

    def create
        @user = User.find_by(email: params[:user][:email]) || User.find_by(username: params[:user][:username])
        if @user && @user.authenticate(params[:user][:password])
            session[:id] = @user.id
            render :welcome
        else
            redirect_to login_path
        end
    end

    def destroy
        session.delete(:id)
        redirect_to root_path
    end

    def omniauth
        user = User.find_or_create_by(uid: auth['uid']) do |u|
            u.username = auth['info']['name']
            u.email = auth['info']['email']
            u.password = SecureRandom.hex(15) 
          end
          user.save
      
          session[:id] = user.id
      #byebug
          redirect_to user_path(user)
    end

    private

    def auth
      request.env['omniauth.auth']
    end
end
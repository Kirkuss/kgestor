class SessionsController < ApplicationController
    def create
        @user = User.find_by(name: params[:name])
        if !!@user && @user.authenticate(params[:password])
            session[:user_id] = @user.id
            redirect_to '/user'
        else
            message = "Algo salio mal"
            redirect_to login_path, notice: message
        end
    end

    def destroy
        session.destroy
        message = "Saliste"
        redirect_to login_path, notice: message
    end
end
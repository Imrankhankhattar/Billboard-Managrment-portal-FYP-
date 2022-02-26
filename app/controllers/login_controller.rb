class LoginController < ApplicationController
    def new
    end    
    def create
        user=Owner.find_by(email: params[:email])
        if user.present? && user.authenticate(params[:password])
            session[:user_id] = user.id
            redirect_to owner_path, notice: "Login Successfull"
        else
            flash[:alert] = "Email or password is invalid. Please try again"
             
        end     
    end    
    def destroy
        session[:user_id] = nil
        redirect_to login_path,notice: "Logged out"
    end  
end
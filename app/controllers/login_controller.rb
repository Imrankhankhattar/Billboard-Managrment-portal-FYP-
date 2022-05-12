class LoginController < ApplicationController

    def create
        
        owner = Owner.find_by(email: params[:email])
        client = Client.find_by(email: params[:email])
        if owner.present? && owner.authenticate(params[:password])
            session[:user_id] = owner.id
            redirect_to owner_path
        elsif client.present? && client.authenticate(params[:password])
            # flash[:alert] = "Email or password is invalid."
            session[:user_id] = client.id
            redirect_to client_path
        else
             
             
        end     
    end    
    def destroy
        session[:user_id] = nil
        redirect_to login_path
    end  
end
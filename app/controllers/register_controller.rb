class RegisterController < ApplicationController

    def signup
        @owner = Owner.new(owner_params)
    end
    def create
    # render plain: "Thanks for registering!"
    # render plain: params[:user]
        @owner=Owner.new(owner_params)
        if @owner.save
            session[:owner_id] = @owner.id
            redirect_to login_path
        else
            flash[:error] ="User Not Registered"
            render :signup
            
        end        
    end    
 
    private  
    def owner_params()
        params.permit(:email, :company_name, :address, :contact_no, :password, :password_confirmation)
    end    
end
  
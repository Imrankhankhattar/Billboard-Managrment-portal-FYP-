class AddbillboardController < ApplicationController
      
    def add
        if session[:user_id]
            @user = Owner.find_by(id: session[:user_id])
        end
    end
    def addboard
            @board=Board.new(board_params)
            if @board.save
                redirect_to owner_path
            else
                flash[:error] ="User Not Registered"
            end        
    end   
    private  
    def board_params()
        params.permit(:name, :company_name, :screen_size,:location, :price, :status, :viewership_count, :tpye, :image)
    end 
end
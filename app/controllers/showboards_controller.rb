class ShowboardsController < ApplicationController
    def showboards
        @board=Board.all
    end  
end    

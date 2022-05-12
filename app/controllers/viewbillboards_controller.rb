class ViewbillboardsController < ApplicationController
    def viewboards
        @board= Board.all
    end
end
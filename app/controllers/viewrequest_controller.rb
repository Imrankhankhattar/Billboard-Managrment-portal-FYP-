class ViewrequestController < ApplicationController
    def viewrequests
        @board_details=Owner.find_by(id: session[:user_id]).boards
        @booking_details=ClientBoard.where(board_id: @board_details.ids)
    end

    def openrequest
        @request_detail=ClientBoard.find_by(id: params[:id])
    end

    def approvecontent
        @request_detail=ClientBoard.find_by(id: params[:id])
        if @request_detail.update(content_approved: 2)
            render 'bookedbillboards'
        end
    end
end
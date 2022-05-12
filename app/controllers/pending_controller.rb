class PendingController < ApplicationController
    def requested
       
        @board_details = Board.joins(:client_boards).select("boards.id,boards.name,boards.company_name,client_boards.content_approved,client_boards.payment_approved").where(client_boards: {client_id: session[:user_id]})

    end     
end
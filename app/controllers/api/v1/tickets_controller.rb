class Api::V1::TicketsController < Api::V1::ApplicationController
  def index
    tickets = Ticket.all
    render json: tickets
  end
end

class Api::V1::TicketsController < Api::V1::ApplicationController
  def index
    params_form = Ticket::ParamsForm.new(params)
    tickets = Ticket.ransack(params_form.search_params).result.page(params_form.page).per(params_form.per_page)
    render json: tickets
  end

  def create
    form = Ticket::CreateForm.new(params)
    ticket = Ticket.new(form.params)

    if ticket.save
      render_ok_and_data(ticket)
    else
      render_unprocessable_entity(ticket.errors)
    end
  end
end

class Ticket::CreateForm
  def initialize(params)
    @params = params
  end

  def params
    {
      ticket_no: permitted_params[:ticket_no],
      book_ref: permitted_params[:book_ref],
      passenger_id: permitted_params[:passenger_id],
      passenger_name: [permitted_params[:first_name], permitted_params[:last_name]].join(' '),
      contact_data: {
        email: permitted_params[:email],
        phone: permitted_params[:phone]
      }
    }
  end

  private

  def permitted_params
    @params.permit(:book_ref, :ticket_no, :passenger_id, :first_name, :last_name, :email, :phone)
  end
end

# ticket_no character(13) NOT NULL,
# book_ref character(6) NOT NULL,
# passenger_id character varying(20) NOT NULL,
# passenger_name text NOT NULL,
# contact_data jsonb

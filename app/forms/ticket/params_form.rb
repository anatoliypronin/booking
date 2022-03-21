class Ticket::ParamsForm
  include Pagination
  include Search

  def initialize(params)
    @params = params
  end

  def search_params
    permitted_params[search_key] || ActionController::Parameters.new
  end

  private

  def permitted_params
    @params.permit(search_key => %i[ticket_no_eq])
  end
end

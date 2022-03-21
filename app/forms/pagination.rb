module Pagination
  def page
    permit_pagination[:page]
  end

  def per_page
    permit_pagination[:per_page]
  end

  private

  def permit_pagination
    @params.permit(:page, :per_page)
  end
end

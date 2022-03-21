module JsonResponseMethods
  def render_ok
    render json: {
      code: :ok
    }
  end

  def render_ok_and_id(object)
    render json: {
      code: :ok,
      data: {
        id: object.id
      }
    }
  end

  def render_ok_and_data(object)
    render json: {
      code: :ok,
      data: object
    }
  end

  def render_error(status, code, error = nil)
    render json: {
      code: code,
      message: error
    }, status: status
  end

  def render_unprocessable_entity(message)
    render_error(:unprocessable_entity, :validation_error, message)
  end
end

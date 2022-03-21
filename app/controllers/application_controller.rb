class ApplicationController < ActionController::Base
  include JsonResponseMethods

  before_action do
    Rack::MiniProfiler.authorize_request
  end
end

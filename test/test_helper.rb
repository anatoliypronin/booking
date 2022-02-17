ENV['RAILS_ENV'] ||= 'test'
require_relative '../config/environment'
require 'rails/test_help'

Dir[Rails.root.join('test/helpers/**/*.rb')].sort.each { |f| require f }

class ActiveSupport::TestCase
  include FactoryBot::Syntax::Methods

  parallelize(workers: :number_of_processors)

  fixtures :all
end

class ActionDispatch::IntegrationTest
  include ResponseHelper
end

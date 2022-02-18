require 'test_helper'

class Api::V1::TicketsControllerTest < ActionDispatch::IntegrationTest
  test 'should get tickets list' do
    create_list :ticket, 10

    get api_v1_tickets_path
    assert_response :success
    p json_response
  end
end

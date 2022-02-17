require 'test_helper'

class Api::V1::AirportsControllerTest < ActionDispatch::IntegrationTest
  test 'should get airports list' do
    create_list :airport, 10

    get api_v1_airports_path
    assert_response :success
    p json_response
  end
end

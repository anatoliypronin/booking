require 'test_helper'

class Api::V1::AircraftsControllerTest < ActionDispatch::IntegrationTest
  test 'should get aircrafts list' do
    create_list :aircraft, 10

    get api_v1_aircrafts_path
    assert_response :success
  end
end

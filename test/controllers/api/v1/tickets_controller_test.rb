require 'test_helper'

class Api::V1::TicketsControllerTest < ActionDispatch::IntegrationTest
  test 'should get tickets list' do
    create_list :ticket, 10

    get api_v1_tickets_path
    assert_response :success

    assert_equal json_response.size, 10
  end

  test 'should get tickets list with query ticket_no' do
    ticket_no = generate(:ticket_no)
    create :ticket, ticket_no: ticket_no

    search_params = { q: { ticket_no_eq: ticket_no } }

    get api_v1_tickets_path(search_params)
    assert_response :success

    assert_equal json_response.size, 1
    assert_equal json_response[0][:ticket_no], ticket_no
  end

  test 'should post create new ticket' do
    booking = create :booking
    ticket_params = {
      book_ref: booking.book_ref,
      ticket_no: generate(:ticket_no),
      passenger_id: generate(:passenger_id),
      first_name: generate(:first_name),
      last_name: generate(:last_name),
      email: generate(:email),
      phone: generate(:phone)
    }

    post api_v1_tickets_path(ticket_params)
    assert_response :success

    assert_equal json_response[:data][:book_ref], ticket_params[:book_ref]
    assert_equal json_response[:data][:ticket_no], ticket_params[:ticket_no]
    assert_equal json_response[:data][:passenger_id], ticket_params[:passenger_id]
    assert_equal json_response[:data][:passenger_name], [ticket_params[:first_name], ticket_params[:last_name]].join(' ')
    assert_equal json_response[:data][:contact_data][:email], ticket_params[:email]
    assert_equal json_response[:data][:contact_data][:phone], ticket_params[:phone]
  end

  test 'should not post create new ticket without booking' do
    ticket_params = {
      ticket_no: generate(:ticket_no),
      passenger_id: generate(:passenger_id),
      first_name: generate(:first_name),
      last_name: generate(:last_name),
      email: generate(:email),
      phone: generate(:phone)
    }

    post api_v1_tickets_path(ticket_params)
    assert_response :unprocessable_entity
  end

  test 'should not post create new ticket without passenger info' do
    booking = create :booking
    ticket_params = {
      book_ref: booking.book_ref,
      ticket_no: generate(:ticket_no),
      email: generate(:email),
      phone: generate(:phone)
    }

    post api_v1_tickets_path(ticket_params)
    assert_response :unprocessable_entity
  end
end

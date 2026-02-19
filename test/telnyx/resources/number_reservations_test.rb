# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::NumberReservationsTest < Telnyx::Test::ResourceTest
  def test_create
    skip("Mock server tests are disabled")

    response = @telnyx.number_reservations.create

    assert_pattern do
      response => Telnyx::Models::NumberReservationCreateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::NumberReservation | nil
      }
    end
  end

  def test_retrieve
    skip("Mock server tests are disabled")

    response = @telnyx.number_reservations.retrieve("number_reservation_id")

    assert_pattern do
      response => Telnyx::Models::NumberReservationRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::NumberReservation | nil
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @telnyx.number_reservations.list

    assert_pattern do
      response => Telnyx::Internal::DefaultFlatPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Telnyx::NumberReservation
    end

    assert_pattern do
      row => {
        id: String | nil,
        created_at: Time | nil,
        customer_reference: String | nil,
        phone_numbers: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::ReservedPhoneNumber]) | nil,
        record_type: String | nil,
        status: Telnyx::NumberReservation::Status | nil,
        updated_at: Time | nil
      }
    end
  end
end

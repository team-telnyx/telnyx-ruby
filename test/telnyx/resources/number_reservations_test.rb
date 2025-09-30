# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::NumberReservationsTest < Telnyx::Test::ResourceTest
  def test_create
    skip("Prism tests are disabled")

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
    skip("Prism tests are disabled")

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
    skip("Prism tests are disabled")

    response = @telnyx.number_reservations.list

    assert_pattern do
      response => Telnyx::Models::NumberReservationListResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::NumberReservation]) | nil,
        meta: Telnyx::PaginationMeta | nil
      }
    end
  end
end

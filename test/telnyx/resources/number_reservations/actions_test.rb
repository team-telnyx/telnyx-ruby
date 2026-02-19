# frozen_string_literal: true

require_relative "../../test_helper"

class Telnyx::Test::Resources::NumberReservations::ActionsTest < Telnyx::Test::ResourceTest
  def test_extend_
    skip("Mock server tests are disabled")

    response = @telnyx.number_reservations.actions.extend_("number_reservation_id")

    assert_pattern do
      response => Telnyx::Models::NumberReservations::ActionExtendResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::NumberReservation | nil
      }
    end
  end
end

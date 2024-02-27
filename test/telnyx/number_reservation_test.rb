# frozen_string_literal: true

require_relative "../test_helper"

module Telnyx
  class NumberReservationTest < Test::Unit::TestCase
    should "be listable" do
      number_reservations = Telnyx::NumberReservation.list
      assert_requested :get, "#{Telnyx.api_base}/v2/number_reservations"
      assert_kind_of Telnyx::ListObject, number_reservations
      assert_kind_of Telnyx::TelnyxObject, number_reservations.first
    end

    should "call extend" do
      number_reservation = Telnyx::NumberReservation.list.first
      stub = stub_request(:post, "#{Telnyx.api_base}/v2/number_reservations/#{number_reservation.id}/actions/extend")
             .to_return(body: JSON.generate(id: "123"))
      Telnyx::NumberReservation.extend_number(number_reservation.id)
      assert_requested stub
    end
  end
end

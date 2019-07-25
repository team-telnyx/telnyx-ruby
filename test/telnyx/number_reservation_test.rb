# frozen_string_literal: true

module Telnyx
  class NumberReservationTest < Test::Unit::TestCase
    should "be listable" do
      number_reservations = Telnyx::NumberReservation.list
      assert_requested :get, "#{Telnyx.api_base}/v2/number_reservations"
      assert_kind_of Telnyx::ListObject, number_reservations
      assert_kind_of Telnyx::NumberReservation, number_reservations.first
    end

    should "call extend" do
      number_reservation = Telnyx::NumberReservation.list.first
      stub = stub_request(:post, "#{Telnyx.api_base}/v2/number_reservations/#{number_reservation.id}/actions/extend")
             .to_return(body: JSON.generate(id: "123"))
      number_reservation.extend_number
      assert_requested stub
    end
  end
end

# frozen_string_literal: true

module Telnyx
  class NumberReservationTest < Test::Unit::TestCase
    should "be listable" do
      number_reservations = Telnyx::NumberReservation.list
      assert_requested :get, "#{Telnyx.api_base}/v2/number_reservations"
      assert_kind_of Telnyx::ListObject, number_reservations
      assert_kind_of Telnyx::NumberReservation, number_reservations.first
    end
  end
end

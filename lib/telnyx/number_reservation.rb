# frozen_string_literal: true

module Telnyx
  class NumberReservation < APIResource
    extend Telnyx::APIOperations::List
    extend Telnyx::APIOperations::Create
    include Telnyx::APIOperations::Save

    OBJECT_NAME = "number_reservation".freeze
  end
end

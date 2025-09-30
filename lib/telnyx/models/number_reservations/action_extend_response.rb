# frozen_string_literal: true

module Telnyx
  module Models
    module NumberReservations
      # @see Telnyx::Resources::NumberReservations::Actions#extend_
      class ActionExtendResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Telnyx::Models::NumberReservation, nil]
        optional :data, -> { Telnyx::NumberReservation }

        # @!method initialize(data: nil)
        #   @param data [Telnyx::Models::NumberReservation]
      end
    end
  end
end

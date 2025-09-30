# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::NumberReservations#create
    class NumberReservationCreateResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::NumberReservation, nil]
      optional :data, -> { Telnyx::NumberReservation }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::NumberReservation]
    end
  end
end

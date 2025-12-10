# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::NumberReservations#list
    class NumberReservationListResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<Telnyx::Models::NumberReservation>, nil]
      optional :data, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::NumberReservation] }

      # @!attribute meta
      #
      #   @return [Telnyx::Models::PaginationMeta, nil]
      optional :meta, -> { Telnyx::PaginationMeta }

      # @!method initialize(data: nil, meta: nil)
      #   @param data [Array<Telnyx::Models::NumberReservation>]
      #   @param meta [Telnyx::Models::PaginationMeta]
    end
  end
end

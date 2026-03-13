# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::NumberReservations#retrieve
    class NumberReservationRetrieveParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute number_reservation_id
      #
      #   @return [String]
      required :number_reservation_id, String

      # @!method initialize(number_reservation_id:, request_options: {})
      #   @param number_reservation_id [String]
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end

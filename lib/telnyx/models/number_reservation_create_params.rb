# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::NumberReservations#create
    class NumberReservationCreateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute customer_reference
      #   A customer reference string for customer look ups.
      #
      #   @return [String, nil]
      optional :customer_reference, String

      # @!attribute phone_numbers
      #
      #   @return [Array<Telnyx::Models::ReservedPhoneNumber>, nil]
      optional :phone_numbers, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::ReservedPhoneNumber] }

      # @!method initialize(customer_reference: nil, phone_numbers: nil, request_options: {})
      #   @param customer_reference [String] A customer reference string for customer look ups.
      #
      #   @param phone_numbers [Array<Telnyx::Models::ReservedPhoneNumber>]
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end

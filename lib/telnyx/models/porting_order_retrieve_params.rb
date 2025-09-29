# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::PortingOrders#retrieve
    class PortingOrderRetrieveParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute include_phone_numbers
      #   Include the first 50 phone number objects in the results
      #
      #   @return [Boolean, nil]
      optional :include_phone_numbers, Telnyx::Internal::Type::Boolean

      # @!method initialize(include_phone_numbers: nil, request_options: {})
      #   @param include_phone_numbers [Boolean] Include the first 50 phone number objects in the results
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end

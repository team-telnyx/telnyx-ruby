# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::SubNumberOrders#retrieve
    class SubNumberOrderRetrieveParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute filter
      #   Consolidated filter parameter (deepObject style). Originally:
      #   filter[include_phone_numbers]
      #
      #   @return [Telnyx::Models::SubNumberOrderRetrieveParams::Filter, nil]
      optional :filter, -> { Telnyx::SubNumberOrderRetrieveParams::Filter }

      # @!method initialize(filter: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::SubNumberOrderRetrieveParams} for more details.
      #
      #   @param filter [Telnyx::Models::SubNumberOrderRetrieveParams::Filter] Consolidated filter parameter (deepObject style). Originally: filter[include_pho
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      class Filter < Telnyx::Internal::Type::BaseModel
        # @!attribute include_phone_numbers
        #   Include the first 50 phone number objects in the results
        #
        #   @return [Boolean, nil]
        optional :include_phone_numbers, Telnyx::Internal::Type::Boolean

        # @!method initialize(include_phone_numbers: nil)
        #   Consolidated filter parameter (deepObject style). Originally:
        #   filter[include_phone_numbers]
        #
        #   @param include_phone_numbers [Boolean] Include the first 50 phone number objects in the results
      end
    end
  end
end

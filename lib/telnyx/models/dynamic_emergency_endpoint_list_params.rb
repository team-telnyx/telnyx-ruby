# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::DynamicEmergencyEndpoints#list
    class DynamicEmergencyEndpointListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute filter
      #   Consolidated filter parameter (deepObject style). Originally: filter[status],
      #   filter[country_code]
      #
      #   @return [Telnyx::Models::DynamicEmergencyEndpointListParams::Filter, nil]
      optional :filter, -> { Telnyx::DynamicEmergencyEndpointListParams::Filter }

      # @!attribute page_number
      #
      #   @return [Integer, nil]
      optional :page_number, Integer

      # @!attribute page_size
      #
      #   @return [Integer, nil]
      optional :page_size, Integer

      # @!method initialize(filter: nil, page_number: nil, page_size: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::DynamicEmergencyEndpointListParams} for more details.
      #
      #   @param filter [Telnyx::Models::DynamicEmergencyEndpointListParams::Filter] Consolidated filter parameter (deepObject style). Originally: filter[status], fi
      #
      #   @param page_number [Integer]
      #
      #   @param page_size [Integer]
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      class Filter < Telnyx::Internal::Type::BaseModel
        # @!attribute country_code
        #   Filter by country code.
        #
        #   @return [String, nil]
        optional :country_code, String

        # @!attribute status
        #   Filter by status.
        #
        #   @return [Symbol, Telnyx::Models::DynamicEmergencyEndpointListParams::Filter::Status, nil]
        optional :status, enum: -> { Telnyx::DynamicEmergencyEndpointListParams::Filter::Status }

        # @!method initialize(country_code: nil, status: nil)
        #   Consolidated filter parameter (deepObject style). Originally: filter[status],
        #   filter[country_code]
        #
        #   @param country_code [String] Filter by country code.
        #
        #   @param status [Symbol, Telnyx::Models::DynamicEmergencyEndpointListParams::Filter::Status] Filter by status.

        # Filter by status.
        #
        # @see Telnyx::Models::DynamicEmergencyEndpointListParams::Filter#status
        module Status
          extend Telnyx::Internal::Type::Enum

          PENDING = :pending
          ACTIVATED = :activated
          REJECTED = :rejected

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end

# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::DynamicEmergencyAddresses#list
    class DynamicEmergencyAddressListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute filter
      #   Consolidated filter parameter (deepObject style). Originally: filter[status],
      #   filter[country_code]
      #
      #   @return [Telnyx::Models::DynamicEmergencyAddressListParams::Filter, nil]
      optional :filter, -> { Telnyx::DynamicEmergencyAddressListParams::Filter }

      # @!attribute page
      #   Consolidated page parameter (deepObject style). Originally: page[size],
      #   page[number]
      #
      #   @return [Telnyx::Models::DynamicEmergencyAddressListParams::Page, nil]
      optional :page, -> { Telnyx::DynamicEmergencyAddressListParams::Page }

      # @!method initialize(filter: nil, page: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::DynamicEmergencyAddressListParams} for more details.
      #
      #   @param filter [Telnyx::Models::DynamicEmergencyAddressListParams::Filter] Consolidated filter parameter (deepObject style). Originally: filter[status], fi
      #
      #   @param page [Telnyx::Models::DynamicEmergencyAddressListParams::Page] Consolidated page parameter (deepObject style). Originally: page[size], page[num
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
        #   @return [Symbol, Telnyx::Models::DynamicEmergencyAddressListParams::Filter::Status, nil]
        optional :status, enum: -> { Telnyx::DynamicEmergencyAddressListParams::Filter::Status }

        # @!method initialize(country_code: nil, status: nil)
        #   Consolidated filter parameter (deepObject style). Originally: filter[status],
        #   filter[country_code]
        #
        #   @param country_code [String] Filter by country code.
        #
        #   @param status [Symbol, Telnyx::Models::DynamicEmergencyAddressListParams::Filter::Status] Filter by status.

        # Filter by status.
        #
        # @see Telnyx::Models::DynamicEmergencyAddressListParams::Filter#status
        module Status
          extend Telnyx::Internal::Type::Enum

          PENDING = :pending
          ACTIVATED = :activated
          REJECTED = :rejected

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      class Page < Telnyx::Internal::Type::BaseModel
        # @!attribute number
        #   The page number to load
        #
        #   @return [Integer, nil]
        optional :number, Integer

        # @!attribute size
        #   The size of the page
        #
        #   @return [Integer, nil]
        optional :size, Integer

        # @!method initialize(number: nil, size: nil)
        #   Consolidated page parameter (deepObject style). Originally: page[size],
        #   page[number]
        #
        #   @param number [Integer] The page number to load
        #
        #   @param size [Integer] The size of the page
      end
    end
  end
end

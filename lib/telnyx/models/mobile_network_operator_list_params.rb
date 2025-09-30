# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::MobileNetworkOperators#list
    class MobileNetworkOperatorListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute filter
      #   Consolidated filter parameter for mobile network operators (deepObject style).
      #   Originally: filter[name][starts_with], filter[name][contains],
      #   filter[name][ends_with], filter[country_code], filter[mcc], filter[mnc],
      #   filter[tadig], filter[network_preferences_enabled]
      #
      #   @return [Telnyx::Models::MobileNetworkOperatorListParams::Filter, nil]
      optional :filter, -> { Telnyx::MobileNetworkOperatorListParams::Filter }

      # @!attribute page
      #   Consolidated pagination parameter (deepObject style). Originally: page[number],
      #   page[size]
      #
      #   @return [Telnyx::Models::MobileNetworkOperatorListParams::Page, nil]
      optional :page, -> { Telnyx::MobileNetworkOperatorListParams::Page }

      # @!method initialize(filter: nil, page: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::MobileNetworkOperatorListParams} for more details.
      #
      #   @param filter [Telnyx::Models::MobileNetworkOperatorListParams::Filter] Consolidated filter parameter for mobile network operators (deepObject style). O
      #
      #   @param page [Telnyx::Models::MobileNetworkOperatorListParams::Page] Consolidated pagination parameter (deepObject style). Originally: page[number],
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      class Filter < Telnyx::Internal::Type::BaseModel
        # @!attribute country_code
        #   Filter by exact country_code.
        #
        #   @return [String, nil]
        optional :country_code, String

        # @!attribute mcc
        #   Filter by exact MCC.
        #
        #   @return [String, nil]
        optional :mcc, String

        # @!attribute mnc
        #   Filter by exact MNC.
        #
        #   @return [String, nil]
        optional :mnc, String

        # @!attribute name
        #   Advanced name filtering operations
        #
        #   @return [Telnyx::Models::MobileNetworkOperatorListParams::Filter::Name, nil]
        optional :name, -> { Telnyx::MobileNetworkOperatorListParams::Filter::Name }

        # @!attribute network_preferences_enabled
        #   Filter by network_preferences_enabled.
        #
        #   @return [Boolean, nil]
        optional :network_preferences_enabled, Telnyx::Internal::Type::Boolean

        # @!attribute tadig
        #   Filter by exact TADIG.
        #
        #   @return [String, nil]
        optional :tadig, String

        # @!method initialize(country_code: nil, mcc: nil, mnc: nil, name: nil, network_preferences_enabled: nil, tadig: nil)
        #   Consolidated filter parameter for mobile network operators (deepObject style).
        #   Originally: filter[name][starts_with], filter[name][contains],
        #   filter[name][ends_with], filter[country_code], filter[mcc], filter[mnc],
        #   filter[tadig], filter[network_preferences_enabled]
        #
        #   @param country_code [String] Filter by exact country_code.
        #
        #   @param mcc [String] Filter by exact MCC.
        #
        #   @param mnc [String] Filter by exact MNC.
        #
        #   @param name [Telnyx::Models::MobileNetworkOperatorListParams::Filter::Name] Advanced name filtering operations
        #
        #   @param network_preferences_enabled [Boolean] Filter by network_preferences_enabled.
        #
        #   @param tadig [String] Filter by exact TADIG.

        # @see Telnyx::Models::MobileNetworkOperatorListParams::Filter#name
        class Name < Telnyx::Internal::Type::BaseModel
          # @!attribute contains
          #   Filter by name containing match.
          #
          #   @return [String, nil]
          optional :contains, String

          # @!attribute ends_with
          #   Filter by name ending with.
          #
          #   @return [String, nil]
          optional :ends_with, String

          # @!attribute starts_with
          #   Filter by name starting with.
          #
          #   @return [String, nil]
          optional :starts_with, String

          # @!method initialize(contains: nil, ends_with: nil, starts_with: nil)
          #   Advanced name filtering operations
          #
          #   @param contains [String] Filter by name containing match.
          #
          #   @param ends_with [String] Filter by name ending with.
          #
          #   @param starts_with [String] Filter by name starting with.
        end
      end

      class Page < Telnyx::Internal::Type::BaseModel
        # @!attribute number
        #   The page number to load.
        #
        #   @return [Integer, nil]
        optional :number, Integer

        # @!attribute size
        #   The size of the page.
        #
        #   @return [Integer, nil]
        optional :size, Integer

        # @!method initialize(number: nil, size: nil)
        #   Consolidated pagination parameter (deepObject style). Originally: page[number],
        #   page[size]
        #
        #   @param number [Integer] The page number to load.
        #
        #   @param size [Integer] The size of the page.
      end
    end
  end
end

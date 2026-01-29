# frozen_string_literal: true

module Telnyx
  module Models
    module ExternalConnections
      # @see Telnyx::Resources::ExternalConnections::PhoneNumbers#list
      class PhoneNumberListParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute filter
        #   Filter parameter for phone numbers (deepObject style). Supports filtering by
        #   phone_number, civic_address_id, and location_id with eq/contains operations.
        #
        #   @return [Telnyx::Models::ExternalConnections::PhoneNumberListParams::Filter, nil]
        optional :filter, -> { Telnyx::ExternalConnections::PhoneNumberListParams::Filter }

        # @!attribute page
        #   Consolidated page parameter (deepObject style). Originally: page[size],
        #   page[number]
        #
        #   @return [Telnyx::Models::ExternalConnections::PhoneNumberListParams::Page, nil]
        optional :page, -> { Telnyx::ExternalConnections::PhoneNumberListParams::Page }

        # @!method initialize(filter: nil, page: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::ExternalConnections::PhoneNumberListParams} for more details.
        #
        #   @param filter [Telnyx::Models::ExternalConnections::PhoneNumberListParams::Filter] Filter parameter for phone numbers (deepObject style). Supports filtering by pho
        #
        #   @param page [Telnyx::Models::ExternalConnections::PhoneNumberListParams::Page] Consolidated page parameter (deepObject style). Originally: page[size], page[num
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

        class Filter < Telnyx::Internal::Type::BaseModel
          # @!attribute civic_address_id
          #
          #   @return [Telnyx::Models::ExternalConnections::PhoneNumberListParams::Filter::CivicAddressID, nil]
          optional :civic_address_id,
                   -> { Telnyx::ExternalConnections::PhoneNumberListParams::Filter::CivicAddressID }

          # @!attribute location_id
          #
          #   @return [Telnyx::Models::ExternalConnections::PhoneNumberListParams::Filter::LocationID, nil]
          optional :location_id, -> { Telnyx::ExternalConnections::PhoneNumberListParams::Filter::LocationID }

          # @!attribute phone_number
          #
          #   @return [Telnyx::Models::ExternalConnections::PhoneNumberListParams::Filter::PhoneNumber, nil]
          optional :phone_number, -> { Telnyx::ExternalConnections::PhoneNumberListParams::Filter::PhoneNumber }

          # @!method initialize(civic_address_id: nil, location_id: nil, phone_number: nil)
          #   Filter parameter for phone numbers (deepObject style). Supports filtering by
          #   phone_number, civic_address_id, and location_id with eq/contains operations.
          #
          #   @param civic_address_id [Telnyx::Models::ExternalConnections::PhoneNumberListParams::Filter::CivicAddressID]
          #   @param location_id [Telnyx::Models::ExternalConnections::PhoneNumberListParams::Filter::LocationID]
          #   @param phone_number [Telnyx::Models::ExternalConnections::PhoneNumberListParams::Filter::PhoneNumber]

          # @see Telnyx::Models::ExternalConnections::PhoneNumberListParams::Filter#civic_address_id
          class CivicAddressID < Telnyx::Internal::Type::BaseModel
            # @!attribute eq
            #   The civic address ID to filter by
            #
            #   @return [String, nil]
            optional :eq, String

            # @!method initialize(eq: nil)
            #   @param eq [String] The civic address ID to filter by
          end

          # @see Telnyx::Models::ExternalConnections::PhoneNumberListParams::Filter#location_id
          class LocationID < Telnyx::Internal::Type::BaseModel
            # @!attribute eq
            #   The location ID to filter by
            #
            #   @return [String, nil]
            optional :eq, String

            # @!method initialize(eq: nil)
            #   @param eq [String] The location ID to filter by
          end

          # @see Telnyx::Models::ExternalConnections::PhoneNumberListParams::Filter#phone_number
          class PhoneNumber < Telnyx::Internal::Type::BaseModel
            # @!attribute contains
            #   The phone number to filter by (partial match)
            #
            #   @return [String, nil]
            optional :contains, String

            # @!attribute eq
            #   The phone number to filter by (exact match)
            #
            #   @return [String, nil]
            optional :eq, String

            # @!method initialize(contains: nil, eq: nil)
            #   @param contains [String] The phone number to filter by (partial match)
            #
            #   @param eq [String] The phone number to filter by (exact match)
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
end

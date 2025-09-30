# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::SimCardOrders#list
    class SimCardOrderListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute filter
      #   Consolidated filter parameter for SIM card orders (deepObject style).
      #   Originally: filter[created_at], filter[updated_at], filter[quantity],
      #   filter[cost.amount], filter[cost.currency], filter[address.id],
      #   filter[address.street_address], filter[address.extended_address],
      #   filter[address.locality], filter[address.administrative_area],
      #   filter[address.country_code], filter[address.postal_code]
      #
      #   @return [Telnyx::Models::SimCardOrderListParams::Filter, nil]
      optional :filter, -> { Telnyx::SimCardOrderListParams::Filter }

      # @!attribute page
      #   Consolidated pagination parameter (deepObject style). Originally: page[number],
      #   page[size]
      #
      #   @return [Telnyx::Models::SimCardOrderListParams::Page, nil]
      optional :page, -> { Telnyx::SimCardOrderListParams::Page }

      # @!method initialize(filter: nil, page: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::SimCardOrderListParams} for more details.
      #
      #   @param filter [Telnyx::Models::SimCardOrderListParams::Filter] Consolidated filter parameter for SIM card orders (deepObject style). Originally
      #
      #   @param page [Telnyx::Models::SimCardOrderListParams::Page] Consolidated pagination parameter (deepObject style). Originally: page[number],
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      class Filter < Telnyx::Internal::Type::BaseModel
        # @!attribute address
        #
        #   @return [Telnyx::Models::SimCardOrderListParams::Filter::Address, nil]
        optional :address, -> { Telnyx::SimCardOrderListParams::Filter::Address }

        # @!attribute cost
        #
        #   @return [Telnyx::Models::SimCardOrderListParams::Filter::Cost, nil]
        optional :cost, -> { Telnyx::SimCardOrderListParams::Filter::Cost }

        # @!attribute created_at
        #   Filter by ISO 8601 formatted date-time string matching resource creation
        #   date-time.
        #
        #   @return [Time, nil]
        optional :created_at, Time

        # @!attribute quantity
        #   Filter orders by how many SIM cards were ordered.
        #
        #   @return [Integer, nil]
        optional :quantity, Integer

        # @!attribute updated_at
        #   Filter by ISO 8601 formatted date-time string matching resource last update
        #   date-time.
        #
        #   @return [Time, nil]
        optional :updated_at, Time

        # @!method initialize(address: nil, cost: nil, created_at: nil, quantity: nil, updated_at: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::SimCardOrderListParams::Filter} for more details.
        #
        #   Consolidated filter parameter for SIM card orders (deepObject style).
        #   Originally: filter[created_at], filter[updated_at], filter[quantity],
        #   filter[cost.amount], filter[cost.currency], filter[address.id],
        #   filter[address.street_address], filter[address.extended_address],
        #   filter[address.locality], filter[address.administrative_area],
        #   filter[address.country_code], filter[address.postal_code]
        #
        #   @param address [Telnyx::Models::SimCardOrderListParams::Filter::Address]
        #
        #   @param cost [Telnyx::Models::SimCardOrderListParams::Filter::Cost]
        #
        #   @param created_at [Time] Filter by ISO 8601 formatted date-time string matching resource creation date-ti
        #
        #   @param quantity [Integer] Filter orders by how many SIM cards were ordered.
        #
        #   @param updated_at [Time] Filter by ISO 8601 formatted date-time string matching resource last update date

        # @see Telnyx::Models::SimCardOrderListParams::Filter#address
        class Address < Telnyx::Internal::Type::BaseModel
          # @!attribute id
          #   Uniquely identifies the address for the order.
          #
          #   @return [String, nil]
          optional :id, String

          # @!attribute administrative_area
          #   Filter by state or province where the address is located.
          #
          #   @return [String, nil]
          optional :administrative_area, String

          # @!attribute country_code
          #   Filter by the mobile operator two-character (ISO 3166-1 alpha-2) origin country
          #   code.
          #
          #   @return [String, nil]
          optional :country_code, String

          # @!attribute extended_address
          #   Returns entries with matching name of the supplemental field for address
          #   information.
          #
          #   @return [String, nil]
          optional :extended_address, String

          # @!attribute locality
          #   Filter by the name of the city where the address is located.
          #
          #   @return [String, nil]
          optional :locality, String

          # @!attribute postal_code
          #   Filter by postal code for the address.
          #
          #   @return [String, nil]
          optional :postal_code, String

          # @!attribute street_address
          #   Returns entries with matching name of the street where the address is located.
          #
          #   @return [String, nil]
          optional :street_address, String

          # @!method initialize(id: nil, administrative_area: nil, country_code: nil, extended_address: nil, locality: nil, postal_code: nil, street_address: nil)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::SimCardOrderListParams::Filter::Address} for more details.
          #
          #   @param id [String] Uniquely identifies the address for the order.
          #
          #   @param administrative_area [String] Filter by state or province where the address is located.
          #
          #   @param country_code [String] Filter by the mobile operator two-character (ISO 3166-1 alpha-2) origin country
          #
          #   @param extended_address [String] Returns entries with matching name of the supplemental field for address informa
          #
          #   @param locality [String] Filter by the name of the city where the address is located.
          #
          #   @param postal_code [String] Filter by postal code for the address.
          #
          #   @param street_address [String] Returns entries with matching name of the street where the address is located.
        end

        # @see Telnyx::Models::SimCardOrderListParams::Filter#cost
        class Cost < Telnyx::Internal::Type::BaseModel
          # @!attribute amount
          #   The total monetary amount of the order.
          #
          #   @return [String, nil]
          optional :amount, String

          # @!attribute currency
          #   Filter by ISO 4217 currency string.
          #
          #   @return [String, nil]
          optional :currency, String

          # @!method initialize(amount: nil, currency: nil)
          #   @param amount [String] The total monetary amount of the order.
          #
          #   @param currency [String] Filter by ISO 4217 currency string.
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

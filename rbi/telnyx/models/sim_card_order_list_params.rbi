# typed: strong

module Telnyx
  module Models
    class SimCardOrderListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::SimCardOrderListParams, Telnyx::Internal::AnyHash)
        end

      # Consolidated filter parameter for SIM card orders (deepObject style).
      # Originally: filter[created_at], filter[updated_at], filter[quantity],
      # filter[cost.amount], filter[cost.currency], filter[address.id],
      # filter[address.street_address], filter[address.extended_address],
      # filter[address.locality], filter[address.administrative_area],
      # filter[address.country_code], filter[address.postal_code]
      sig { returns(T.nilable(Telnyx::SimCardOrderListParams::Filter)) }
      attr_reader :filter

      sig do
        params(filter: Telnyx::SimCardOrderListParams::Filter::OrHash).void
      end
      attr_writer :filter

      # Consolidated pagination parameter (deepObject style). Originally: page[number],
      # page[size]
      sig { returns(T.nilable(Telnyx::SimCardOrderListParams::Page)) }
      attr_reader :page

      sig { params(page: Telnyx::SimCardOrderListParams::Page::OrHash).void }
      attr_writer :page

      sig do
        params(
          filter: Telnyx::SimCardOrderListParams::Filter::OrHash,
          page: Telnyx::SimCardOrderListParams::Page::OrHash,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Consolidated filter parameter for SIM card orders (deepObject style).
        # Originally: filter[created_at], filter[updated_at], filter[quantity],
        # filter[cost.amount], filter[cost.currency], filter[address.id],
        # filter[address.street_address], filter[address.extended_address],
        # filter[address.locality], filter[address.administrative_area],
        # filter[address.country_code], filter[address.postal_code]
        filter: nil,
        # Consolidated pagination parameter (deepObject style). Originally: page[number],
        # page[size]
        page: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            filter: Telnyx::SimCardOrderListParams::Filter,
            page: Telnyx::SimCardOrderListParams::Page,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end

      class Filter < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::SimCardOrderListParams::Filter,
              Telnyx::Internal::AnyHash
            )
          end

        # Filter by state or province where the address is located.
        sig { returns(T.nilable(String)) }
        attr_reader :address_administrative_area

        sig { params(address_administrative_area: String).void }
        attr_writer :address_administrative_area

        # Filter by the mobile operator two-character (ISO 3166-1 alpha-2) origin country
        # code.
        sig { returns(T.nilable(String)) }
        attr_reader :address_country_code

        sig { params(address_country_code: String).void }
        attr_writer :address_country_code

        # Returns entries with matching name of the supplemental field for address
        # information.
        sig { returns(T.nilable(String)) }
        attr_reader :address_extended_address

        sig { params(address_extended_address: String).void }
        attr_writer :address_extended_address

        # Uniquely identifies the address for the order.
        sig { returns(T.nilable(String)) }
        attr_reader :address_id

        sig { params(address_id: String).void }
        attr_writer :address_id

        # Filter by the name of the city where the address is located.
        sig { returns(T.nilable(String)) }
        attr_reader :address_locality

        sig { params(address_locality: String).void }
        attr_writer :address_locality

        # Filter by postal code for the address.
        sig { returns(T.nilable(String)) }
        attr_reader :address_postal_code

        sig { params(address_postal_code: String).void }
        attr_writer :address_postal_code

        # Returns entries with matching name of the street where the address is located.
        sig { returns(T.nilable(String)) }
        attr_reader :address_street_address

        sig { params(address_street_address: String).void }
        attr_writer :address_street_address

        # The total monetary amount of the order.
        sig { returns(T.nilable(String)) }
        attr_reader :cost_amount

        sig { params(cost_amount: String).void }
        attr_writer :cost_amount

        # Filter by ISO 4217 currency string.
        sig { returns(T.nilable(String)) }
        attr_reader :cost_currency

        sig { params(cost_currency: String).void }
        attr_writer :cost_currency

        # Filter by ISO 8601 formatted date-time string matching resource creation
        # date-time.
        sig { returns(T.nilable(Time)) }
        attr_reader :created_at

        sig { params(created_at: Time).void }
        attr_writer :created_at

        # Filter orders by how many SIM cards were ordered.
        sig { returns(T.nilable(Integer)) }
        attr_reader :quantity

        sig { params(quantity: Integer).void }
        attr_writer :quantity

        # Filter by ISO 8601 formatted date-time string matching resource last update
        # date-time.
        sig { returns(T.nilable(Time)) }
        attr_reader :updated_at

        sig { params(updated_at: Time).void }
        attr_writer :updated_at

        # Consolidated filter parameter for SIM card orders (deepObject style).
        # Originally: filter[created_at], filter[updated_at], filter[quantity],
        # filter[cost.amount], filter[cost.currency], filter[address.id],
        # filter[address.street_address], filter[address.extended_address],
        # filter[address.locality], filter[address.administrative_area],
        # filter[address.country_code], filter[address.postal_code]
        sig do
          params(
            address_administrative_area: String,
            address_country_code: String,
            address_extended_address: String,
            address_id: String,
            address_locality: String,
            address_postal_code: String,
            address_street_address: String,
            cost_amount: String,
            cost_currency: String,
            created_at: Time,
            quantity: Integer,
            updated_at: Time
          ).returns(T.attached_class)
        end
        def self.new(
          # Filter by state or province where the address is located.
          address_administrative_area: nil,
          # Filter by the mobile operator two-character (ISO 3166-1 alpha-2) origin country
          # code.
          address_country_code: nil,
          # Returns entries with matching name of the supplemental field for address
          # information.
          address_extended_address: nil,
          # Uniquely identifies the address for the order.
          address_id: nil,
          # Filter by the name of the city where the address is located.
          address_locality: nil,
          # Filter by postal code for the address.
          address_postal_code: nil,
          # Returns entries with matching name of the street where the address is located.
          address_street_address: nil,
          # The total monetary amount of the order.
          cost_amount: nil,
          # Filter by ISO 4217 currency string.
          cost_currency: nil,
          # Filter by ISO 8601 formatted date-time string matching resource creation
          # date-time.
          created_at: nil,
          # Filter orders by how many SIM cards were ordered.
          quantity: nil,
          # Filter by ISO 8601 formatted date-time string matching resource last update
          # date-time.
          updated_at: nil
        )
        end

        sig do
          override.returns(
            {
              address_administrative_area: String,
              address_country_code: String,
              address_extended_address: String,
              address_id: String,
              address_locality: String,
              address_postal_code: String,
              address_street_address: String,
              cost_amount: String,
              cost_currency: String,
              created_at: Time,
              quantity: Integer,
              updated_at: Time
            }
          )
        end
        def to_hash
        end
      end

      class Page < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::SimCardOrderListParams::Page,
              Telnyx::Internal::AnyHash
            )
          end

        # The page number to load.
        sig { returns(T.nilable(Integer)) }
        attr_reader :number

        sig { params(number: Integer).void }
        attr_writer :number

        # The size of the page.
        sig { returns(T.nilable(Integer)) }
        attr_reader :size

        sig { params(size: Integer).void }
        attr_writer :size

        # Consolidated pagination parameter (deepObject style). Originally: page[number],
        # page[size]
        sig { params(number: Integer, size: Integer).returns(T.attached_class) }
        def self.new(
          # The page number to load.
          number: nil,
          # The size of the page.
          size: nil
        )
        end

        sig { override.returns({ number: Integer, size: Integer }) }
        def to_hash
        end
      end
    end
  end
end

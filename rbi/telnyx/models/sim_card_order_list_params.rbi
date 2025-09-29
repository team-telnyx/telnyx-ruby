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

        sig do
          returns(T.nilable(Telnyx::SimCardOrderListParams::Filter::Address))
        end
        attr_reader :address

        sig do
          params(
            address: Telnyx::SimCardOrderListParams::Filter::Address::OrHash
          ).void
        end
        attr_writer :address

        sig { returns(T.nilable(Telnyx::SimCardOrderListParams::Filter::Cost)) }
        attr_reader :cost

        sig do
          params(
            cost: Telnyx::SimCardOrderListParams::Filter::Cost::OrHash
          ).void
        end
        attr_writer :cost

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
            address: Telnyx::SimCardOrderListParams::Filter::Address::OrHash,
            cost: Telnyx::SimCardOrderListParams::Filter::Cost::OrHash,
            created_at: Time,
            quantity: Integer,
            updated_at: Time
          ).returns(T.attached_class)
        end
        def self.new(
          address: nil,
          cost: nil,
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
              address: Telnyx::SimCardOrderListParams::Filter::Address,
              cost: Telnyx::SimCardOrderListParams::Filter::Cost,
              created_at: Time,
              quantity: Integer,
              updated_at: Time
            }
          )
        end
        def to_hash
        end

        class Address < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::SimCardOrderListParams::Filter::Address,
                Telnyx::Internal::AnyHash
              )
            end

          # Uniquely identifies the address for the order.
          sig { returns(T.nilable(String)) }
          attr_reader :id

          sig { params(id: String).void }
          attr_writer :id

          # Filter by state or province where the address is located.
          sig { returns(T.nilable(String)) }
          attr_reader :administrative_area

          sig { params(administrative_area: String).void }
          attr_writer :administrative_area

          # Filter by the mobile operator two-character (ISO 3166-1 alpha-2) origin country
          # code.
          sig { returns(T.nilable(String)) }
          attr_reader :country_code

          sig { params(country_code: String).void }
          attr_writer :country_code

          # Returns entries with matching name of the supplemental field for address
          # information.
          sig { returns(T.nilable(String)) }
          attr_reader :extended_address

          sig { params(extended_address: String).void }
          attr_writer :extended_address

          # Filter by the name of the city where the address is located.
          sig { returns(T.nilable(String)) }
          attr_reader :locality

          sig { params(locality: String).void }
          attr_writer :locality

          # Filter by postal code for the address.
          sig { returns(T.nilable(String)) }
          attr_reader :postal_code

          sig { params(postal_code: String).void }
          attr_writer :postal_code

          # Returns entries with matching name of the street where the address is located.
          sig { returns(T.nilable(String)) }
          attr_reader :street_address

          sig { params(street_address: String).void }
          attr_writer :street_address

          sig do
            params(
              id: String,
              administrative_area: String,
              country_code: String,
              extended_address: String,
              locality: String,
              postal_code: String,
              street_address: String
            ).returns(T.attached_class)
          end
          def self.new(
            # Uniquely identifies the address for the order.
            id: nil,
            # Filter by state or province where the address is located.
            administrative_area: nil,
            # Filter by the mobile operator two-character (ISO 3166-1 alpha-2) origin country
            # code.
            country_code: nil,
            # Returns entries with matching name of the supplemental field for address
            # information.
            extended_address: nil,
            # Filter by the name of the city where the address is located.
            locality: nil,
            # Filter by postal code for the address.
            postal_code: nil,
            # Returns entries with matching name of the street where the address is located.
            street_address: nil
          )
          end

          sig do
            override.returns(
              {
                id: String,
                administrative_area: String,
                country_code: String,
                extended_address: String,
                locality: String,
                postal_code: String,
                street_address: String
              }
            )
          end
          def to_hash
          end
        end

        class Cost < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::SimCardOrderListParams::Filter::Cost,
                Telnyx::Internal::AnyHash
              )
            end

          # The total monetary amount of the order.
          sig { returns(T.nilable(String)) }
          attr_reader :amount

          sig { params(amount: String).void }
          attr_writer :amount

          # Filter by ISO 4217 currency string.
          sig { returns(T.nilable(String)) }
          attr_reader :currency

          sig { params(currency: String).void }
          attr_writer :currency

          sig do
            params(amount: String, currency: String).returns(T.attached_class)
          end
          def self.new(
            # The total monetary amount of the order.
            amount: nil,
            # Filter by ISO 4217 currency string.
            currency: nil
          )
          end

          sig { override.returns({ amount: String, currency: String }) }
          def to_hash
          end
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

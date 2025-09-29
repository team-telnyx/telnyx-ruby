# typed: strong

module Telnyx
  module Models
    module ExternalConnections
      class PhoneNumberListParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::ExternalConnections::PhoneNumberListParams,
              Telnyx::Internal::AnyHash
            )
          end

        # Filter parameter for phone numbers (deepObject style). Supports filtering by
        # phone_number, civic_address_id, and location_id with eq/contains operations.
        sig do
          returns(
            T.nilable(
              Telnyx::ExternalConnections::PhoneNumberListParams::Filter
            )
          )
        end
        attr_reader :filter

        sig do
          params(
            filter:
              Telnyx::ExternalConnections::PhoneNumberListParams::Filter::OrHash
          ).void
        end
        attr_writer :filter

        # Consolidated page parameter (deepObject style). Originally: page[size],
        # page[number]
        sig do
          returns(
            T.nilable(Telnyx::ExternalConnections::PhoneNumberListParams::Page)
          )
        end
        attr_reader :page

        sig do
          params(
            page:
              Telnyx::ExternalConnections::PhoneNumberListParams::Page::OrHash
          ).void
        end
        attr_writer :page

        sig do
          params(
            filter:
              Telnyx::ExternalConnections::PhoneNumberListParams::Filter::OrHash,
            page:
              Telnyx::ExternalConnections::PhoneNumberListParams::Page::OrHash,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Filter parameter for phone numbers (deepObject style). Supports filtering by
          # phone_number, civic_address_id, and location_id with eq/contains operations.
          filter: nil,
          # Consolidated page parameter (deepObject style). Originally: page[size],
          # page[number]
          page: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              filter:
                Telnyx::ExternalConnections::PhoneNumberListParams::Filter,
              page: Telnyx::ExternalConnections::PhoneNumberListParams::Page,
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
                Telnyx::ExternalConnections::PhoneNumberListParams::Filter,
                Telnyx::Internal::AnyHash
              )
            end

          sig do
            returns(
              T.nilable(
                Telnyx::ExternalConnections::PhoneNumberListParams::Filter::CivicAddressID
              )
            )
          end
          attr_reader :civic_address_id

          sig do
            params(
              civic_address_id:
                Telnyx::ExternalConnections::PhoneNumberListParams::Filter::CivicAddressID::OrHash
            ).void
          end
          attr_writer :civic_address_id

          sig do
            returns(
              T.nilable(
                Telnyx::ExternalConnections::PhoneNumberListParams::Filter::LocationID
              )
            )
          end
          attr_reader :location_id

          sig do
            params(
              location_id:
                Telnyx::ExternalConnections::PhoneNumberListParams::Filter::LocationID::OrHash
            ).void
          end
          attr_writer :location_id

          sig do
            returns(
              T.nilable(
                Telnyx::ExternalConnections::PhoneNumberListParams::Filter::PhoneNumber
              )
            )
          end
          attr_reader :phone_number

          sig do
            params(
              phone_number:
                Telnyx::ExternalConnections::PhoneNumberListParams::Filter::PhoneNumber::OrHash
            ).void
          end
          attr_writer :phone_number

          # Filter parameter for phone numbers (deepObject style). Supports filtering by
          # phone_number, civic_address_id, and location_id with eq/contains operations.
          sig do
            params(
              civic_address_id:
                Telnyx::ExternalConnections::PhoneNumberListParams::Filter::CivicAddressID::OrHash,
              location_id:
                Telnyx::ExternalConnections::PhoneNumberListParams::Filter::LocationID::OrHash,
              phone_number:
                Telnyx::ExternalConnections::PhoneNumberListParams::Filter::PhoneNumber::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            civic_address_id: nil,
            location_id: nil,
            phone_number: nil
          )
          end

          sig do
            override.returns(
              {
                civic_address_id:
                  Telnyx::ExternalConnections::PhoneNumberListParams::Filter::CivicAddressID,
                location_id:
                  Telnyx::ExternalConnections::PhoneNumberListParams::Filter::LocationID,
                phone_number:
                  Telnyx::ExternalConnections::PhoneNumberListParams::Filter::PhoneNumber
              }
            )
          end
          def to_hash
          end

          class CivicAddressID < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::ExternalConnections::PhoneNumberListParams::Filter::CivicAddressID,
                  Telnyx::Internal::AnyHash
                )
              end

            # The civic address ID to filter by
            sig { returns(T.nilable(String)) }
            attr_reader :eq

            sig { params(eq: String).void }
            attr_writer :eq

            sig { params(eq: String).returns(T.attached_class) }
            def self.new(
              # The civic address ID to filter by
              eq: nil
            )
            end

            sig { override.returns({ eq: String }) }
            def to_hash
            end
          end

          class LocationID < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::ExternalConnections::PhoneNumberListParams::Filter::LocationID,
                  Telnyx::Internal::AnyHash
                )
              end

            # The location ID to filter by
            sig { returns(T.nilable(String)) }
            attr_reader :eq

            sig { params(eq: String).void }
            attr_writer :eq

            sig { params(eq: String).returns(T.attached_class) }
            def self.new(
              # The location ID to filter by
              eq: nil
            )
            end

            sig { override.returns({ eq: String }) }
            def to_hash
            end
          end

          class PhoneNumber < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::ExternalConnections::PhoneNumberListParams::Filter::PhoneNumber,
                  Telnyx::Internal::AnyHash
                )
              end

            # The phone number to filter by (partial match)
            sig { returns(T.nilable(String)) }
            attr_reader :contains

            sig { params(contains: String).void }
            attr_writer :contains

            # The phone number to filter by (exact match)
            sig { returns(T.nilable(String)) }
            attr_reader :eq

            sig { params(eq: String).void }
            attr_writer :eq

            sig do
              params(contains: String, eq: String).returns(T.attached_class)
            end
            def self.new(
              # The phone number to filter by (partial match)
              contains: nil,
              # The phone number to filter by (exact match)
              eq: nil
            )
            end

            sig { override.returns({ contains: String, eq: String }) }
            def to_hash
            end
          end
        end

        class Page < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::ExternalConnections::PhoneNumberListParams::Page,
                Telnyx::Internal::AnyHash
              )
            end

          # The page number to load
          sig { returns(T.nilable(Integer)) }
          attr_reader :number

          sig { params(number: Integer).void }
          attr_writer :number

          # The size of the page
          sig { returns(T.nilable(Integer)) }
          attr_reader :size

          sig { params(size: Integer).void }
          attr_writer :size

          # Consolidated page parameter (deepObject style). Originally: page[size],
          # page[number]
          sig do
            params(number: Integer, size: Integer).returns(T.attached_class)
          end
          def self.new(
            # The page number to load
            number: nil,
            # The size of the page
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
end

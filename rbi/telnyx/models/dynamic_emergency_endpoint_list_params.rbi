# typed: strong

module Telnyx
  module Models
    class DynamicEmergencyEndpointListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Telnyx::DynamicEmergencyEndpointListParams,
            Telnyx::Internal::AnyHash
          )
        end

      # Consolidated filter parameter (deepObject style). Originally: filter[status],
      # filter[country_code]
      sig do
        returns(T.nilable(Telnyx::DynamicEmergencyEndpointListParams::Filter))
      end
      attr_reader :filter

      sig do
        params(
          filter: Telnyx::DynamicEmergencyEndpointListParams::Filter::OrHash
        ).void
      end
      attr_writer :filter

      # Consolidated page parameter (deepObject style). Originally: page[size],
      # page[number]
      sig do
        returns(T.nilable(Telnyx::DynamicEmergencyEndpointListParams::Page))
      end
      attr_reader :page

      sig do
        params(
          page: Telnyx::DynamicEmergencyEndpointListParams::Page::OrHash
        ).void
      end
      attr_writer :page

      sig do
        params(
          filter: Telnyx::DynamicEmergencyEndpointListParams::Filter::OrHash,
          page: Telnyx::DynamicEmergencyEndpointListParams::Page::OrHash,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Consolidated filter parameter (deepObject style). Originally: filter[status],
        # filter[country_code]
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
            filter: Telnyx::DynamicEmergencyEndpointListParams::Filter,
            page: Telnyx::DynamicEmergencyEndpointListParams::Page,
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
              Telnyx::DynamicEmergencyEndpointListParams::Filter,
              Telnyx::Internal::AnyHash
            )
          end

        # Filter by country code.
        sig { returns(T.nilable(String)) }
        attr_reader :country_code

        sig { params(country_code: String).void }
        attr_writer :country_code

        # Filter by status.
        sig do
          returns(
            T.nilable(
              Telnyx::DynamicEmergencyEndpointListParams::Filter::Status::OrSymbol
            )
          )
        end
        attr_reader :status

        sig do
          params(
            status:
              Telnyx::DynamicEmergencyEndpointListParams::Filter::Status::OrSymbol
          ).void
        end
        attr_writer :status

        # Consolidated filter parameter (deepObject style). Originally: filter[status],
        # filter[country_code]
        sig do
          params(
            country_code: String,
            status:
              Telnyx::DynamicEmergencyEndpointListParams::Filter::Status::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # Filter by country code.
          country_code: nil,
          # Filter by status.
          status: nil
        )
        end

        sig do
          override.returns(
            {
              country_code: String,
              status:
                Telnyx::DynamicEmergencyEndpointListParams::Filter::Status::OrSymbol
            }
          )
        end
        def to_hash
        end

        # Filter by status.
        module Status
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::DynamicEmergencyEndpointListParams::Filter::Status
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PENDING =
            T.let(
              :pending,
              Telnyx::DynamicEmergencyEndpointListParams::Filter::Status::TaggedSymbol
            )
          ACTIVATED =
            T.let(
              :activated,
              Telnyx::DynamicEmergencyEndpointListParams::Filter::Status::TaggedSymbol
            )
          REJECTED =
            T.let(
              :rejected,
              Telnyx::DynamicEmergencyEndpointListParams::Filter::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::DynamicEmergencyEndpointListParams::Filter::Status::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      class Page < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::DynamicEmergencyEndpointListParams::Page,
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
        sig { params(number: Integer, size: Integer).returns(T.attached_class) }
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

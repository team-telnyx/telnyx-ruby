# typed: strong

module Telnyx
  module Models
    class DynamicEmergencyAddressListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Telnyx::DynamicEmergencyAddressListParams,
            Telnyx::Internal::AnyHash
          )
        end

      # Consolidated filter parameter (deepObject style). Originally: filter[status],
      # filter[country_code]
      sig do
        returns(T.nilable(Telnyx::DynamicEmergencyAddressListParams::Filter))
      end
      attr_reader :filter

      sig do
        params(
          filter: Telnyx::DynamicEmergencyAddressListParams::Filter::OrHash
        ).void
      end
      attr_writer :filter

      sig { returns(T.nilable(Integer)) }
      attr_reader :page_number

      sig { params(page_number: Integer).void }
      attr_writer :page_number

      sig { returns(T.nilable(Integer)) }
      attr_reader :page_size

      sig { params(page_size: Integer).void }
      attr_writer :page_size

      sig do
        params(
          filter: Telnyx::DynamicEmergencyAddressListParams::Filter::OrHash,
          page_number: Integer,
          page_size: Integer,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Consolidated filter parameter (deepObject style). Originally: filter[status],
        # filter[country_code]
        filter: nil,
        page_number: nil,
        page_size: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            filter: Telnyx::DynamicEmergencyAddressListParams::Filter,
            page_number: Integer,
            page_size: Integer,
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
              Telnyx::DynamicEmergencyAddressListParams::Filter,
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
              Telnyx::DynamicEmergencyAddressListParams::Filter::Status::OrSymbol
            )
          )
        end
        attr_reader :status

        sig do
          params(
            status:
              Telnyx::DynamicEmergencyAddressListParams::Filter::Status::OrSymbol
          ).void
        end
        attr_writer :status

        # Consolidated filter parameter (deepObject style). Originally: filter[status],
        # filter[country_code]
        sig do
          params(
            country_code: String,
            status:
              Telnyx::DynamicEmergencyAddressListParams::Filter::Status::OrSymbol
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
                Telnyx::DynamicEmergencyAddressListParams::Filter::Status::OrSymbol
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
                Telnyx::DynamicEmergencyAddressListParams::Filter::Status
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PENDING =
            T.let(
              :pending,
              Telnyx::DynamicEmergencyAddressListParams::Filter::Status::TaggedSymbol
            )
          ACTIVATED =
            T.let(
              :activated,
              Telnyx::DynamicEmergencyAddressListParams::Filter::Status::TaggedSymbol
            )
          REJECTED =
            T.let(
              :rejected,
              Telnyx::DynamicEmergencyAddressListParams::Filter::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::DynamicEmergencyAddressListParams::Filter::Status::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end

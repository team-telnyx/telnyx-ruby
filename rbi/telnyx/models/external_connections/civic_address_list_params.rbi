# typed: strong

module Telnyx
  module Models
    module ExternalConnections
      class CivicAddressListParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::ExternalConnections::CivicAddressListParams,
              Telnyx::Internal::AnyHash
            )
          end

        # Filter parameter for civic addresses (deepObject style). Supports filtering by
        # country.
        sig do
          returns(
            T.nilable(
              Telnyx::ExternalConnections::CivicAddressListParams::Filter
            )
          )
        end
        attr_reader :filter

        sig do
          params(
            filter:
              Telnyx::ExternalConnections::CivicAddressListParams::Filter::OrHash
          ).void
        end
        attr_writer :filter

        sig do
          params(
            filter:
              Telnyx::ExternalConnections::CivicAddressListParams::Filter::OrHash,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Filter parameter for civic addresses (deepObject style). Supports filtering by
          # country.
          filter: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              filter:
                Telnyx::ExternalConnections::CivicAddressListParams::Filter,
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
                Telnyx::ExternalConnections::CivicAddressListParams::Filter,
                Telnyx::Internal::AnyHash
              )
            end

          # The country (or countries) to filter addresses by.
          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :country

          sig { params(country: T::Array[String]).void }
          attr_writer :country

          # Filter parameter for civic addresses (deepObject style). Supports filtering by
          # country.
          sig { params(country: T::Array[String]).returns(T.attached_class) }
          def self.new(
            # The country (or countries) to filter addresses by.
            country: nil
          )
          end

          sig { override.returns({ country: T::Array[String] }) }
          def to_hash
          end
        end
      end
    end
  end
end

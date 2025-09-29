# typed: strong

module Telnyx
  module Models
    module Addresses
      class ActionValidateParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Addresses::ActionValidateParams,
              Telnyx::Internal::AnyHash
            )
          end

        # The two-character (ISO 3166-1 alpha-2) country code of the address.
        sig { returns(String) }
        attr_accessor :country_code

        # The postal code of the address.
        sig { returns(String) }
        attr_accessor :postal_code

        # The primary street address information about the address.
        sig { returns(String) }
        attr_accessor :street_address

        # The locality of the address. For US addresses, this corresponds to the state of
        # the address.
        sig { returns(T.nilable(String)) }
        attr_reader :administrative_area

        sig { params(administrative_area: String).void }
        attr_writer :administrative_area

        # Additional street address information about the address such as, but not limited
        # to, unit number or apartment number.
        sig { returns(T.nilable(String)) }
        attr_reader :extended_address

        sig { params(extended_address: String).void }
        attr_writer :extended_address

        # The locality of the address. For US addresses, this corresponds to the city of
        # the address.
        sig { returns(T.nilable(String)) }
        attr_reader :locality

        sig { params(locality: String).void }
        attr_writer :locality

        sig do
          params(
            country_code: String,
            postal_code: String,
            street_address: String,
            administrative_area: String,
            extended_address: String,
            locality: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # The two-character (ISO 3166-1 alpha-2) country code of the address.
          country_code:,
          # The postal code of the address.
          postal_code:,
          # The primary street address information about the address.
          street_address:,
          # The locality of the address. For US addresses, this corresponds to the state of
          # the address.
          administrative_area: nil,
          # Additional street address information about the address such as, but not limited
          # to, unit number or apartment number.
          extended_address: nil,
          # The locality of the address. For US addresses, this corresponds to the city of
          # the address.
          locality: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              country_code: String,
              postal_code: String,
              street_address: String,
              administrative_area: String,
              extended_address: String,
              locality: String,
              request_options: Telnyx::RequestOptions
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end

# typed: strong

module Telnyx
  module Models
    class UserAddressCreateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::UserAddressCreateParams, Telnyx::Internal::AnyHash)
        end

      # The business name associated with the user address.
      sig { returns(String) }
      attr_accessor :business_name

      # The two-character (ISO 3166-1 alpha-2) country code of the user address.
      sig { returns(String) }
      attr_accessor :country_code

      # The first name associated with the user address.
      sig { returns(String) }
      attr_accessor :first_name

      # The last name associated with the user address.
      sig { returns(String) }
      attr_accessor :last_name

      # The locality of the user address. For US addresses, this corresponds to the city
      # of the address.
      sig { returns(String) }
      attr_accessor :locality

      # The primary street address information about the user address.
      sig { returns(String) }
      attr_accessor :street_address

      # The locality of the user address. For US addresses, this corresponds to the
      # state of the address.
      sig { returns(T.nilable(String)) }
      attr_reader :administrative_area

      sig { params(administrative_area: String).void }
      attr_writer :administrative_area

      # The borough of the user address. This field is not used for addresses in the US
      # but is used for some international addresses.
      sig { returns(T.nilable(String)) }
      attr_reader :borough

      sig { params(borough: String).void }
      attr_writer :borough

      # A customer reference string for customer look ups.
      sig { returns(T.nilable(String)) }
      attr_reader :customer_reference

      sig { params(customer_reference: String).void }
      attr_writer :customer_reference

      # Additional street address information about the user address such as, but not
      # limited to, unit number or apartment number.
      sig { returns(T.nilable(String)) }
      attr_reader :extended_address

      sig { params(extended_address: String).void }
      attr_writer :extended_address

      # The neighborhood of the user address. This field is not used for addresses in
      # the US but is used for some international addresses.
      sig { returns(T.nilable(String)) }
      attr_reader :neighborhood

      sig { params(neighborhood: String).void }
      attr_writer :neighborhood

      # The phone number associated with the user address.
      sig { returns(T.nilable(String)) }
      attr_reader :phone_number

      sig { params(phone_number: String).void }
      attr_writer :phone_number

      # The postal code of the user address.
      sig { returns(T.nilable(String)) }
      attr_reader :postal_code

      sig { params(postal_code: String).void }
      attr_writer :postal_code

      # An optional boolean value specifying if verification of the address should be
      # skipped or not. UserAddresses are generally used for shipping addresses, and
      # failure to validate your shipping address will likely result in a failure to
      # deliver SIM cards or other items ordered from Telnyx. Do not use this parameter
      # unless you are sure that the address is correct even though it cannot be
      # validated. If this is set to any value other than true, verification of the
      # address will be attempted, and the user address will not be allowed if
      # verification fails. If verification fails but suggested values are available
      # that might make the address correct, they will be present in the response as
      # well. If this value is set to true, then the verification will not be attempted.
      # Defaults to false (verification will be performed).
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :skip_address_verification

      sig { params(skip_address_verification: T::Boolean).void }
      attr_writer :skip_address_verification

      sig do
        params(
          business_name: String,
          country_code: String,
          first_name: String,
          last_name: String,
          locality: String,
          street_address: String,
          administrative_area: String,
          borough: String,
          customer_reference: String,
          extended_address: String,
          neighborhood: String,
          phone_number: String,
          postal_code: String,
          skip_address_verification: T::Boolean,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The business name associated with the user address.
        business_name:,
        # The two-character (ISO 3166-1 alpha-2) country code of the user address.
        country_code:,
        # The first name associated with the user address.
        first_name:,
        # The last name associated with the user address.
        last_name:,
        # The locality of the user address. For US addresses, this corresponds to the city
        # of the address.
        locality:,
        # The primary street address information about the user address.
        street_address:,
        # The locality of the user address. For US addresses, this corresponds to the
        # state of the address.
        administrative_area: nil,
        # The borough of the user address. This field is not used for addresses in the US
        # but is used for some international addresses.
        borough: nil,
        # A customer reference string for customer look ups.
        customer_reference: nil,
        # Additional street address information about the user address such as, but not
        # limited to, unit number or apartment number.
        extended_address: nil,
        # The neighborhood of the user address. This field is not used for addresses in
        # the US but is used for some international addresses.
        neighborhood: nil,
        # The phone number associated with the user address.
        phone_number: nil,
        # The postal code of the user address.
        postal_code: nil,
        # An optional boolean value specifying if verification of the address should be
        # skipped or not. UserAddresses are generally used for shipping addresses, and
        # failure to validate your shipping address will likely result in a failure to
        # deliver SIM cards or other items ordered from Telnyx. Do not use this parameter
        # unless you are sure that the address is correct even though it cannot be
        # validated. If this is set to any value other than true, verification of the
        # address will be attempted, and the user address will not be allowed if
        # verification fails. If verification fails but suggested values are available
        # that might make the address correct, they will be present in the response as
        # well. If this value is set to true, then the verification will not be attempted.
        # Defaults to false (verification will be performed).
        skip_address_verification: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            business_name: String,
            country_code: String,
            first_name: String,
            last_name: String,
            locality: String,
            street_address: String,
            administrative_area: String,
            borough: String,
            customer_reference: String,
            extended_address: String,
            neighborhood: String,
            phone_number: String,
            postal_code: String,
            skip_address_verification: T::Boolean,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end

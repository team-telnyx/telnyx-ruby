# typed: strong

module Telnyx
  module Models
    class AddressCreateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::AddressCreateParams, Telnyx::Internal::AnyHash)
        end

      # The business name associated with the address. An address must have either a
      # first last name or a business name.
      sig { returns(String) }
      attr_accessor :business_name

      # The two-character (ISO 3166-1 alpha-2) country code of the address.
      sig { returns(String) }
      attr_accessor :country_code

      # The first name associated with the address. An address must have either a first
      # last name or a business name.
      sig { returns(String) }
      attr_accessor :first_name

      # The last name associated with the address. An address must have either a first
      # last name or a business name.
      sig { returns(String) }
      attr_accessor :last_name

      # The locality of the address. For US addresses, this corresponds to the city of
      # the address.
      sig { returns(String) }
      attr_accessor :locality

      # The primary street address information about the address.
      sig { returns(String) }
      attr_accessor :street_address

      # Indicates whether or not the address should be considered part of your list of
      # addresses that appear for regular use.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :address_book

      sig { params(address_book: T::Boolean).void }
      attr_writer :address_book

      # The locality of the address. For US addresses, this corresponds to the state of
      # the address.
      sig { returns(T.nilable(String)) }
      attr_reader :administrative_area

      sig { params(administrative_area: String).void }
      attr_writer :administrative_area

      # The borough of the address. This field is not used for addresses in the US but
      # is used for some international addresses.
      sig { returns(T.nilable(String)) }
      attr_reader :borough

      sig { params(borough: String).void }
      attr_writer :borough

      # A customer reference string for customer look ups.
      sig { returns(T.nilable(String)) }
      attr_reader :customer_reference

      sig { params(customer_reference: String).void }
      attr_writer :customer_reference

      # Additional street address information about the address such as, but not limited
      # to, unit number or apartment number.
      sig { returns(T.nilable(String)) }
      attr_reader :extended_address

      sig { params(extended_address: String).void }
      attr_writer :extended_address

      # The neighborhood of the address. This field is not used for addresses in the US
      # but is used for some international addresses.
      sig { returns(T.nilable(String)) }
      attr_reader :neighborhood

      sig { params(neighborhood: String).void }
      attr_writer :neighborhood

      # The phone number associated with the address.
      sig { returns(T.nilable(String)) }
      attr_reader :phone_number

      sig { params(phone_number: String).void }
      attr_writer :phone_number

      # The postal code of the address.
      sig { returns(T.nilable(String)) }
      attr_reader :postal_code

      sig { params(postal_code: String).void }
      attr_writer :postal_code

      # Indicates whether or not the address should be validated for emergency use upon
      # creation or not. This should be left with the default value of `true` unless you
      # have used the `/addresses/actions/validate` endpoint to validate the address
      # separately prior to creation. If an address is not validated for emergency use
      # upon creation and it is not valid, it will not be able to be used for emergency
      # services.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :validate_address

      sig { params(validate_address: T::Boolean).void }
      attr_writer :validate_address

      sig do
        params(
          business_name: String,
          country_code: String,
          first_name: String,
          last_name: String,
          locality: String,
          street_address: String,
          address_book: T::Boolean,
          administrative_area: String,
          borough: String,
          customer_reference: String,
          extended_address: String,
          neighborhood: String,
          phone_number: String,
          postal_code: String,
          validate_address: T::Boolean,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The business name associated with the address. An address must have either a
        # first last name or a business name.
        business_name:,
        # The two-character (ISO 3166-1 alpha-2) country code of the address.
        country_code:,
        # The first name associated with the address. An address must have either a first
        # last name or a business name.
        first_name:,
        # The last name associated with the address. An address must have either a first
        # last name or a business name.
        last_name:,
        # The locality of the address. For US addresses, this corresponds to the city of
        # the address.
        locality:,
        # The primary street address information about the address.
        street_address:,
        # Indicates whether or not the address should be considered part of your list of
        # addresses that appear for regular use.
        address_book: nil,
        # The locality of the address. For US addresses, this corresponds to the state of
        # the address.
        administrative_area: nil,
        # The borough of the address. This field is not used for addresses in the US but
        # is used for some international addresses.
        borough: nil,
        # A customer reference string for customer look ups.
        customer_reference: nil,
        # Additional street address information about the address such as, but not limited
        # to, unit number or apartment number.
        extended_address: nil,
        # The neighborhood of the address. This field is not used for addresses in the US
        # but is used for some international addresses.
        neighborhood: nil,
        # The phone number associated with the address.
        phone_number: nil,
        # The postal code of the address.
        postal_code: nil,
        # Indicates whether or not the address should be validated for emergency use upon
        # creation or not. This should be left with the default value of `true` unless you
        # have used the `/addresses/actions/validate` endpoint to validate the address
        # separately prior to creation. If an address is not validated for emergency use
        # upon creation and it is not valid, it will not be able to be used for emergency
        # services.
        validate_address: nil,
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
            address_book: T::Boolean,
            administrative_area: String,
            borough: String,
            customer_reference: String,
            extended_address: String,
            neighborhood: String,
            phone_number: String,
            postal_code: String,
            validate_address: T::Boolean,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end

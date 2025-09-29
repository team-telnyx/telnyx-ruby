# typed: strong

module Telnyx
  module Models
    class Address < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Telnyx::Address, Telnyx::Internal::AnyHash) }

      # Uniquely identifies the address.
      sig { returns(T.nilable(String)) }
      attr_reader :id

      sig { params(id: String).void }
      attr_writer :id

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

      # The business name associated with the address. An address must have either a
      # first last name or a business name.
      sig { returns(T.nilable(String)) }
      attr_reader :business_name

      sig { params(business_name: String).void }
      attr_writer :business_name

      # The two-character (ISO 3166-1 alpha-2) country code of the address.
      sig { returns(T.nilable(String)) }
      attr_reader :country_code

      sig { params(country_code: String).void }
      attr_writer :country_code

      # ISO 8601 formatted date indicating when the resource was created.
      sig { returns(T.nilable(String)) }
      attr_reader :created_at

      sig { params(created_at: String).void }
      attr_writer :created_at

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

      # The first name associated with the address. An address must have either a first
      # last name or a business name.
      sig { returns(T.nilable(String)) }
      attr_reader :first_name

      sig { params(first_name: String).void }
      attr_writer :first_name

      # The last name associated with the address. An address must have either a first
      # last name or a business name.
      sig { returns(T.nilable(String)) }
      attr_reader :last_name

      sig { params(last_name: String).void }
      attr_writer :last_name

      # The locality of the address. For US addresses, this corresponds to the city of
      # the address.
      sig { returns(T.nilable(String)) }
      attr_reader :locality

      sig { params(locality: String).void }
      attr_writer :locality

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

      # Identifies the type of the resource.
      sig { returns(T.nilable(String)) }
      attr_reader :record_type

      sig { params(record_type: String).void }
      attr_writer :record_type

      # The primary street address information about the address.
      sig { returns(T.nilable(String)) }
      attr_reader :street_address

      sig { params(street_address: String).void }
      attr_writer :street_address

      # ISO 8601 formatted date indicating when the resource was updated.
      sig { returns(T.nilable(String)) }
      attr_reader :updated_at

      sig { params(updated_at: String).void }
      attr_writer :updated_at

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
          id: String,
          address_book: T::Boolean,
          administrative_area: String,
          borough: String,
          business_name: String,
          country_code: String,
          created_at: String,
          customer_reference: String,
          extended_address: String,
          first_name: String,
          last_name: String,
          locality: String,
          neighborhood: String,
          phone_number: String,
          postal_code: String,
          record_type: String,
          street_address: String,
          updated_at: String,
          validate_address: T::Boolean
        ).returns(T.attached_class)
      end
      def self.new(
        # Uniquely identifies the address.
        id: nil,
        # Indicates whether or not the address should be considered part of your list of
        # addresses that appear for regular use.
        address_book: nil,
        # The locality of the address. For US addresses, this corresponds to the state of
        # the address.
        administrative_area: nil,
        # The borough of the address. This field is not used for addresses in the US but
        # is used for some international addresses.
        borough: nil,
        # The business name associated with the address. An address must have either a
        # first last name or a business name.
        business_name: nil,
        # The two-character (ISO 3166-1 alpha-2) country code of the address.
        country_code: nil,
        # ISO 8601 formatted date indicating when the resource was created.
        created_at: nil,
        # A customer reference string for customer look ups.
        customer_reference: nil,
        # Additional street address information about the address such as, but not limited
        # to, unit number or apartment number.
        extended_address: nil,
        # The first name associated with the address. An address must have either a first
        # last name or a business name.
        first_name: nil,
        # The last name associated with the address. An address must have either a first
        # last name or a business name.
        last_name: nil,
        # The locality of the address. For US addresses, this corresponds to the city of
        # the address.
        locality: nil,
        # The neighborhood of the address. This field is not used for addresses in the US
        # but is used for some international addresses.
        neighborhood: nil,
        # The phone number associated with the address.
        phone_number: nil,
        # The postal code of the address.
        postal_code: nil,
        # Identifies the type of the resource.
        record_type: nil,
        # The primary street address information about the address.
        street_address: nil,
        # ISO 8601 formatted date indicating when the resource was updated.
        updated_at: nil,
        # Indicates whether or not the address should be validated for emergency use upon
        # creation or not. This should be left with the default value of `true` unless you
        # have used the `/addresses/actions/validate` endpoint to validate the address
        # separately prior to creation. If an address is not validated for emergency use
        # upon creation and it is not valid, it will not be able to be used for emergency
        # services.
        validate_address: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            address_book: T::Boolean,
            administrative_area: String,
            borough: String,
            business_name: String,
            country_code: String,
            created_at: String,
            customer_reference: String,
            extended_address: String,
            first_name: String,
            last_name: String,
            locality: String,
            neighborhood: String,
            phone_number: String,
            postal_code: String,
            record_type: String,
            street_address: String,
            updated_at: String,
            validate_address: T::Boolean
          }
        )
      end
      def to_hash
      end
    end
  end
end

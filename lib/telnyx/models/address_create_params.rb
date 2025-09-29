# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::Addresses#create
    class AddressCreateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute business_name
      #   The business name associated with the address. An address must have either a
      #   first last name or a business name.
      #
      #   @return [String]
      required :business_name, String

      # @!attribute country_code
      #   The two-character (ISO 3166-1 alpha-2) country code of the address.
      #
      #   @return [String]
      required :country_code, String

      # @!attribute first_name
      #   The first name associated with the address. An address must have either a first
      #   last name or a business name.
      #
      #   @return [String]
      required :first_name, String

      # @!attribute last_name
      #   The last name associated with the address. An address must have either a first
      #   last name or a business name.
      #
      #   @return [String]
      required :last_name, String

      # @!attribute locality
      #   The locality of the address. For US addresses, this corresponds to the city of
      #   the address.
      #
      #   @return [String]
      required :locality, String

      # @!attribute street_address
      #   The primary street address information about the address.
      #
      #   @return [String]
      required :street_address, String

      # @!attribute address_book
      #   Indicates whether or not the address should be considered part of your list of
      #   addresses that appear for regular use.
      #
      #   @return [Boolean, nil]
      optional :address_book, Telnyx::Internal::Type::Boolean

      # @!attribute administrative_area
      #   The locality of the address. For US addresses, this corresponds to the state of
      #   the address.
      #
      #   @return [String, nil]
      optional :administrative_area, String

      # @!attribute borough
      #   The borough of the address. This field is not used for addresses in the US but
      #   is used for some international addresses.
      #
      #   @return [String, nil]
      optional :borough, String

      # @!attribute customer_reference
      #   A customer reference string for customer look ups.
      #
      #   @return [String, nil]
      optional :customer_reference, String

      # @!attribute extended_address
      #   Additional street address information about the address such as, but not limited
      #   to, unit number or apartment number.
      #
      #   @return [String, nil]
      optional :extended_address, String

      # @!attribute neighborhood
      #   The neighborhood of the address. This field is not used for addresses in the US
      #   but is used for some international addresses.
      #
      #   @return [String, nil]
      optional :neighborhood, String

      # @!attribute phone_number
      #   The phone number associated with the address.
      #
      #   @return [String, nil]
      optional :phone_number, String

      # @!attribute postal_code
      #   The postal code of the address.
      #
      #   @return [String, nil]
      optional :postal_code, String

      # @!attribute validate_address
      #   Indicates whether or not the address should be validated for emergency use upon
      #   creation or not. This should be left with the default value of `true` unless you
      #   have used the `/addresses/actions/validate` endpoint to validate the address
      #   separately prior to creation. If an address is not validated for emergency use
      #   upon creation and it is not valid, it will not be able to be used for emergency
      #   services.
      #
      #   @return [Boolean, nil]
      optional :validate_address, Telnyx::Internal::Type::Boolean

      # @!method initialize(business_name:, country_code:, first_name:, last_name:, locality:, street_address:, address_book: nil, administrative_area: nil, borough: nil, customer_reference: nil, extended_address: nil, neighborhood: nil, phone_number: nil, postal_code: nil, validate_address: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::AddressCreateParams} for more details.
      #
      #   @param business_name [String] The business name associated with the address. An address must have either a fir
      #
      #   @param country_code [String] The two-character (ISO 3166-1 alpha-2) country code of the address.
      #
      #   @param first_name [String] The first name associated with the address. An address must have either a first
      #
      #   @param last_name [String] The last name associated with the address. An address must have either a first l
      #
      #   @param locality [String] The locality of the address. For US addresses, this corresponds to the city of t
      #
      #   @param street_address [String] The primary street address information about the address.
      #
      #   @param address_book [Boolean] Indicates whether or not the address should be considered part of your list of a
      #
      #   @param administrative_area [String] The locality of the address. For US addresses, this corresponds to the state of
      #
      #   @param borough [String] The borough of the address. This field is not used for addresses in the US but i
      #
      #   @param customer_reference [String] A customer reference string for customer look ups.
      #
      #   @param extended_address [String] Additional street address information about the address such as, but not limited
      #
      #   @param neighborhood [String] The neighborhood of the address. This field is not used for addresses in the US
      #
      #   @param phone_number [String] The phone number associated with the address.
      #
      #   @param postal_code [String] The postal code of the address.
      #
      #   @param validate_address [Boolean] Indicates whether or not the address should be validated for emergency use upon
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end

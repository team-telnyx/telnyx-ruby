# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::UserAddresses#create
    class UserAddressCreateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute business_name
      #   The business name associated with the user address.
      #
      #   @return [String]
      required :business_name, String

      # @!attribute country_code
      #   The two-character (ISO 3166-1 alpha-2) country code of the user address.
      #
      #   @return [String]
      required :country_code, String

      # @!attribute first_name
      #   The first name associated with the user address.
      #
      #   @return [String]
      required :first_name, String

      # @!attribute last_name
      #   The last name associated with the user address.
      #
      #   @return [String]
      required :last_name, String

      # @!attribute locality
      #   The locality of the user address. For US addresses, this corresponds to the city
      #   of the address.
      #
      #   @return [String]
      required :locality, String

      # @!attribute street_address
      #   The primary street address information about the user address.
      #
      #   @return [String]
      required :street_address, String

      # @!attribute administrative_area
      #   The locality of the user address. For US addresses, this corresponds to the
      #   state of the address.
      #
      #   @return [String, nil]
      optional :administrative_area, String

      # @!attribute borough
      #   The borough of the user address. This field is not used for addresses in the US
      #   but is used for some international addresses.
      #
      #   @return [String, nil]
      optional :borough, String

      # @!attribute customer_reference
      #   A customer reference string for customer look ups.
      #
      #   @return [String, nil]
      optional :customer_reference, String

      # @!attribute extended_address
      #   Additional street address information about the user address such as, but not
      #   limited to, unit number or apartment number.
      #
      #   @return [String, nil]
      optional :extended_address, String

      # @!attribute neighborhood
      #   The neighborhood of the user address. This field is not used for addresses in
      #   the US but is used for some international addresses.
      #
      #   @return [String, nil]
      optional :neighborhood, String

      # @!attribute phone_number
      #   The phone number associated with the user address.
      #
      #   @return [String, nil]
      optional :phone_number, String

      # @!attribute postal_code
      #   The postal code of the user address.
      #
      #   @return [String, nil]
      optional :postal_code, String

      # @!attribute skip_address_verification
      #   An optional boolean value specifying if verification of the address should be
      #   skipped or not. UserAddresses are generally used for shipping addresses, and
      #   failure to validate your shipping address will likely result in a failure to
      #   deliver SIM cards or other items ordered from Telnyx. Do not use this parameter
      #   unless you are sure that the address is correct even though it cannot be
      #   validated. If this is set to any value other than true, verification of the
      #   address will be attempted, and the user address will not be allowed if
      #   verification fails. If verification fails but suggested values are available
      #   that might make the address correct, they will be present in the response as
      #   well. If this value is set to true, then the verification will not be attempted.
      #   Defaults to false (verification will be performed).
      #
      #   @return [String, nil]
      optional :skip_address_verification, String

      # @!method initialize(business_name:, country_code:, first_name:, last_name:, locality:, street_address:, administrative_area: nil, borough: nil, customer_reference: nil, extended_address: nil, neighborhood: nil, phone_number: nil, postal_code: nil, skip_address_verification: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::UserAddressCreateParams} for more details.
      #
      #   @param business_name [String] The business name associated with the user address.
      #
      #   @param country_code [String] The two-character (ISO 3166-1 alpha-2) country code of the user address.
      #
      #   @param first_name [String] The first name associated with the user address.
      #
      #   @param last_name [String] The last name associated with the user address.
      #
      #   @param locality [String] The locality of the user address. For US addresses, this corresponds to the city
      #
      #   @param street_address [String] The primary street address information about the user address.
      #
      #   @param administrative_area [String] The locality of the user address. For US addresses, this corresponds to the stat
      #
      #   @param borough [String] The borough of the user address. This field is not used for addresses in the US
      #
      #   @param customer_reference [String] A customer reference string for customer look ups.
      #
      #   @param extended_address [String] Additional street address information about the user address such as, but not li
      #
      #   @param neighborhood [String] The neighborhood of the user address. This field is not used for addresses in th
      #
      #   @param phone_number [String] The phone number associated with the user address.
      #
      #   @param postal_code [String] The postal code of the user address.
      #
      #   @param skip_address_verification [String] An optional boolean value specifying if verification of the address should be sk
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end

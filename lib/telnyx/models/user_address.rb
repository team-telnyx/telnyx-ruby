# frozen_string_literal: true

module Telnyx
  module Models
    class UserAddress < Telnyx::Internal::Type::BaseModel
      # @!attribute id
      #   Uniquely identifies the user address.
      #
      #   @return [String, nil]
      optional :id, String

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

      # @!attribute business_name
      #   The business name associated with the user address.
      #
      #   @return [String, nil]
      optional :business_name, String

      # @!attribute country_code
      #   The two-character (ISO 3166-1 alpha-2) country code of the user address.
      #
      #   @return [String, nil]
      optional :country_code, String

      # @!attribute created_at
      #   ISO 8601 formatted date indicating when the resource was created.
      #
      #   @return [String, nil]
      optional :created_at, String

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

      # @!attribute first_name
      #   The first name associated with the user address.
      #
      #   @return [String, nil]
      optional :first_name, String

      # @!attribute last_name
      #   The last name associated with the user address.
      #
      #   @return [String, nil]
      optional :last_name, String

      # @!attribute locality
      #   The locality of the user address. For US addresses, this corresponds to the city
      #   of the address.
      #
      #   @return [String, nil]
      optional :locality, String

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

      # @!attribute record_type
      #   Identifies the type of the resource.
      #
      #   @return [String, nil]
      optional :record_type, String

      # @!attribute street_address
      #   The primary street address information about the user address.
      #
      #   @return [String, nil]
      optional :street_address, String

      # @!attribute updated_at
      #   ISO 8601 formatted date indicating when the resource was updated.
      #
      #   @return [String, nil]
      optional :updated_at, String

      # @!method initialize(id: nil, administrative_area: nil, borough: nil, business_name: nil, country_code: nil, created_at: nil, customer_reference: nil, extended_address: nil, first_name: nil, last_name: nil, locality: nil, neighborhood: nil, phone_number: nil, postal_code: nil, record_type: nil, street_address: nil, updated_at: nil)
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::UserAddress} for more details.
      #
      #   @param id [String] Uniquely identifies the user address.
      #
      #   @param administrative_area [String] The locality of the user address. For US addresses, this corresponds to the stat
      #
      #   @param borough [String] The borough of the user address. This field is not used for addresses in the US
      #
      #   @param business_name [String] The business name associated with the user address.
      #
      #   @param country_code [String] The two-character (ISO 3166-1 alpha-2) country code of the user address.
      #
      #   @param created_at [String] ISO 8601 formatted date indicating when the resource was created.
      #
      #   @param customer_reference [String] A customer reference string for customer look ups.
      #
      #   @param extended_address [String] Additional street address information about the user address such as, but not li
      #
      #   @param first_name [String] The first name associated with the user address.
      #
      #   @param last_name [String] The last name associated with the user address.
      #
      #   @param locality [String] The locality of the user address. For US addresses, this corresponds to the city
      #
      #   @param neighborhood [String] The neighborhood of the user address. This field is not used for addresses in th
      #
      #   @param phone_number [String] The phone number associated with the user address.
      #
      #   @param postal_code [String] The postal code of the user address.
      #
      #   @param record_type [String] Identifies the type of the resource.
      #
      #   @param street_address [String] The primary street address information about the user address.
      #
      #   @param updated_at [String] ISO 8601 formatted date indicating when the resource was updated.
    end
  end
end

# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::DynamicEmergencyAddresses#list
    class DynamicEmergencyAddress < Telnyx::Internal::Type::BaseModel
      # @!attribute administrative_area
      #
      #   @return [String]
      required :administrative_area, String

      # @!attribute country_code
      #
      #   @return [Symbol, Telnyx::Models::DynamicEmergencyAddress::CountryCode]
      required :country_code, enum: -> { Telnyx::DynamicEmergencyAddress::CountryCode }

      # @!attribute house_number
      #
      #   @return [String]
      required :house_number, String

      # @!attribute locality
      #
      #   @return [String]
      required :locality, String

      # @!attribute postal_code
      #
      #   @return [String]
      required :postal_code, String

      # @!attribute street_name
      #
      #   @return [String]
      required :street_name, String

      # @!attribute extended_address
      #
      #   @return [String, nil]
      optional :extended_address, String

      # @!attribute house_suffix
      #
      #   @return [String, nil]
      optional :house_suffix, String

      # @!attribute street_post_directional
      #
      #   @return [String, nil]
      optional :street_post_directional, String

      # @!attribute street_pre_directional
      #
      #   @return [String, nil]
      optional :street_pre_directional, String

      # @!attribute street_suffix
      #
      #   @return [String, nil]
      optional :street_suffix, String

      response_only do
        # @!attribute id
        #
        #   @return [String, nil]
        optional :id, String

        # @!attribute created_at
        #   ISO 8601 formatted date of when the resource was created
        #
        #   @return [String, nil]
        optional :created_at, String

        # @!attribute record_type
        #   Identifies the type of the resource.
        #
        #   @return [String, nil]
        optional :record_type, String

        # @!attribute sip_geolocation_id
        #   Unique location reference string to be used in SIP INVITE from / p-asserted
        #   headers.
        #
        #   @return [String, nil]
        optional :sip_geolocation_id, String

        # @!attribute status
        #   Status of dynamic emergency address
        #
        #   @return [Symbol, Telnyx::Models::DynamicEmergencyAddress::Status, nil]
        optional :status, enum: -> { Telnyx::DynamicEmergencyAddress::Status }

        # @!attribute updated_at
        #   ISO 8601 formatted date of when the resource was last updated
        #
        #   @return [String, nil]
        optional :updated_at, String
      end

      # @!method initialize(administrative_area:, country_code:, house_number:, locality:, postal_code:, street_name:, id: nil, created_at: nil, extended_address: nil, house_suffix: nil, record_type: nil, sip_geolocation_id: nil, status: nil, street_post_directional: nil, street_pre_directional: nil, street_suffix: nil, updated_at: nil)
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::DynamicEmergencyAddress} for more details.
      #
      #   @param administrative_area [String]
      #
      #   @param country_code [Symbol, Telnyx::Models::DynamicEmergencyAddress::CountryCode]
      #
      #   @param house_number [String]
      #
      #   @param locality [String]
      #
      #   @param postal_code [String]
      #
      #   @param street_name [String]
      #
      #   @param id [String]
      #
      #   @param created_at [String] ISO 8601 formatted date of when the resource was created
      #
      #   @param extended_address [String]
      #
      #   @param house_suffix [String]
      #
      #   @param record_type [String] Identifies the type of the resource.
      #
      #   @param sip_geolocation_id [String] Unique location reference string to be used in SIP INVITE from / p-asserted head
      #
      #   @param status [Symbol, Telnyx::Models::DynamicEmergencyAddress::Status] Status of dynamic emergency address
      #
      #   @param street_post_directional [String]
      #
      #   @param street_pre_directional [String]
      #
      #   @param street_suffix [String]
      #
      #   @param updated_at [String] ISO 8601 formatted date of when the resource was last updated

      # @see Telnyx::Models::DynamicEmergencyAddress#country_code
      module CountryCode
        extend Telnyx::Internal::Type::Enum

        US = :US
        CA = :CA
        PR = :PR

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Status of dynamic emergency address
      #
      # @see Telnyx::Models::DynamicEmergencyAddress#status
      module Status
        extend Telnyx::Internal::Type::Enum

        PENDING = :pending
        ACTIVATED = :activated
        REJECTED = :rejected

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end

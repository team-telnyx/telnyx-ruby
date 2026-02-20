# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::PhoneNumbers#update
    class PhoneNumberUpdateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute address_id
      #   Identifies the address associated with the phone number.
      #
      #   @return [String, nil]
      optional :address_id, String

      # @!attribute billing_group_id
      #   Identifies the billing group associated with the phone number.
      #
      #   @return [String, nil]
      optional :billing_group_id, String

      # @!attribute connection_id
      #   Identifies the connection associated with the phone number.
      #
      #   @return [String, nil]
      optional :connection_id, String

      # @!attribute customer_reference
      #   A customer reference string for customer look ups.
      #
      #   @return [String, nil]
      optional :customer_reference, String

      # @!attribute external_pin
      #   If someone attempts to port your phone number away from Telnyx and your phone
      #   number has an external PIN set, we will attempt to verify that you provided the
      #   correct external PIN to the winning carrier. Note that not all carriers
      #   cooperate with this security mechanism.
      #
      #   @return [String, nil]
      optional :external_pin, String

      # @!attribute hd_voice_enabled
      #   Indicates whether HD voice is enabled for this number.
      #
      #   @return [Boolean, nil]
      optional :hd_voice_enabled, Telnyx::Internal::Type::Boolean

      # @!attribute tags
      #   A list of user-assigned tags to help organize phone numbers.
      #
      #   @return [Array<String>, nil]
      optional :tags, Telnyx::Internal::Type::ArrayOf[String]

      # @!method initialize(address_id: nil, billing_group_id: nil, connection_id: nil, customer_reference: nil, external_pin: nil, hd_voice_enabled: nil, tags: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::PhoneNumberUpdateParams} for more details.
      #
      #   @param address_id [String] Identifies the address associated with the phone number.
      #
      #   @param billing_group_id [String] Identifies the billing group associated with the phone number.
      #
      #   @param connection_id [String] Identifies the connection associated with the phone number.
      #
      #   @param customer_reference [String] A customer reference string for customer look ups.
      #
      #   @param external_pin [String] If someone attempts to port your phone number away from Telnyx and your phone nu
      #
      #   @param hd_voice_enabled [Boolean] Indicates whether HD voice is enabled for this number.
      #
      #   @param tags [Array<String>] A list of user-assigned tags to help organize phone numbers.
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end

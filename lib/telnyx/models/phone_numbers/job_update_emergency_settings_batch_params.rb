# frozen_string_literal: true

module Telnyx
  module Models
    module PhoneNumbers
      # @see Telnyx::Resources::PhoneNumbers::Jobs#update_emergency_settings_batch
      class JobUpdateEmergencySettingsBatchParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute emergency_enabled
        #   Indicates whether to enable or disable emergency services on the numbers.
        #
        #   @return [Boolean]
        required :emergency_enabled, Telnyx::Internal::Type::Boolean

        # @!attribute phone_numbers
        #
        #   @return [Array<String>]
        required :phone_numbers, Telnyx::Internal::Type::ArrayOf[String]

        # @!attribute emergency_address_id
        #   Identifies the address to be used with emergency services. Required if
        #   emergency_enabled is true, must be null or omitted if emergency_enabled is
        #   false.
        #
        #   @return [String, nil]
        optional :emergency_address_id, String, nil?: true

        # @!method initialize(emergency_enabled:, phone_numbers:, emergency_address_id: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::PhoneNumbers::JobUpdateEmergencySettingsBatchParams} for more
        #   details.
        #
        #   @param emergency_enabled [Boolean] Indicates whether to enable or disable emergency services on the numbers.
        #
        #   @param phone_numbers [Array<String>]
        #
        #   @param emergency_address_id [String, nil] Identifies the address to be used with emergency services. Required if emergency
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end

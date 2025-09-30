# frozen_string_literal: true

module Telnyx
  module Models
    module PhoneNumbers
      # @see Telnyx::Resources::PhoneNumbers::Actions#enable_emergency
      class ActionEnableEmergencyParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute emergency_address_id
        #   Identifies the address to be used with emergency services.
        #
        #   @return [String]
        required :emergency_address_id, String

        # @!attribute emergency_enabled
        #   Indicates whether to enable emergency services on this number.
        #
        #   @return [Boolean]
        required :emergency_enabled, Telnyx::Internal::Type::Boolean

        # @!method initialize(emergency_address_id:, emergency_enabled:, request_options: {})
        #   @param emergency_address_id [String] Identifies the address to be used with emergency services.
        #
        #   @param emergency_enabled [Boolean] Indicates whether to enable emergency services on this number.
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end

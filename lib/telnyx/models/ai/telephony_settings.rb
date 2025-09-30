# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      class TelephonySettings < Telnyx::Internal::Type::BaseModel
        # @!attribute default_texml_app_id
        #   Default Texml App used for voice calls with your assistant. This will be created
        #   automatically on assistant creation.
        #
        #   @return [String, nil]
        optional :default_texml_app_id, String

        # @!attribute supports_unauthenticated_web_calls
        #   When enabled, allows users to interact with your AI assistant directly from your
        #   website without requiring authentication. This is required for FE widgets that
        #   work with assistants that have telephony enabled.
        #
        #   @return [Boolean, nil]
        optional :supports_unauthenticated_web_calls, Telnyx::Internal::Type::Boolean

        # @!method initialize(default_texml_app_id: nil, supports_unauthenticated_web_calls: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::AI::TelephonySettings} for more details.
        #
        #   @param default_texml_app_id [String] Default Texml App used for voice calls with your assistant. This will be created
        #
        #   @param supports_unauthenticated_web_calls [Boolean] When enabled, allows users to interact with your AI assistant directly from your
      end
    end
  end
end

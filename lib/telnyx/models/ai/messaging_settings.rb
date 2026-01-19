# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      class MessagingSettings < Telnyx::Internal::Type::BaseModel
        # @!attribute conversation_inactivity_minutes
        #   If more than this many minutes have passed since the last message, the assistant
        #   will start a new conversation instead of continuing the existing one.
        #
        #   @return [Integer, nil]
        optional :conversation_inactivity_minutes, Integer

        # @!attribute default_messaging_profile_id
        #   Default Messaging Profile used for messaging exchanges with your assistant. This
        #   will be created automatically on assistant creation.
        #
        #   @return [String, nil]
        optional :default_messaging_profile_id, String

        # @!attribute delivery_status_webhook_url
        #   The URL where webhooks related to delivery statused for assistant messages will
        #   be sent.
        #
        #   @return [String, nil]
        optional :delivery_status_webhook_url, String

        # @!method initialize(conversation_inactivity_minutes: nil, default_messaging_profile_id: nil, delivery_status_webhook_url: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::AI::MessagingSettings} for more details.
        #
        #   @param conversation_inactivity_minutes [Integer] If more than this many minutes have passed since the last message, the assistant
        #
        #   @param default_messaging_profile_id [String] Default Messaging Profile used for messaging exchanges with your assistant. This
        #
        #   @param delivery_status_webhook_url [String] The URL where webhooks related to delivery statused for assistant messages will
      end
    end
  end
end

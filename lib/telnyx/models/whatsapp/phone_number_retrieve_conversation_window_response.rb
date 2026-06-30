# frozen_string_literal: true

module Telnyx
  module Models
    module Whatsapp
      # @see Telnyx::Resources::Whatsapp::PhoneNumbers#retrieve_conversation_window
      class PhoneNumberRetrieveConversationWindowResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Telnyx::Models::Whatsapp::PhoneNumberRetrieveConversationWindowResponse::Data, nil]
        optional :data, -> { Telnyx::Models::Whatsapp::PhoneNumberRetrieveConversationWindowResponse::Data }

        # @!method initialize(data: nil)
        #   @param data [Telnyx::Models::Whatsapp::PhoneNumberRetrieveConversationWindowResponse::Data]

        # @see Telnyx::Models::Whatsapp::PhoneNumberRetrieveConversationWindowResponse#data
        class Data < Telnyx::Internal::Type::BaseModel
          # @!attribute last_user_message_at
          #   Timestamp of the last inbound message that opened the window
          #
          #   @return [Time, nil]
          optional :last_user_message_at, Time

          # @!attribute window_active
          #   Whether the 24-hour conversation window is currently open
          #
          #   @return [Boolean, nil]
          optional :window_active, Telnyx::Internal::Type::Boolean

          # @!attribute window_expires_at
          #   When the window closes. Null if no active window.
          #
          #   @return [Time, nil]
          optional :window_expires_at, Time

          # @!attribute window_type
          #   Window type. Currently always 24h when present.
          #
          #   @return [String, nil]
          optional :window_type, String

          # @!method initialize(last_user_message_at: nil, window_active: nil, window_expires_at: nil, window_type: nil)
          #   @param last_user_message_at [Time] Timestamp of the last inbound message that opened the window
          #
          #   @param window_active [Boolean] Whether the 24-hour conversation window is currently open
          #
          #   @param window_expires_at [Time] When the window closes. Null if no active window.
          #
          #   @param window_type [String] Window type. Currently always 24h when present.
        end
      end
    end
  end
end

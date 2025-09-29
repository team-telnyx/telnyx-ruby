# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      module Assistants
        module TelnyxConversationChannel
          extend Telnyx::Internal::Type::Enum

          PHONE_CALL = :phone_call
          WEB_CALL = :web_call
          SMS_CHAT = :sms_chat
          WEB_CHAT = :web_chat

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end

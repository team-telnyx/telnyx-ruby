# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      module Assistants
        module ConversationChannelType
          extend Telnyx::Internal::Type::Enum

          PHONE_CALL = :phone_call
          SMS_CHAT = :sms_chat

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end

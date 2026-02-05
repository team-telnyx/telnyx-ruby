# frozen_string_literal: true

module Telnyx
  module Models
    class CallConversationEndedWebhookEvent < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::CallConversationEnded, nil]
      optional :data, -> { Telnyx::CallConversationEnded }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::CallConversationEnded]
    end
  end
end

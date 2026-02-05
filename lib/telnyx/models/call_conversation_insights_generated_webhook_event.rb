# frozen_string_literal: true

module Telnyx
  module Models
    class CallConversationInsightsGeneratedWebhookEvent < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::CallConversationInsightsGenerated, nil]
      optional :data, -> { Telnyx::CallConversationInsightsGenerated }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::CallConversationInsightsGenerated]
    end
  end
end

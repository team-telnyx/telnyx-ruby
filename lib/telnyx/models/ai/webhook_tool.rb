# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      class WebhookTool < Telnyx::Internal::Type::BaseModel
        # @!attribute type
        #
        #   @return [Symbol, Telnyx::Models::AI::WebhookTool::Type]
        required :type, enum: -> { Telnyx::AI::WebhookTool::Type }

        # @!attribute webhook
        #
        #   @return [Telnyx::Models::AI::InferenceEmbeddingWebhookToolParams]
        required :webhook, -> { Telnyx::AI::InferenceEmbeddingWebhookToolParams }

        # @!method initialize(type:, webhook:)
        #   @param type [Symbol, Telnyx::Models::AI::WebhookTool::Type]
        #   @param webhook [Telnyx::Models::AI::InferenceEmbeddingWebhookToolParams]

        # @see Telnyx::Models::AI::WebhookTool#type
        module Type
          extend Telnyx::Internal::Type::Enum

          WEBHOOK = :webhook

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end

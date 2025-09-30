# typed: strong

module Telnyx
  module Models
    module AI
      class WebhookTool < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Telnyx::AI::WebhookTool, Telnyx::Internal::AnyHash)
          end

        sig { returns(Telnyx::AI::WebhookTool::Type::OrSymbol) }
        attr_accessor :type

        sig { returns(Telnyx::AI::InferenceEmbeddingWebhookToolParams) }
        attr_reader :webhook

        sig do
          params(
            webhook: Telnyx::AI::InferenceEmbeddingWebhookToolParams::OrHash
          ).void
        end
        attr_writer :webhook

        sig do
          params(
            type: Telnyx::AI::WebhookTool::Type::OrSymbol,
            webhook: Telnyx::AI::InferenceEmbeddingWebhookToolParams::OrHash
          ).returns(T.attached_class)
        end
        def self.new(type:, webhook:)
        end

        sig do
          override.returns(
            {
              type: Telnyx::AI::WebhookTool::Type::OrSymbol,
              webhook: Telnyx::AI::InferenceEmbeddingWebhookToolParams
            }
          )
        end
        def to_hash
        end

        module Type
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Telnyx::AI::WebhookTool::Type) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          WEBHOOK = T.let(:webhook, Telnyx::AI::WebhookTool::Type::TaggedSymbol)

          sig do
            override.returns(
              T::Array[Telnyx::AI::WebhookTool::Type::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end

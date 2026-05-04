# typed: strong

module Telnyx
  module Models
    module AI
      class PostConversationSettings < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::AI::PostConversationSettings,
              Telnyx::Internal::AnyHash
            )
          end

        # Whether post-conversation processing is enabled. When true, the assistant will
        # be invoked after the conversation ends to perform any final tool calls. Defaults
        # to false.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :enabled

        sig { params(enabled: T::Boolean).void }
        attr_writer :enabled

        # Configuration for post-conversation processing. When enabled, the assistant
        # receives one additional LLM turn after the conversation ends, allowing it to
        # execute tool calls such as logging to a CRM or sending a summary. The assistant
        # can execute multiple parallel or sequential tools during this phase.
        # Telephony-control tools (e.g. hangup, transfer) are unavailable
        # post-conversation. Beta feature.
        sig { params(enabled: T::Boolean).returns(T.attached_class) }
        def self.new(
          # Whether post-conversation processing is enabled. When true, the assistant will
          # be invoked after the conversation ends to perform any final tool calls. Defaults
          # to false.
          enabled: nil
        )
        end

        sig { override.returns({ enabled: T::Boolean }) }
        def to_hash
        end
      end
    end
  end
end

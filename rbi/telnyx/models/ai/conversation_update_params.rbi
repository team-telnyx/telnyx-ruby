# typed: strong

module Telnyx
  module Models
    module AI
      class ConversationUpdateParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::AI::ConversationUpdateParams,
              Telnyx::Internal::AnyHash
            )
          end

        # Metadata associated with the conversation. Set `ai_disabled` to `true` to stop
        # AI from responding to messages (e.g., when a human agent takes over). Set to
        # `false` to re-enable AI responses.
        sig { returns(T.nilable(T::Hash[Symbol, String])) }
        attr_reader :metadata

        sig { params(metadata: T::Hash[Symbol, String]).void }
        attr_writer :metadata

        sig do
          params(
            metadata: T::Hash[Symbol, String],
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Metadata associated with the conversation. Set `ai_disabled` to `true` to stop
          # AI from responding to messages (e.g., when a human agent takes over). Set to
          # `false` to re-enable AI responses.
          metadata: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              metadata: T::Hash[Symbol, String],
              request_options: Telnyx::RequestOptions
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end

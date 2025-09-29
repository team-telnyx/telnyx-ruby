# typed: strong

module Telnyx
  module Models
    module AI
      class AssistantChatParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(Telnyx::AI::AssistantChatParams, Telnyx::Internal::AnyHash)
          end

        # The message content sent by the client to the assistant
        sig { returns(String) }
        attr_accessor :content

        # A unique identifier for the conversation thread, used to maintain context
        sig { returns(String) }
        attr_accessor :conversation_id

        # The optional display name of the user sending the message
        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

        sig do
          params(
            content: String,
            conversation_id: String,
            name: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # The message content sent by the client to the assistant
          content:,
          # A unique identifier for the conversation thread, used to maintain context
          conversation_id:,
          # The optional display name of the user sending the message
          name: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              content: String,
              conversation_id: String,
              name: String,
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

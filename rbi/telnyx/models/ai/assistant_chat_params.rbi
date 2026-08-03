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

        sig { returns(String) }
        attr_accessor :assistant_id

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

        # When true, the response is streamed as Server-Sent Events (`text/event-stream`):
        # `delta` events carry content fragments as they are generated, a final `done`
        # event carries the full content plus `whatsapp_template`, and a terminal `error`
        # event reports failures that happen after streaming started. When false
        # (default), the response is a single JSON object.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :stream

        sig { params(stream: T::Boolean).void }
        attr_writer :stream

        sig do
          params(
            assistant_id: String,
            content: String,
            conversation_id: String,
            name: String,
            stream: T::Boolean,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          assistant_id:,
          # The message content sent by the client to the assistant
          content:,
          # A unique identifier for the conversation thread, used to maintain context
          conversation_id:,
          # The optional display name of the user sending the message
          name: nil,
          # When true, the response is streamed as Server-Sent Events (`text/event-stream`):
          # `delta` events carry content fragments as they are generated, a final `done`
          # event carries the full content plus `whatsapp_template`, and a terminal `error`
          # event reports failures that happen after streaming started. When false
          # (default), the response is a single JSON object.
          stream: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              assistant_id: String,
              content: String,
              conversation_id: String,
              name: String,
              stream: T::Boolean,
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

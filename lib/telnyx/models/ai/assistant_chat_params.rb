# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      # @see Telnyx::Resources::AI::Assistants#chat
      class AssistantChatParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute assistant_id
        #
        #   @return [String]
        required :assistant_id, String

        # @!attribute content
        #   The message content sent by the client to the assistant
        #
        #   @return [String]
        required :content, String

        # @!attribute conversation_id
        #   A unique identifier for the conversation thread, used to maintain context
        #
        #   @return [String]
        required :conversation_id, String

        # @!attribute name
        #   The optional display name of the user sending the message
        #
        #   @return [String, nil]
        optional :name, String

        # @!attribute stream
        #   When true, the response is streamed as Server-Sent Events (`text/event-stream`):
        #   `delta` events carry content fragments as they are generated, a final `done`
        #   event carries the full content plus `whatsapp_template`, and a terminal `error`
        #   event reports failures that happen after streaming started. When false
        #   (default), the response is a single JSON object.
        #
        #   @return [Boolean, nil]
        optional :stream, Telnyx::Internal::Type::Boolean

        # @!method initialize(assistant_id:, content:, conversation_id:, name: nil, stream: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::AI::AssistantChatParams} for more details.
        #
        #   @param assistant_id [String]
        #
        #   @param content [String] The message content sent by the client to the assistant
        #
        #   @param conversation_id [String] A unique identifier for the conversation thread, used to maintain context
        #
        #   @param name [String] The optional display name of the user sending the message
        #
        #   @param stream [Boolean] When true, the response is streamed as Server-Sent Events (`text/event-stream`):
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end

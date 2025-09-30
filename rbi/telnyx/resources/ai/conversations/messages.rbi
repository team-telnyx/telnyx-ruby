# typed: strong

module Telnyx
  module Resources
    class AI
      class Conversations
        class Messages
          # Retrieve messages for a specific conversation, including tool calls made by the
          # assistant.
          sig do
            params(
              conversation_id: String,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(Telnyx::Models::AI::Conversations::MessageListResponse)
          end
          def list(conversation_id, request_options: {})
          end

          # @api private
          sig { params(client: Telnyx::Client).returns(T.attached_class) }
          def self.new(client:)
          end
        end
      end
    end
  end
end

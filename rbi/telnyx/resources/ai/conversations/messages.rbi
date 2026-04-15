# typed: strong

module Telnyx
  module Resources
    class AI
      class Conversations
        # Manage historical AI assistant conversations
        class Messages
          # Retrieve messages for a specific conversation, including tool calls made by the
          # assistant.
          sig do
            params(
              conversation_id: String,
              page_number: Integer,
              page_size: Integer,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(
              Telnyx::Internal::DefaultFlatPagination[
                Telnyx::Models::AI::Conversations::MessageListResponse
              ]
            )
          end
          def list(
            conversation_id,
            # The page number to retrieve.
            page_number: nil,
            # The number of messages to return per page.
            page_size: nil,
            request_options: {}
          )
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

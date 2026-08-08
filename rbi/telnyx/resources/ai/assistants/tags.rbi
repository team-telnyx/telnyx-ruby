# typed: strong

module Telnyx
  module Resources
    class AI
      class Assistants
        # Configure AI assistant specifications
        class Tags
          # Retrieve all tags that have been applied to your AI assistants.
          sig do
            params(request_options: Telnyx::RequestOptions::OrHash).returns(
              Telnyx::AI::Assistants::TagsResponse
            )
          end
          def list(request_options: {})
          end

          # Add a tag to an AI assistant. Tags help you organize and filter your assistants.
          sig do
            params(
              assistant_id: String,
              tag: String,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(Telnyx::AI::Assistants::TagsResponse)
          end
          def add(
            # Unique identifier of the assistant.
            assistant_id,
            tag:,
            request_options: {}
          )
          end

          # Remove a tag from an AI assistant.
          sig do
            params(
              tag: String,
              assistant_id: String,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(Telnyx::AI::Assistants::TagsResponse)
          end
          def remove(
            # Unique identifier of the tag.
            tag,
            # Unique identifier of the assistant.
            assistant_id:,
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

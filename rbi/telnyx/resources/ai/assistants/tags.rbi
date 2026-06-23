# typed: strong

module Telnyx
  module Resources
    class AI
      class Assistants
        # Configure AI assistant specifications
        class Tags
          # Get All Tags
          sig do
            params(request_options: Telnyx::RequestOptions::OrHash).returns(
              Telnyx::AI::Assistants::TagsResponse
            )
          end
          def list(request_options: {})
          end

          # Add Assistant Tag
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

          # Remove Assistant Tag
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

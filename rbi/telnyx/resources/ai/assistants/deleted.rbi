# typed: strong

module Telnyx
  module Resources
    class AI
      class Assistants
        # Configure AI assistant specifications
        class Deleted
          # List the organization's soft-deleted assistants in the Recently Deleted list.
          #
          # Each entry includes `deleted_at` and `permanently_deleted_at`, the point after
          # which the assistant is erased automatically and can no longer be restored.
          sig do
            params(
              page_number: Integer,
              page_size: Integer,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(
              Telnyx::Internal::DefaultFlatPagination[
                Telnyx::AI::Assistants::DeletedAssistant
              ]
            )
          end
          def list(
            # Page number to retrieve (1-based).
            page_number: nil,
            # Number of items to return per page.
            page_size: nil,
            request_options: {}
          )
          end

          # Retrieve a soft-deleted assistant from the Recently Deleted list by
          # `assistant_id`, including its `deleted_at` and `permanently_deleted_at`
          # timestamps. This is a read-only view; the assistant cannot be modified while it
          # remains deleted.
          sig do
            params(
              assistant_id: String,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(Telnyx::AI::Assistants::DeletedAssistant)
          end
          def get(
            # Unique identifier of the assistant.
            assistant_id,
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

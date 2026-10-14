# typed: strong

module Telnyx
  module Models
    module AI
      DeletedAssistant = Assistants::DeletedAssistant

      module Assistants
        class DeletedAssistant < Telnyx::Models::AI::InferenceEmbedding
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::AI::Assistants::DeletedAssistant,
                Telnyx::Internal::AnyHash
              )
            end

          # Timestamp of the soft delete.
          sig { returns(Time) }
          attr_accessor :deleted_at

          # Point after which the assistant is permanently deleted automatically and can no
          # longer be restored.
          sig { returns(Time) }
          attr_accessor :permanently_deleted_at

          # A soft-deleted assistant in the Recently Deleted list: the full assistant
          # configuration plus deletion metadata.
          sig do
            params(deleted_at: Time, permanently_deleted_at: Time).returns(
              T.attached_class
            )
          end
          def self.new(
            # Timestamp of the soft delete.
            deleted_at:,
            # Point after which the assistant is permanently deleted automatically and can no
            # longer be restored.
            permanently_deleted_at:
          )
          end

          sig do
            override.returns({ deleted_at: Time, permanently_deleted_at: Time })
          end
          def to_hash
          end
        end
      end
    end
  end
end

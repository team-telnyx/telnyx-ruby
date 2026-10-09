# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      module Assistants
        # @see Telnyx::Resources::AI::Assistants::Deleted#list
        class DeletedAssistant < Telnyx::Models::AI::InferenceEmbedding
          # @!attribute deleted_at
          #   Timestamp of the soft delete.
          #
          #   @return [Time]
          required :deleted_at, Time

          # @!attribute permanently_deleted_at
          #   Point after which the assistant is permanently deleted automatically and can no
          #   longer be restored.
          #
          #   @return [Time]
          required :permanently_deleted_at, Time

          # @!method initialize(deleted_at:, permanently_deleted_at:)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::AI::Assistants::DeletedAssistant} for more details.
          #
          #   A soft-deleted assistant in the Recently Deleted list: the full assistant
          #   configuration plus deletion metadata.
          #
          #   @param deleted_at [Time] Timestamp of the soft delete.
          #
          #   @param permanently_deleted_at [Time] Point after which the assistant is permanently deleted automatically and can no
        end
      end

      DeletedAssistant = Assistants::DeletedAssistant
    end
  end
end

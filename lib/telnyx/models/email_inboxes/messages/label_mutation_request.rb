# frozen_string_literal: true

module Telnyx
  module Models
    module EmailInboxes
      module Messages
        class LabelMutationRequest < Telnyx::Internal::Type::BaseModel
          # @!attribute labels
          #   One or more labels. Each label is a freeform, case-sensitive string of at most
          #   255 characters; a message or thread may carry at most 50 labels. The `telnyx:`
          #   prefix is a reserved system namespace and is rejected on customer writes.
          #
          #   @return [Array<String>]
          required :labels, Telnyx::Internal::Type::ArrayOf[String]

          # @!method initialize(labels:)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::EmailInboxes::Messages::LabelMutationRequest} for more details.
          #
          #   Labels to add or remove. Both operations are idempotent set operations, so a
          #   retried request converges instead of failing.
          #
          #   @param labels [Array<String>] One or more labels. Each label is a freeform, case-sensitive string of at most 2
        end
      end
    end
  end
end

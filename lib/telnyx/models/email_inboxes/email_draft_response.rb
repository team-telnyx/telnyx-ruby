# frozen_string_literal: true

module Telnyx
  module Models
    module EmailInboxes
      # @see Telnyx::Resources::EmailInboxes::Drafts#create
      class EmailDraftResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #   An unsent, mutable draft message belonging to an inbox.
        #
        #   @return [Telnyx::Models::EmailInboxes::EmailDraft]
        required :data, -> { Telnyx::EmailInboxes::EmailDraft }

        # @!method initialize(data:)
        #   @param data [Telnyx::Models::EmailInboxes::EmailDraft] An unsent, mutable draft message belonging to an inbox.
      end
    end
  end
end

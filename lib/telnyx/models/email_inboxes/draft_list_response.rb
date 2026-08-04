# frozen_string_literal: true

module Telnyx
  module Models
    module EmailInboxes
      # @see Telnyx::Resources::EmailInboxes::Drafts#list
      class DraftListResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Array<Telnyx::Models::EmailInboxes::EmailDraft>]
        required :data, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::EmailInboxes::EmailDraft] }

        # @!attribute meta
        #
        #   @return [Telnyx::Models::EmailInboxes::EmailPaginationMeta]
        required :meta, -> { Telnyx::EmailInboxes::EmailPaginationMeta }

        # @!method initialize(data:, meta:)
        #   @param data [Array<Telnyx::Models::EmailInboxes::EmailDraft>]
        #   @param meta [Telnyx::Models::EmailInboxes::EmailPaginationMeta]
      end
    end
  end
end

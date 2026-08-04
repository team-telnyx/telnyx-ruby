# frozen_string_literal: true

module Telnyx
  module Models
    module EmailInboxes
      # @see Telnyx::Resources::EmailInboxes::Drafts#patch
      class DraftPatchParams < Telnyx::Models::EmailInboxes::EmailDraftRequest
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute inbox_id
        #
        #   @return [String]
        required :inbox_id, String

        # @!attribute draft_id
        #
        #   @return [String]
        required :draft_id, String

        # @!method initialize(inbox_id:, draft_id:, request_options: {})
        #   @param inbox_id [String]
        #   @param draft_id [String]
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end

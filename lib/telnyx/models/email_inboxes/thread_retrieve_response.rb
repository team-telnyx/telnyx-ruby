# frozen_string_literal: true

module Telnyx
  module Models
    module EmailInboxes
      # @see Telnyx::Resources::EmailInboxes::Threads#retrieve
      class ThreadRetrieveResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Telnyx::Models::EmailInboxes::InboundThreadDetail]
        required :data, -> { Telnyx::EmailInboxes::InboundThreadDetail }

        # @!attribute meta
        #
        #   @return [Telnyx::Models::EmailInboxes::EmailPaginationMeta]
        required :meta, -> { Telnyx::EmailInboxes::EmailPaginationMeta }

        # @!method initialize(data:, meta:)
        #   @param data [Telnyx::Models::EmailInboxes::InboundThreadDetail]
        #   @param meta [Telnyx::Models::EmailInboxes::EmailPaginationMeta]
      end
    end
  end
end

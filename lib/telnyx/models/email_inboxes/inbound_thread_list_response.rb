# frozen_string_literal: true

module Telnyx
  module Models
    module EmailInboxes
      # @see Telnyx::Resources::EmailInboxes::Threads#list
      class InboundThreadListResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Array<Telnyx::Models::EmailInboxes::InboundThread>]
        required :data, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::EmailInboxes::InboundThread] }

        # @!attribute meta
        #
        #   @return [Telnyx::Models::EmailInboxes::EmailPaginationMeta]
        required :meta, -> { Telnyx::EmailInboxes::EmailPaginationMeta }

        # @!method initialize(data:, meta:)
        #   @param data [Array<Telnyx::Models::EmailInboxes::InboundThread>]
        #   @param meta [Telnyx::Models::EmailInboxes::EmailPaginationMeta]
      end
    end
  end
end

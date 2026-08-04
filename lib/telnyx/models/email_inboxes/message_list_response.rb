# frozen_string_literal: true

module Telnyx
  module Models
    module EmailInboxes
      # @see Telnyx::Resources::EmailInboxes::Messages#list
      class MessageListResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Array<Telnyx::Models::InboundMessage>]
        required :data, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::InboundMessage] }

        # @!attribute meta
        #
        #   @return [Telnyx::Models::EmailInboxes::EmailPaginationMeta]
        required :meta, -> { Telnyx::EmailInboxes::EmailPaginationMeta }

        # @!method initialize(data:, meta:)
        #   @param data [Array<Telnyx::Models::InboundMessage>]
        #   @param meta [Telnyx::Models::EmailInboxes::EmailPaginationMeta]
      end
    end
  end
end

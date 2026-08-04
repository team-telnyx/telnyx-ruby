# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::EmailMessages#retrieve_events
    class EmailMessageRetrieveEventsResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<Telnyx::Models::MessageEvent>]
      required :data, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::MessageEvent] }

      # @!attribute meta
      #
      #   @return [Telnyx::Models::EmailInboxes::EmailPaginationMeta]
      required :meta, -> { Telnyx::EmailInboxes::EmailPaginationMeta }

      # @!method initialize(data:, meta:)
      #   @param data [Array<Telnyx::Models::MessageEvent>]
      #   @param meta [Telnyx::Models::EmailInboxes::EmailPaginationMeta]
    end
  end
end

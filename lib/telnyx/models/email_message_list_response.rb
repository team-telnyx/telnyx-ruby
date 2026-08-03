# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::EmailMessages#list
    class EmailMessageListResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<Telnyx::Models::EmailInboxes::EmailMessage>]
      required :data, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::EmailInboxes::EmailMessage] }

      # @!attribute meta
      #
      #   @return [Telnyx::Models::EmailInboxes::EmailPaginationMeta]
      required :meta, -> { Telnyx::EmailInboxes::EmailPaginationMeta }

      # @!method initialize(data:, meta:)
      #   @param data [Array<Telnyx::Models::EmailInboxes::EmailMessage>]
      #   @param meta [Telnyx::Models::EmailInboxes::EmailPaginationMeta]
    end
  end
end

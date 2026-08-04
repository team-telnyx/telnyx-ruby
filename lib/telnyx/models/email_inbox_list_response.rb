# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::EmailInboxes#list
    class EmailInboxListResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<Telnyx::Models::EmailInbox>]
      required :data, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::EmailInbox] }

      # @!attribute meta
      #
      #   @return [Telnyx::Models::EmailInboxListResponse::Meta]
      required :meta, -> { Telnyx::Models::EmailInboxListResponse::Meta }

      # @!method initialize(data:, meta:)
      #   @param data [Array<Telnyx::Models::EmailInbox>]
      #   @param meta [Telnyx::Models::EmailInboxListResponse::Meta]

      # @see Telnyx::Models::EmailInboxListResponse#meta
      class Meta < Telnyx::Internal::Type::BaseModel
        # @!attribute page_size
        #
        #   @return [Integer]
        required :page_size, Integer

        # @!attribute page_cursor
        #   Cursor for the next inbox page, when more results are available.
        #
        #   @return [String, nil]
        optional :page_cursor, String

        # @!method initialize(page_size:, page_cursor: nil)
        #   @param page_size [Integer]
        #
        #   @param page_cursor [String] Cursor for the next inbox page, when more results are available.
      end
    end
  end
end

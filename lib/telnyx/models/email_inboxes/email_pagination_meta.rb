# frozen_string_literal: true

module Telnyx
  module Models
    module EmailInboxes
      class EmailPaginationMeta < Telnyx::Internal::Type::BaseModel
        # @!attribute page_size
        #
        #   @return [Integer]
        required :page_size, Integer

        # @!attribute page_cursor
        #   Cursor for the next page, when more results are available.
        #
        #   @return [String, nil]
        optional :page_cursor, String

        # @!method initialize(page_size:, page_cursor: nil)
        #   @param page_size [Integer]
        #
        #   @param page_cursor [String] Cursor for the next page, when more results are available.
      end
    end
  end
end

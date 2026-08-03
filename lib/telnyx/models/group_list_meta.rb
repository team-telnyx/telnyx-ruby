# frozen_string_literal: true

module Telnyx
  module Models
    class GroupListMeta < Telnyx::Internal::Type::BaseModel
      # @!attribute page_number
      #
      #   @return [Integer]
      required :page_number, Integer

      # @!attribute page_size
      #
      #   @return [Integer]
      required :page_size, Integer

      # @!attribute total_pages
      #
      #   @return [Integer]
      required :total_pages, Integer

      # @!attribute total_results
      #
      #   @return [Integer]
      required :total_results, Integer

      # @!method initialize(page_number:, page_size:, total_pages:, total_results:)
      #   Group list `meta` (consistent with `GET /v2/email_blocks`).
      #
      #   @param page_number [Integer]
      #   @param page_size [Integer]
      #   @param total_pages [Integer]
      #   @param total_results [Integer]
    end
  end
end

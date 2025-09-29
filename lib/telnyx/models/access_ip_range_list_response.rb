# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::AccessIPRanges#list
    class AccessIPRangeListResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<Telnyx::Models::AccessIPRange>]
      required :data, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::AccessIPRange] }

      # @!attribute meta
      #
      #   @return [Telnyx::Models::AccessIPRangeListResponse::Meta]
      required :meta, -> { Telnyx::Models::AccessIPRangeListResponse::Meta }

      # @!method initialize(data:, meta:)
      #   @param data [Array<Telnyx::Models::AccessIPRange>]
      #   @param meta [Telnyx::Models::AccessIPRangeListResponse::Meta]

      # @see Telnyx::Models::AccessIPRangeListResponse#meta
      class Meta < Telnyx::Internal::Type::BaseModel
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
        #   @param page_number [Integer]
        #   @param page_size [Integer]
        #   @param total_pages [Integer]
        #   @param total_results [Integer]
      end
    end
  end
end

# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::SpendLimits#list
    class SpendLimitListResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<Telnyx::Models::SpendLimit>]
      required :data, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::SpendLimit] }

      # @!attribute meta
      #
      #   @return [Telnyx::Models::SpendLimitListResponse::Meta, nil]
      optional :meta, -> { Telnyx::Models::SpendLimitListResponse::Meta }

      # @!method initialize(data:, meta: nil)
      #   @param data [Array<Telnyx::Models::SpendLimit>]
      #   @param meta [Telnyx::Models::SpendLimitListResponse::Meta]

      # @see Telnyx::Models::SpendLimitListResponse#meta
      class Meta < Telnyx::Internal::Type::BaseModel
        # @!attribute page_number
        #
        #   @return [Integer, nil]
        optional :page_number, Integer

        # @!attribute page_size
        #
        #   @return [Integer, nil]
        optional :page_size, Integer

        # @!attribute total_pages
        #
        #   @return [Integer, nil]
        optional :total_pages, Integer

        # @!attribute total_results
        #
        #   @return [Integer, nil]
        optional :total_results, Integer

        # @!method initialize(page_number: nil, page_size: nil, total_pages: nil, total_results: nil)
        #   @param page_number [Integer]
        #   @param page_size [Integer]
        #   @param total_pages [Integer]
        #   @param total_results [Integer]
      end
    end
  end
end

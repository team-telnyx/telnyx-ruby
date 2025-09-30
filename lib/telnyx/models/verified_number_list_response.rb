# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::VerifiedNumbers#list
    class VerifiedNumberListResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<Telnyx::Models::VerifiedNumber>]
      required :data, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::VerifiedNumber] }

      # @!attribute meta
      #
      #   @return [Telnyx::Models::VerifiedNumberListResponse::Meta]
      required :meta, -> { Telnyx::Models::VerifiedNumberListResponse::Meta }

      # @!method initialize(data:, meta:)
      #   A paginated list of Verified Numbers
      #
      #   @param data [Array<Telnyx::Models::VerifiedNumber>]
      #   @param meta [Telnyx::Models::VerifiedNumberListResponse::Meta]

      # @see Telnyx::Models::VerifiedNumberListResponse#meta
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

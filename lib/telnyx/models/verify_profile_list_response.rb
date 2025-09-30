# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::VerifyProfiles#list
    class VerifyProfileListResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<Telnyx::Models::VerifyProfile>]
      required :data, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::VerifyProfile] }

      # @!attribute meta
      #
      #   @return [Telnyx::Models::VerifyProfileListResponse::Meta]
      required :meta, -> { Telnyx::Models::VerifyProfileListResponse::Meta }

      # @!method initialize(data:, meta:)
      #   A paginated list of Verify profiles
      #
      #   @param data [Array<Telnyx::Models::VerifyProfile>]
      #   @param meta [Telnyx::Models::VerifyProfileListResponse::Meta]

      # @see Telnyx::Models::VerifyProfileListResponse#meta
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

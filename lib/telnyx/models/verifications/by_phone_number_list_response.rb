# frozen_string_literal: true

module Telnyx
  module Models
    module Verifications
      # @see Telnyx::Resources::Verifications::ByPhoneNumber#list
      class ByPhoneNumberListResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Array<Telnyx::Models::Verification>]
        required :data, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Verification] }

        # @!attribute meta
        #
        #   @return [Telnyx::Models::Verifications::ByPhoneNumberListResponse::Meta]
        required :meta, -> { Telnyx::Models::Verifications::ByPhoneNumberListResponse::Meta }

        # @!method initialize(data:, meta:)
        #   @param data [Array<Telnyx::Models::Verification>]
        #   @param meta [Telnyx::Models::Verifications::ByPhoneNumberListResponse::Meta]

        # @see Telnyx::Models::Verifications::ByPhoneNumberListResponse#meta
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
end

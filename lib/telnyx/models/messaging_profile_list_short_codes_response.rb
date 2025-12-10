# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::MessagingProfiles#list_short_codes
    class MessagingProfileListShortCodesResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<Telnyx::Models::ShortCode>, nil]
      optional :data, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::ShortCode] }

      # @!attribute meta
      #
      #   @return [Telnyx::Models::MessagingProfileListShortCodesResponse::Meta, nil]
      optional :meta, -> { Telnyx::Models::MessagingProfileListShortCodesResponse::Meta }

      # @!method initialize(data: nil, meta: nil)
      #   @param data [Array<Telnyx::Models::ShortCode>]
      #   @param meta [Telnyx::Models::MessagingProfileListShortCodesResponse::Meta]

      # @see Telnyx::Models::MessagingProfileListShortCodesResponse#meta
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

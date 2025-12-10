# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::MessagingProfiles#list
    class MessagingProfileListResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<Telnyx::Models::MessagingProfile>, nil]
      optional :data, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::MessagingProfile] }

      # @!attribute meta
      #
      #   @return [Telnyx::Models::MessagingProfileListResponse::Meta, nil]
      optional :meta, -> { Telnyx::Models::MessagingProfileListResponse::Meta }

      # @!method initialize(data: nil, meta: nil)
      #   @param data [Array<Telnyx::Models::MessagingProfile>]
      #   @param meta [Telnyx::Models::MessagingProfileListResponse::Meta]

      # @see Telnyx::Models::MessagingProfileListResponse#meta
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

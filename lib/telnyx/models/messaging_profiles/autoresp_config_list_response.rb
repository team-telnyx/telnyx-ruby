# frozen_string_literal: true

module Telnyx
  module Models
    module MessagingProfiles
      # @see Telnyx::Resources::MessagingProfiles::AutorespConfigs#list
      class AutorespConfigListResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Array<Telnyx::Models::MessagingProfiles::AutoRespConfig>]
        required :data, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::MessagingProfiles::AutoRespConfig] }

        # @!attribute meta
        #
        #   @return [Telnyx::Models::MessagingProfiles::AutorespConfigListResponse::Meta]
        required :meta, -> { Telnyx::Models::MessagingProfiles::AutorespConfigListResponse::Meta }

        # @!method initialize(data:, meta:)
        #   List of Auto-Response Settings
        #
        #   @param data [Array<Telnyx::Models::MessagingProfiles::AutoRespConfig>]
        #   @param meta [Telnyx::Models::MessagingProfiles::AutorespConfigListResponse::Meta]

        # @see Telnyx::Models::MessagingProfiles::AutorespConfigListResponse#meta
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
end

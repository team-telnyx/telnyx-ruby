# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::OAuthClients#list
    class OAuthClientListResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<Telnyx::Models::OAuthClient>, nil]
      optional :data, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::OAuthClient] }

      # @!attribute meta
      #
      #   @return [Telnyx::Models::OAuthClientListResponse::Meta, nil]
      optional :meta, -> { Telnyx::Models::OAuthClientListResponse::Meta }

      # @!method initialize(data: nil, meta: nil)
      #   @param data [Array<Telnyx::Models::OAuthClient>]
      #   @param meta [Telnyx::Models::OAuthClientListResponse::Meta]

      # @see Telnyx::Models::OAuthClientListResponse#meta
      class Meta < Telnyx::Internal::Type::BaseModel
        # @!attribute page_number
        #   Current page number
        #
        #   @return [Integer, nil]
        optional :page_number, Integer

        # @!attribute page_size
        #   Number of items per page
        #
        #   @return [Integer, nil]
        optional :page_size, Integer

        # @!attribute total_pages
        #   Total number of pages
        #
        #   @return [Integer, nil]
        optional :total_pages, Integer

        # @!attribute total_results
        #   Total number of results
        #
        #   @return [Integer, nil]
        optional :total_results, Integer

        # @!method initialize(page_number: nil, page_size: nil, total_pages: nil, total_results: nil)
        #   @param page_number [Integer] Current page number
        #
        #   @param page_size [Integer] Number of items per page
        #
        #   @param total_pages [Integer] Total number of pages
        #
        #   @param total_results [Integer] Total number of results
      end
    end
  end
end

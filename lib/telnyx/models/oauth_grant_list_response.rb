# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::OAuthGrants#list
    class OAuthGrantListResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<Telnyx::Models::OAuthGrant>, nil]
      optional :data, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::OAuthGrant] }

      # @!attribute meta
      #
      #   @return [Telnyx::Models::OAuthGrantListResponse::Meta, nil]
      optional :meta, -> { Telnyx::Models::OAuthGrantListResponse::Meta }

      # @!method initialize(data: nil, meta: nil)
      #   @param data [Array<Telnyx::Models::OAuthGrant>]
      #   @param meta [Telnyx::Models::OAuthGrantListResponse::Meta]

      # @see Telnyx::Models::OAuthGrantListResponse#meta
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

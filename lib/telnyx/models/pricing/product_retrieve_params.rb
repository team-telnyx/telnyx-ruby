# frozen_string_literal: true

module Telnyx
  module Models
    module Pricing
      # @see Telnyx::Resources::Pricing::Products#retrieve
      class ProductRetrieveParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute slug
        #
        #   @return [String]
        required :slug, String

        # @!attribute filter_country_iso
        #   Two-letter ISO 3166-1 alpha-2 country code (uppercase, e.g. US) to filter
        #   pricing to a single country.
        #
        #   @return [String, nil]
        optional :filter_country_iso, String, nil?: true

        # @!attribute page_number
        #   Page number (1-based).
        #
        #   @return [Integer, nil]
        optional :page_number, Integer

        # @!attribute page_size
        #   Number of items per page (max 100).
        #
        #   @return [Integer, nil]
        optional :page_size, Integer

        # @!method initialize(slug:, filter_country_iso: nil, page_number: nil, page_size: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::Pricing::ProductRetrieveParams} for more details.
        #
        #   @param slug [String]
        #
        #   @param filter_country_iso [String, nil] Two-letter ISO 3166-1 alpha-2 country code (uppercase, e.g. US) to filter pricin
        #
        #   @param page_number [Integer] Page number (1-based).
        #
        #   @param page_size [Integer] Number of items per page (max 100).
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end

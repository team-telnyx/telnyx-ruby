# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::VerifiedNumbers#list
    class VerifiedNumberListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute page
      #   Consolidated page parameter (deepObject style). Use page[size] and page[number]
      #   in the query string. Originally: page[size], page[number]
      #
      #   @return [Telnyx::Models::VerifiedNumberListParams::Page, nil]
      optional :page, -> { Telnyx::VerifiedNumberListParams::Page }

      # @!method initialize(page: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::VerifiedNumberListParams} for more details.
      #
      #   @param page [Telnyx::Models::VerifiedNumberListParams::Page] Consolidated page parameter (deepObject style). Use page[size] and page[number]
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      class Page < Telnyx::Internal::Type::BaseModel
        # @!attribute number
        #
        #   @return [Integer, nil]
        optional :number, Integer

        # @!attribute size
        #
        #   @return [Integer, nil]
        optional :size, Integer

        # @!method initialize(number: nil, size: nil)
        #   Consolidated page parameter (deepObject style). Use page[size] and page[number]
        #   in the query string. Originally: page[size], page[number]
        #
        #   @param number [Integer]
        #   @param size [Integer]
      end
    end
  end
end

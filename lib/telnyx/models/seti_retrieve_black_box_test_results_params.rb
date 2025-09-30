# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::Seti#retrieve_black_box_test_results
    class SetiRetrieveBlackBoxTestResultsParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute filter
      #   Consolidated filter parameter (deepObject style). Originally: filter[product]
      #
      #   @return [Telnyx::Models::SetiRetrieveBlackBoxTestResultsParams::Filter, nil]
      optional :filter, -> { Telnyx::SetiRetrieveBlackBoxTestResultsParams::Filter }

      # @!method initialize(filter: nil, request_options: {})
      #   @param filter [Telnyx::Models::SetiRetrieveBlackBoxTestResultsParams::Filter] Consolidated filter parameter (deepObject style). Originally: filter[product]
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      class Filter < Telnyx::Internal::Type::BaseModel
        # @!attribute product
        #   Filter results for a specific product.
        #
        #   @return [String, nil]
        optional :product, String

        # @!method initialize(product: nil)
        #   Consolidated filter parameter (deepObject style). Originally: filter[product]
        #
        #   @param product [String] Filter results for a specific product.
      end
    end
  end
end

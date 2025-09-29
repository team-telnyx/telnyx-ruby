# frozen_string_literal: true

module Telnyx
  module Resources
    class Seti
      # Returns the results of the various black box tests
      #
      # @overload retrieve_black_box_test_results(filter: nil, request_options: {})
      #
      # @param filter [Telnyx::Models::SetiRetrieveBlackBoxTestResultsParams::Filter] Consolidated filter parameter (deepObject style). Originally: filter[product]
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::SetiRetrieveBlackBoxTestResultsResponse]
      #
      # @see Telnyx::Models::SetiRetrieveBlackBoxTestResultsParams
      def retrieve_black_box_test_results(params = {})
        parsed, options = Telnyx::SetiRetrieveBlackBoxTestResultsParams.dump_request(params)
        @client.request(
          method: :get,
          path: "seti/black_box_test_results",
          query: parsed,
          model: Telnyx::Models::SetiRetrieveBlackBoxTestResultsResponse,
          options: options
        )
      end

      # @api private
      #
      # @param client [Telnyx::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end

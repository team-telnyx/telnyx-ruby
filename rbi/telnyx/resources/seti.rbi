# typed: strong

module Telnyx
  module Resources
    class Seti
      # Returns the results of the various black box tests
      sig do
        params(
          filter: Telnyx::SetiRetrieveBlackBoxTestResultsParams::Filter::OrHash,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::SetiRetrieveBlackBoxTestResultsResponse)
      end
      def retrieve_black_box_test_results(
        # Consolidated filter parameter (deepObject style). Originally: filter[product]
        filter: nil,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: Telnyx::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end

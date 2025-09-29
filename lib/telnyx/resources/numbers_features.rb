# frozen_string_literal: true

module Telnyx
  module Resources
    class NumbersFeatures
      # Retrieve the features for a list of numbers
      #
      # @overload create(phone_numbers:, request_options: {})
      #
      # @param phone_numbers [Array<String>]
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::NumbersFeatureCreateResponse]
      #
      # @see Telnyx::Models::NumbersFeatureCreateParams
      def create(params)
        parsed, options = Telnyx::NumbersFeatureCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "numbers_features",
          body: parsed,
          model: Telnyx::Models::NumbersFeatureCreateResponse,
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

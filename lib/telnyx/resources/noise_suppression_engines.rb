# frozen_string_literal: true

module Telnyx
  module Resources
    # Noise suppression engines that can be selected when configuring noise
    # suppression on voice connections.
    class NoiseSuppressionEngines
      # Returns all noise suppression engines available to the authenticated user.
      # Engines gated behind a feature flag are included only when the flag is enabled
      # for the user's account. Results are not paginated; the number of engines is
      # expected to remain small.
      #
      # @overload list(request_options: {})
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::NoiseSuppressionEngineListResponse]
      #
      # @see Telnyx::Models::NoiseSuppressionEngineListParams
      def list(params = {})
        @client.request(
          method: :get,
          path: "noise_suppression_engines",
          model: Telnyx::Models::NoiseSuppressionEngineListResponse,
          options: params[:request_options]
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

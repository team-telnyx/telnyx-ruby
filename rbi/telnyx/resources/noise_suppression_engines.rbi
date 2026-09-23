# typed: strong

module Telnyx
  module Resources
    # Noise suppression engines that can be selected when configuring noise
    # suppression on voice connections.
    class NoiseSuppressionEngines
      # Returns all noise suppression engines available to the authenticated user.
      # Engines gated behind a feature flag are included only when the flag is enabled
      # for the user's account. Results are not paginated; the number of engines is
      # expected to remain small.
      sig do
        params(request_options: Telnyx::RequestOptions::OrHash).returns(
          Telnyx::Models::NoiseSuppressionEngineListResponse
        )
      end
      def list(request_options: {})
      end

      # @api private
      sig { params(client: Telnyx::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end

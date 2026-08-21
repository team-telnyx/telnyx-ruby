# typed: strong

module Telnyx
  module Resources
    # Global IPs
    class GlobalIPHealthCheckTypes
      # Returns the health check types available for Global IPs, for use when creating
      # Global IP health checks.
      sig do
        params(request_options: Telnyx::RequestOptions::OrHash).returns(
          Telnyx::Models::GlobalIPHealthCheckTypeListResponse
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

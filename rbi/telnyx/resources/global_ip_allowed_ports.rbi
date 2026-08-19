# typed: strong

module Telnyx
  module Resources
    # Global IPs
    class GlobalIPAllowedPorts
      # Returns the ports allowed for Global IP traffic, for use when configuring Global
      # IP resources.
      sig do
        params(request_options: Telnyx::RequestOptions::OrHash).returns(
          Telnyx::Models::GlobalIPAllowedPortListResponse
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

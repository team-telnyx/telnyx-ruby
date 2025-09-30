# typed: strong

module Telnyx
  module Resources
    class GlobalIPHealthCheckTypes
      # List all Global IP Health check types.
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

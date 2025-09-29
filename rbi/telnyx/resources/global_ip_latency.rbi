# typed: strong

module Telnyx
  module Resources
    class GlobalIPLatency
      # Global IP Latency Metrics
      sig do
        params(
          filter: Telnyx::GlobalIPLatencyRetrieveParams::Filter::OrHash,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::GlobalIPLatencyRetrieveResponse)
      end
      def retrieve(
        # Consolidated filter parameter (deepObject style). Originally:
        # filter[global_ip_id][in]
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

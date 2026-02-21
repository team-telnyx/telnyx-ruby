# typed: strong

module Telnyx
  module Resources
    class MessagingProfileMetrics
      # List high-level metrics for all messaging profiles belonging to the
      # authenticated user.
      sig do
        params(
          time_frame:
            Telnyx::MessagingProfileMetricListParams::TimeFrame::OrSymbol,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::MessagingProfileMetricListResponse)
      end
      def list(
        # The time frame for metrics.
        time_frame: nil,
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

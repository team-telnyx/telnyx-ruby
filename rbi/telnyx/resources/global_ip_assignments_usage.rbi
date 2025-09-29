# typed: strong

module Telnyx
  module Resources
    class GlobalIPAssignmentsUsage
      # Global IP Assignment Usage Metrics
      sig do
        params(
          filter:
            Telnyx::GlobalIPAssignmentsUsageRetrieveParams::Filter::OrHash,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::GlobalIPAssignmentsUsageRetrieveResponse)
      end
      def retrieve(
        # Consolidated filter parameter (deepObject style). Originally:
        # filter[global_ip_assignment_id][in], filter[global_ip_id][in]
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

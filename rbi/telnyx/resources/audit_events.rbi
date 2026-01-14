# typed: strong

module Telnyx
  module Resources
    class AuditEvents
      # Retrieve a list of audit log entries. Audit logs are a best-effort, eventually
      # consistent record of significant account-related changes.
      sig do
        params(
          filter: Telnyx::AuditEventListParams::Filter::OrHash,
          page_number: Integer,
          page_size: Integer,
          sort: Telnyx::AuditEventListParams::Sort::OrSymbol,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(
          Telnyx::Internal::DefaultFlatPagination[
            Telnyx::Models::AuditEventListResponse
          ]
        )
      end
      def list(
        # Consolidated filter parameter (deepObject style). Originally:
        # filter[created_before], filter[created_after]
        filter: nil,
        page_number: nil,
        page_size: nil,
        # Set the order of the results by the creation date.
        sort: nil,
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

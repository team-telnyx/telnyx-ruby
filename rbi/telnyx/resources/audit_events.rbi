# typed: strong

module Telnyx
  module Resources
    class AuditEvents
      # Retrieve a list of audit log entries. Audit logs are a best-effort, eventually
      # consistent record of significant account-related changes.
      sig do
        params(
          filter: Telnyx::AuditEventListParams::Filter::OrHash,
          page: Telnyx::AuditEventListParams::Page::OrHash,
          sort: Telnyx::AuditEventListParams::Sort::OrSymbol,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::AuditEventListResponse)
      end
      def list(
        # Consolidated filter parameter (deepObject style). Originally:
        # filter[created_before], filter[created_after]
        filter: nil,
        # Consolidated page parameter (deepObject style). Originally: page[number],
        # page[size]
        page: nil,
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

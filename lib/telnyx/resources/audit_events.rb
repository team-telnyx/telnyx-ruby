# frozen_string_literal: true

module Telnyx
  module Resources
    class AuditEvents
      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::AuditEventListParams} for more details.
      #
      # Retrieve a list of audit log entries. Audit logs are a best-effort, eventually
      # consistent record of significant account-related changes.
      #
      # @overload list(filter: nil, page: nil, sort: nil, request_options: {})
      #
      # @param filter [Telnyx::Models::AuditEventListParams::Filter] Consolidated filter parameter (deepObject style). Originally: filter[created_bef
      #
      # @param page [Telnyx::Models::AuditEventListParams::Page] Consolidated page parameter (deepObject style). Originally: page[number], page[s
      #
      # @param sort [Symbol, Telnyx::Models::AuditEventListParams::Sort] Set the order of the results by the creation date.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::AuditEventListResponse]
      #
      # @see Telnyx::Models::AuditEventListParams
      def list(params = {})
        parsed, options = Telnyx::AuditEventListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "audit_events",
          query: parsed,
          model: Telnyx::Models::AuditEventListResponse,
          options: options
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

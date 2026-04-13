# typed: strong

module Telnyx
  module Resources
    # Analyze voice AI sessions, costs, and event hierarchies across Telnyx products.
    class SessionAnalysis
      # Analyze voice AI sessions, costs, and event hierarchies across Telnyx products.
      sig { returns(Telnyx::Resources::SessionAnalysis::Metadata) }
      attr_reader :metadata

      # Retrieves a full session analysis tree for a given event, including costs, child
      # events, and product linkages.
      sig do
        params(
          event_id: String,
          record_type: String,
          date_time: Time,
          expand: Telnyx::SessionAnalysisRetrieveParams::Expand::OrSymbol,
          include_children: T::Boolean,
          max_depth: Integer,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::SessionAnalysisRetrieveResponse)
      end
      def retrieve(
        # Path param: The event identifier (UUID).
        event_id,
        # Path param: The record type identifier.
        record_type:,
        # Query param: ISO 8601 timestamp or date to narrow index selection for faster
        # lookups. Accepts full datetime (e.g., 2026-03-17T10:00:00Z) or date-only format
        # (e.g., 2026-03-17).
        date_time: nil,
        # Query param: Controls what data to expand on each event node.
        expand: nil,
        # Query param: Whether to include child events in the response.
        include_children: nil,
        # Query param: Maximum traversal depth for the event tree.
        max_depth: nil,
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

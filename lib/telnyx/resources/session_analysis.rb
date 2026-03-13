# frozen_string_literal: true

module Telnyx
  module Resources
    # Analyze voice AI sessions, costs, and event hierarchies across Telnyx products.
    class SessionAnalysis
      # Analyze voice AI sessions, costs, and event hierarchies across Telnyx products.
      # @return [Telnyx::Resources::SessionAnalysis::Metadata]
      attr_reader :metadata

      # Retrieves a full session analysis tree for a given event, including costs, child
      # events, and product linkages.
      #
      # @overload retrieve(event_id, record_type:, date_time: nil, expand: nil, include_children: nil, max_depth: nil, request_options: {})
      #
      # @param event_id [String] Path param: The event identifier (UUID).
      #
      # @param record_type [String] Path param: The record type identifier.
      #
      # @param date_time [Time] Query param: ISO 8601 timestamp to narrow index selection for faster lookups.
      #
      # @param expand [Symbol, Telnyx::Models::SessionAnalysisRetrieveParams::Expand] Query param: Controls what data to expand on each event node.
      #
      # @param include_children [Boolean] Query param: Whether to include child events in the response.
      #
      # @param max_depth [Integer] Query param: Maximum traversal depth for the event tree.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::SessionAnalysisRetrieveResponse]
      #
      # @see Telnyx::Models::SessionAnalysisRetrieveParams
      def retrieve(event_id, params)
        parsed, options = Telnyx::SessionAnalysisRetrieveParams.dump_request(params)
        query = Telnyx::Internal::Util.encode_query_params(parsed)
        record_type =
          parsed.delete(:record_type) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :get,
          path: ["session_analysis/%1$s/%2$s", record_type, event_id],
          query: query,
          model: Telnyx::Models::SessionAnalysisRetrieveResponse,
          options: options
        )
      end

      # @api private
      #
      # @param client [Telnyx::Client]
      def initialize(client:)
        @client = client
        @metadata = Telnyx::Resources::SessionAnalysis::Metadata.new(client: client)
      end
    end
  end
end

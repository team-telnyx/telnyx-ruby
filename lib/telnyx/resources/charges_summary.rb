# frozen_string_literal: true

module Telnyx
  module Resources
    class ChargesSummary
      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::ChargesSummaryRetrieveParams} for more details.
      #
      # Retrieve a summary of monthly charges for a specified date range. The date range
      # cannot exceed 31 days.
      #
      # @overload retrieve(end_date:, start_date:, request_options: {})
      #
      # @param end_date [Date] End date for the charges summary in ISO date format (YYYY-MM-DD). The date is ex
      #
      # @param start_date [Date] Start date for the charges summary in ISO date format (YYYY-MM-DD)
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::ChargesSummaryRetrieveResponse]
      #
      # @see Telnyx::Models::ChargesSummaryRetrieveParams
      def retrieve(params)
        parsed, options = Telnyx::ChargesSummaryRetrieveParams.dump_request(params)
        @client.request(
          method: :get,
          path: "charges_summary",
          query: parsed,
          model: Telnyx::Models::ChargesSummaryRetrieveResponse,
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

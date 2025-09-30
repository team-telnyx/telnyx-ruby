# frozen_string_literal: true

module Telnyx
  module Resources
    class ChargesBreakdown
      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::ChargesBreakdownRetrieveParams} for more details.
      #
      # Retrieve a detailed breakdown of monthly charges for phone numbers in a
      # specified date range. The date range cannot exceed 31 days.
      #
      # @overload retrieve(start_date:, end_date: nil, format_: nil, request_options: {})
      #
      # @param start_date [Date] Start date for the charges breakdown in ISO date format (YYYY-MM-DD)
      #
      # @param end_date [Date] End date for the charges breakdown in ISO date format (YYYY-MM-DD). If not provi
      #
      # @param format_ [Symbol, Telnyx::Models::ChargesBreakdownRetrieveParams::Format] Response format
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::ChargesBreakdownRetrieveResponse]
      #
      # @see Telnyx::Models::ChargesBreakdownRetrieveParams
      def retrieve(params)
        parsed, options = Telnyx::ChargesBreakdownRetrieveParams.dump_request(params)
        @client.request(
          method: :get,
          path: "charges_breakdown",
          query: parsed.transform_keys(format_: "format"),
          model: Telnyx::Models::ChargesBreakdownRetrieveResponse,
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

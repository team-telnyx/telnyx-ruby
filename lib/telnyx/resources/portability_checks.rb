# frozen_string_literal: true

module Telnyx
  module Resources
    class PortabilityChecks
      # Runs a portability check, returning the results immediately.
      #
      # @overload run(phone_numbers: nil, request_options: {})
      #
      # @param phone_numbers [Array<String>] The list of +E.164 formatted phone numbers to check for portability
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::PortabilityCheckRunResponse]
      #
      # @see Telnyx::Models::PortabilityCheckRunParams
      def run(params = {})
        parsed, options = Telnyx::PortabilityCheckRunParams.dump_request(params)
        @client.request(
          method: :post,
          path: "portability_checks",
          body: parsed,
          model: Telnyx::Models::PortabilityCheckRunResponse,
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

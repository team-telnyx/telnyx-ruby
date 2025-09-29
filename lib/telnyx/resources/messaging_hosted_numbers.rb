# frozen_string_literal: true

module Telnyx
  module Resources
    class MessagingHostedNumbers
      # Delete a messaging hosted number
      #
      # @overload delete(id, request_options: {})
      #
      # @param id [String] Identifies the type of resource.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::MessagingHostedNumberDeleteResponse]
      #
      # @see Telnyx::Models::MessagingHostedNumberDeleteParams
      def delete(id, params = {})
        @client.request(
          method: :delete,
          path: ["messaging_hosted_numbers/%1$s", id],
          model: Telnyx::Models::MessagingHostedNumberDeleteResponse,
          options: params[:request_options]
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

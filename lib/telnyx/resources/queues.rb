# frozen_string_literal: true

module Telnyx
  module Resources
    class Queues
      # @return [Telnyx::Resources::Queues::Calls]
      attr_reader :calls

      # Retrieve an existing call queue
      #
      # @overload retrieve(queue_name, request_options: {})
      #
      # @param queue_name [String] Uniquely identifies the queue by name
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::QueueRetrieveResponse]
      #
      # @see Telnyx::Models::QueueRetrieveParams
      def retrieve(queue_name, params = {})
        @client.request(
          method: :get,
          path: ["queues/%1$s", queue_name],
          model: Telnyx::Models::QueueRetrieveResponse,
          options: params[:request_options]
        )
      end

      # @api private
      #
      # @param client [Telnyx::Client]
      def initialize(client:)
        @client = client
        @calls = Telnyx::Resources::Queues::Calls.new(client: client)
      end
    end
  end
end

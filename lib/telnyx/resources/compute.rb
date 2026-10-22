# frozen_string_literal: true

module Telnyx
  module Resources
    # Inspect Stateful Actor types
    class Compute
      # Manage Edge Compute functions
      # @return [Telnyx::Resources::Compute::Funcs]
      attr_reader :funcs

      # Retrieve one account-scoped Stateful Actor type. owner_function_id identifies
      # the function that owns and ships the actor class; other functions may reference
      # the same actor type through actor bindings.
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] Actor type ID
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::ComputeRetrieveResponse]
      #
      # @see Telnyx::Models::ComputeRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["compute/actors/%1$s", id],
          model: Telnyx::Models::ComputeRetrieveResponse,
          options: params[:request_options]
        )
      end

      # @api private
      #
      # @param client [Telnyx::Client]
      def initialize(client:)
        @client = client
        @funcs = Telnyx::Resources::Compute::Funcs.new(client: client)
      end
    end
  end
end

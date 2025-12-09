# frozen_string_literal: true

module Telnyx
  module Resources
    class BulkSimCardActions
      # This API fetches information about a bulk SIM card action. A bulk SIM card
      # action contains details about a collection of individual SIM card actions.
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] Identifies the resource.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::BulkSimCardActionRetrieveResponse]
      #
      # @see Telnyx::Models::BulkSimCardActionRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["bulk_sim_card_actions/%1$s", id],
          model: Telnyx::Models::BulkSimCardActionRetrieveResponse,
          options: params[:request_options]
        )
      end

      # This API lists a paginated collection of bulk SIM card actions. A bulk SIM card
      # action contains details about a collection of individual SIM card actions.
      #
      # @overload list(filter_action_type: nil, page_number: nil, page_size: nil, request_options: {})
      #
      # @param filter_action_type [Symbol, Telnyx::Models::BulkSimCardActionListParams::FilterActionType] Filter by action type.
      #
      # @param page_number [Integer] The page number to load.
      #
      # @param page_size [Integer] The size of the page.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Internal::DefaultFlatPagination<Telnyx::Models::BulkSimCardActionListResponse>]
      #
      # @see Telnyx::Models::BulkSimCardActionListParams
      def list(params = {})
        parsed, options = Telnyx::BulkSimCardActionListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "bulk_sim_card_actions",
          query: parsed.transform_keys(
            filter_action_type: "filter[action_type]",
            page_number: "page[number]",
            page_size: "page[size]"
          ),
          page: Telnyx::Internal::DefaultFlatPagination,
          model: Telnyx::Models::BulkSimCardActionListResponse,
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

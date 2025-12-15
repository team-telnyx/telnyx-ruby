# frozen_string_literal: true

module Telnyx
  module Resources
    class MessagingNumbersBulkUpdates
      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::MessagingNumbersBulkUpdateCreateParams} for more details.
      #
      # Update the messaging profile of multiple phone numbers
      #
      # @overload create(messaging_profile_id:, numbers:, request_options: {})
      #
      # @param messaging_profile_id [String] Configure the messaging profile these phone numbers are assigned to:
      #
      # @param numbers [Array<String>] The list of phone numbers to update.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::MessagingNumbersBulkUpdateCreateResponse]
      #
      # @see Telnyx::Models::MessagingNumbersBulkUpdateCreateParams
      def create(params)
        parsed, options = Telnyx::MessagingNumbersBulkUpdateCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "messaging_numbers_bulk_updates",
          body: parsed,
          model: Telnyx::Models::MessagingNumbersBulkUpdateCreateResponse,
          options: options
        )
      end

      # Retrieve bulk update status
      #
      # @overload retrieve(order_id, request_options: {})
      #
      # @param order_id [String] Order ID to verify bulk update status.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::MessagingNumbersBulkUpdateRetrieveResponse]
      #
      # @see Telnyx::Models::MessagingNumbersBulkUpdateRetrieveParams
      def retrieve(order_id, params = {})
        @client.request(
          method: :get,
          path: ["messaging_numbers_bulk_updates/%1$s", order_id],
          model: Telnyx::Models::MessagingNumbersBulkUpdateRetrieveResponse,
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

# frozen_string_literal: true

module Telnyx
  module Resources
    class WebhookDeliveries
      # Provides webhook_delivery debug data, such as timestamps, delivery status and
      # attempts.
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] Uniquely identifies the webhook_delivery.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::WebhookDeliveryRetrieveResponse]
      #
      # @see Telnyx::Models::WebhookDeliveryRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["webhook_deliveries/%1$s", id],
          model: Telnyx::Models::WebhookDeliveryRetrieveResponse,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::WebhookDeliveryListParams} for more details.
      #
      # Lists webhook_deliveries for the authenticated user
      #
      # @overload list(filter: nil, page: nil, request_options: {})
      #
      # @param filter [Telnyx::Models::WebhookDeliveryListParams::Filter] Consolidated filter parameter (deepObject style). Originally: filter[status][eq]
      #
      # @param page [Telnyx::Models::WebhookDeliveryListParams::Page] Consolidated page parameter (deepObject style). Originally: page[number], page[s
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Internal::DefaultPagination<Telnyx::Models::WebhookDeliveryListResponse>]
      #
      # @see Telnyx::Models::WebhookDeliveryListParams
      def list(params = {})
        parsed, options = Telnyx::WebhookDeliveryListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "webhook_deliveries",
          query: parsed,
          page: Telnyx::Internal::DefaultPagination,
          model: Telnyx::Models::WebhookDeliveryListResponse,
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

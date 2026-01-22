# typed: strong

module Telnyx
  module Resources
    class WebhookDeliveries
      # Provides webhook_delivery debug data, such as timestamps, delivery status and
      # attempts.
      sig do
        params(
          id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::WebhookDeliveryRetrieveResponse)
      end
      def retrieve(
        # Uniquely identifies the webhook_delivery.
        id,
        request_options: {}
      )
      end

      # Lists webhook_deliveries for the authenticated user
      sig do
        params(
          filter: Telnyx::WebhookDeliveryListParams::Filter::OrHash,
          page: Telnyx::WebhookDeliveryListParams::Page::OrHash,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(
          Telnyx::Internal::DefaultPagination[
            Telnyx::Models::WebhookDeliveryListResponse
          ]
        )
      end
      def list(
        # Consolidated filter parameter (deepObject style). Originally:
        # filter[status][eq], filter[event_type], filter[webhook][contains],
        # filter[attempts][contains], filter[started_at][gte], filter[started_at][lte],
        # filter[finished_at][gte], filter[finished_at][lte]
        filter: nil,
        # Consolidated page parameter (deepObject style). Originally: page[number],
        # page[size]
        page: nil,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: Telnyx::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end

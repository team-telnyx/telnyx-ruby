# typed: strong

module Telnyx
  module Resources
    class SimCardDataUsageNotifications
      # Creates a new SIM card data usage notification.
      sig do
        params(
          sim_card_id: String,
          threshold:
            Telnyx::SimCardDataUsageNotificationCreateParams::Threshold::OrHash,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::SimCardDataUsageNotificationCreateResponse)
      end
      def create(
        # The identification UUID of the related SIM card resource.
        sim_card_id:,
        # Data usage threshold that will trigger the notification.
        threshold:,
        request_options: {}
      )
      end

      # Get a single SIM Card Data Usage Notification.
      sig do
        params(
          id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::SimCardDataUsageNotificationRetrieveResponse)
      end
      def retrieve(
        # Identifies the resource.
        id,
        request_options: {}
      )
      end

      # Updates information for a SIM Card Data Usage Notification.
      sig do
        params(
          sim_card_data_usage_notification_id: String,
          sim_card_id: String,
          threshold: Telnyx::SimCardDataUsageNotification::Threshold::OrHash,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::SimCardDataUsageNotificationUpdateResponse)
      end
      def update(
        # Identifies the resource.
        sim_card_data_usage_notification_id,
        # The identification UUID of the related SIM card resource.
        sim_card_id: nil,
        # Data usage threshold that will trigger the notification.
        threshold: nil,
        request_options: {}
      )
      end

      # Lists a paginated collection of SIM card data usage notifications. It enables
      # exploring the collection using specific filters.
      sig do
        params(
          filter_sim_card_id: String,
          page_number: Integer,
          page_size: Integer,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(
          Telnyx::Internal::DefaultFlatPagination[
            Telnyx::SimCardDataUsageNotification
          ]
        )
      end
      def list(
        # A valid SIM card ID.
        filter_sim_card_id: nil,
        # The page number to load.
        page_number: nil,
        # The size of the page.
        page_size: nil,
        request_options: {}
      )
      end

      # Delete the SIM Card Data Usage Notification.
      sig do
        params(
          id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::SimCardDataUsageNotificationDeleteResponse)
      end
      def delete(
        # Identifies the resource.
        id,
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

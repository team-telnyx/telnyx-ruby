# typed: strong

module Telnyx
  module Resources
    class MobileVoiceConnections
      # Create a Mobile Voice Connection
      sig do
        params(
          active: T::Boolean,
          connection_name: String,
          inbound: Telnyx::MobileVoiceConnectionCreateParams::Inbound::OrHash,
          outbound: Telnyx::MobileVoiceConnectionCreateParams::Outbound::OrHash,
          tags: T::Array[String],
          webhook_api_version:
            Telnyx::MobileVoiceConnectionCreateParams::WebhookAPIVersion::OrSymbol,
          webhook_event_failover_url: T.nilable(String),
          webhook_event_url: T.nilable(String),
          webhook_timeout_secs: T.nilable(Integer),
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::MobileVoiceConnectionCreateResponse)
      end
      def create(
        active: nil,
        connection_name: nil,
        inbound: nil,
        outbound: nil,
        tags: nil,
        webhook_api_version: nil,
        webhook_event_failover_url: nil,
        webhook_event_url: nil,
        webhook_timeout_secs: nil,
        request_options: {}
      )
      end

      # Retrieve a Mobile Voice Connection
      sig do
        params(
          id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::MobileVoiceConnectionRetrieveResponse)
      end
      def retrieve(
        # The ID of the mobile voice connection
        id,
        request_options: {}
      )
      end

      # Update a Mobile Voice Connection
      sig do
        params(
          id: String,
          active: T::Boolean,
          connection_name: String,
          inbound: Telnyx::MobileVoiceConnectionUpdateParams::Inbound::OrHash,
          outbound: Telnyx::MobileVoiceConnectionUpdateParams::Outbound::OrHash,
          tags: T::Array[String],
          webhook_api_version:
            Telnyx::MobileVoiceConnectionUpdateParams::WebhookAPIVersion::OrSymbol,
          webhook_event_failover_url: T.nilable(String),
          webhook_event_url: T.nilable(String),
          webhook_timeout_secs: Integer,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::MobileVoiceConnectionUpdateResponse)
      end
      def update(
        # The ID of the mobile voice connection
        id,
        active: nil,
        connection_name: nil,
        inbound: nil,
        outbound: nil,
        tags: nil,
        webhook_api_version: nil,
        webhook_event_failover_url: nil,
        webhook_event_url: nil,
        webhook_timeout_secs: nil,
        request_options: {}
      )
      end

      # List Mobile Voice Connections
      sig do
        params(
          filter_connection_name_contains: String,
          page_number: Integer,
          page_size: Integer,
          sort: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(
          Telnyx::Internal::DefaultFlatPagination[Telnyx::MobileVoiceConnection]
        )
      end
      def list(
        # Filter by connection name containing the given string
        filter_connection_name_contains: nil,
        # The page number to load
        page_number: nil,
        # The size of the page
        page_size: nil,
        # Sort by field (e.g., created_at, connection_name, active). Prefix with - for
        # descending order.
        sort: nil,
        request_options: {}
      )
      end

      # Delete a Mobile Voice Connection
      sig do
        params(
          id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::MobileVoiceConnectionDeleteResponse)
      end
      def delete(
        # The ID of the mobile voice connection
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

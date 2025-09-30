# typed: strong

module Telnyx
  module Resources
    class ExternalConnections
      sig { returns(Telnyx::Resources::ExternalConnections::LogMessages) }
      attr_reader :log_messages

      sig { returns(Telnyx::Resources::ExternalConnections::CivicAddresses) }
      attr_reader :civic_addresses

      sig { returns(Telnyx::Resources::ExternalConnections::PhoneNumbers) }
      attr_reader :phone_numbers

      sig { returns(Telnyx::Resources::ExternalConnections::Releases) }
      attr_reader :releases

      sig { returns(Telnyx::Resources::ExternalConnections::Uploads) }
      attr_reader :uploads

      # Creates a new External Connection based on the parameters sent in the request.
      # The external_sip_connection and outbound voice profile id are required. Once
      # created, you can assign phone numbers to your application using the
      # `/phone_numbers` endpoint.
      sig do
        params(
          external_sip_connection:
            Telnyx::ExternalConnectionCreateParams::ExternalSipConnection::OrSymbol,
          outbound: Telnyx::ExternalConnectionCreateParams::Outbound::OrHash,
          active: T::Boolean,
          inbound: Telnyx::ExternalConnectionCreateParams::Inbound::OrHash,
          tags: T::Array[String],
          webhook_event_failover_url: T.nilable(String),
          webhook_event_url: String,
          webhook_timeout_secs: T.nilable(Integer),
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::ExternalConnectionCreateResponse)
      end
      def create(
        # The service that will be consuming this connection.
        external_sip_connection:,
        outbound:,
        # Specifies whether the connection can be used.
        active: nil,
        inbound: nil,
        # Tags associated with the connection.
        tags: nil,
        # The failover URL where webhooks related to this connection will be sent if
        # sending to the primary URL fails. Must include a scheme, such as 'https'.
        webhook_event_failover_url: nil,
        # The URL where webhooks related to this connection will be sent. Must include a
        # scheme, such as 'https'.
        webhook_event_url: nil,
        # Specifies how many seconds to wait before timing out a webhook.
        webhook_timeout_secs: nil,
        request_options: {}
      )
      end

      # Return the details of an existing External Connection inside the 'data'
      # attribute of the response.
      sig do
        params(
          id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::ExternalConnectionRetrieveResponse)
      end
      def retrieve(
        # Identifies the resource.
        id,
        request_options: {}
      )
      end

      # Updates settings of an existing External Connection based on the parameters of
      # the request.
      sig do
        params(
          id: String,
          outbound: Telnyx::ExternalConnectionUpdateParams::Outbound::OrHash,
          active: T::Boolean,
          inbound: Telnyx::ExternalConnectionUpdateParams::Inbound::OrHash,
          tags: T::Array[String],
          webhook_event_failover_url: T.nilable(String),
          webhook_event_url: String,
          webhook_timeout_secs: T.nilable(Integer),
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::ExternalConnectionUpdateResponse)
      end
      def update(
        # Identifies the resource.
        id,
        outbound:,
        # Specifies whether the connection can be used.
        active: nil,
        inbound: nil,
        # Tags associated with the connection.
        tags: nil,
        # The failover URL where webhooks related to this connection will be sent if
        # sending to the primary URL fails. Must include a scheme, such as 'https'.
        webhook_event_failover_url: nil,
        # The URL where webhooks related to this connection will be sent. Must include a
        # scheme, such as 'https'.
        webhook_event_url: nil,
        # Specifies how many seconds to wait before timing out a webhook.
        webhook_timeout_secs: nil,
        request_options: {}
      )
      end

      # This endpoint returns a list of your External Connections inside the 'data'
      # attribute of the response. External Connections are used by Telnyx customers to
      # seamless configure SIP trunking integrations with Telnyx Partners, through
      # External Voice Integrations in Mission Control Portal.
      sig do
        params(
          filter: Telnyx::ExternalConnectionListParams::Filter::OrHash,
          page: Telnyx::ExternalConnectionListParams::Page::OrHash,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::ExternalConnectionListResponse)
      end
      def list(
        # Filter parameter for external connections (deepObject style). Supports filtering
        # by connection_name, external_sip_connection, id, created_at, and phone_number.
        filter: nil,
        # Consolidated page parameter (deepObject style). Originally: page[size],
        # page[number]
        page: nil,
        request_options: {}
      )
      end

      # Permanently deletes an External Connection. Deletion may be prevented if the
      # application is in use by phone numbers, is active, or if it is an Operator
      # Connect connection. To remove an Operator Connect integration please contact
      # Telnyx support.
      sig do
        params(
          id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::ExternalConnectionDeleteResponse)
      end
      def delete(
        # Identifies the resource.
        id,
        request_options: {}
      )
      end

      # Update a location's static emergency address
      sig do
        params(
          location_id: String,
          id: String,
          static_emergency_address_id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::ExternalConnectionUpdateLocationResponse)
      end
      def update_location(
        # Path param: The ID of the location to update
        location_id,
        # Path param: The ID of the external connection
        id:,
        # Body param: A new static emergency address ID to update the location with
        static_emergency_address_id:,
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

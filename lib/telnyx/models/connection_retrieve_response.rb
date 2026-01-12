# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::Connections#retrieve
    class ConnectionRetrieveResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::ConnectionRetrieveResponse::Data, nil]
      optional :data, -> { Telnyx::Models::ConnectionRetrieveResponse::Data }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::ConnectionRetrieveResponse::Data]

      # @see Telnyx::Models::ConnectionRetrieveResponse#data
      class Data < Telnyx::Internal::Type::BaseModel
        # @!attribute id
        #   Identifies the specific resource.
        #
        #   @return [String, nil]
        optional :id, String

        # @!attribute active
        #   Defaults to true
        #
        #   @return [Boolean, nil]
        optional :active, Telnyx::Internal::Type::Boolean

        # @!attribute anchorsite_override
        #   `Latency` directs Telnyx to route media through the site with the lowest
        #   round-trip time to the user's connection. Telnyx calculates this time using ICMP
        #   ping messages. This can be disabled by specifying a site to handle all media.
        #
        #   @return [Symbol, Telnyx::Models::AnchorsiteOverride, nil]
        optional :anchorsite_override, enum: -> { Telnyx::AnchorsiteOverride }

        # @!attribute connection_name
        #
        #   @return [String, nil]
        optional :connection_name, String

        # @!attribute created_at
        #   ISO 8601 formatted date indicating when the resource was created.
        #
        #   @return [String, nil]
        optional :created_at, String

        # @!attribute outbound_voice_profile_id
        #   Identifies the associated outbound voice profile.
        #
        #   @return [String, nil]
        optional :outbound_voice_profile_id, String

        # @!attribute record_type
        #   Identifies the type of the resource.
        #
        #   @return [String, nil]
        optional :record_type, String

        # @!attribute tags
        #   Tags associated with the connection.
        #
        #   @return [Array<String>, nil]
        optional :tags, Telnyx::Internal::Type::ArrayOf[String]

        # @!attribute updated_at
        #   ISO 8601 formatted date indicating when the resource was updated.
        #
        #   @return [String, nil]
        optional :updated_at, String

        # @!attribute webhook_api_version
        #   Determines which webhook format will be used, Telnyx API v1 or v2.
        #
        #   @return [Symbol, Telnyx::Models::ConnectionRetrieveResponse::Data::WebhookAPIVersion, nil]
        optional :webhook_api_version,
                 enum: -> { Telnyx::Models::ConnectionRetrieveResponse::Data::WebhookAPIVersion }

        # @!attribute webhook_event_failover_url
        #   The failover URL where webhooks related to this connection will be sent if
        #   sending to the primary URL fails.
        #
        #   @return [String, nil]
        optional :webhook_event_failover_url, String, nil?: true

        # @!attribute webhook_event_url
        #   The URL where webhooks related to this connection will be sent.
        #
        #   @return [String, nil]
        optional :webhook_event_url, String, nil?: true

        # @!method initialize(id: nil, active: nil, anchorsite_override: nil, connection_name: nil, created_at: nil, outbound_voice_profile_id: nil, record_type: nil, tags: nil, updated_at: nil, webhook_api_version: nil, webhook_event_failover_url: nil, webhook_event_url: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::ConnectionRetrieveResponse::Data} for more details.
        #
        #   @param id [String] Identifies the specific resource.
        #
        #   @param active [Boolean] Defaults to true
        #
        #   @param anchorsite_override [Symbol, Telnyx::Models::AnchorsiteOverride] `Latency` directs Telnyx to route media through the site with the lowest round-t
        #
        #   @param connection_name [String]
        #
        #   @param created_at [String] ISO 8601 formatted date indicating when the resource was created.
        #
        #   @param outbound_voice_profile_id [String] Identifies the associated outbound voice profile.
        #
        #   @param record_type [String] Identifies the type of the resource.
        #
        #   @param tags [Array<String>] Tags associated with the connection.
        #
        #   @param updated_at [String] ISO 8601 formatted date indicating when the resource was updated.
        #
        #   @param webhook_api_version [Symbol, Telnyx::Models::ConnectionRetrieveResponse::Data::WebhookAPIVersion] Determines which webhook format will be used, Telnyx API v1 or v2.
        #
        #   @param webhook_event_failover_url [String, nil] The failover URL where webhooks related to this connection will be sent if sendi
        #
        #   @param webhook_event_url [String, nil] The URL where webhooks related to this connection will be sent.

        # Determines which webhook format will be used, Telnyx API v1 or v2.
        #
        # @see Telnyx::Models::ConnectionRetrieveResponse::Data#webhook_api_version
        module WebhookAPIVersion
          extend Telnyx::Internal::Type::Enum

          V1 = :"1"
          V2 = :"2"

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end

# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::ExternalConnections#list
    class ExternalConnection < Telnyx::Internal::Type::BaseModel
      # @!attribute id
      #   Uniquely identifies the resource.
      #
      #   @return [String, nil]
      optional :id, String

      # @!attribute active
      #   Specifies whether the connection can be used.
      #
      #   @return [Boolean, nil]
      optional :active, Telnyx::Internal::Type::Boolean

      # @!attribute created_at
      #   ISO 8601 formatted date indicating when the resource was created.
      #
      #   @return [String, nil]
      optional :created_at, String

      # @!attribute credential_active
      #   If the credential associated with this service is active.
      #
      #   @return [Boolean, nil]
      optional :credential_active, Telnyx::Internal::Type::Boolean

      # @!attribute external_sip_connection
      #   The service that will be consuming this connection.
      #
      #   @return [Symbol, Telnyx::Models::ExternalConnection::ExternalSipConnection, nil]
      optional :external_sip_connection, enum: -> { Telnyx::ExternalConnection::ExternalSipConnection }

      # @!attribute inbound
      #
      #   @return [Telnyx::Models::ExternalConnection::Inbound, nil]
      optional :inbound, -> { Telnyx::ExternalConnection::Inbound }

      # @!attribute outbound
      #
      #   @return [Telnyx::Models::ExternalConnection::Outbound, nil]
      optional :outbound, -> { Telnyx::ExternalConnection::Outbound }

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
      #   @return [Symbol, Telnyx::Models::ExternalConnection::WebhookAPIVersion, nil]
      optional :webhook_api_version, enum: -> { Telnyx::ExternalConnection::WebhookAPIVersion }

      # @!attribute webhook_event_failover_url
      #   The failover URL where webhooks related to this connection will be sent if
      #   sending to the primary URL fails. Must include a scheme, such as 'https'.
      #
      #   @return [String, nil]
      optional :webhook_event_failover_url, String, nil?: true

      # @!attribute webhook_event_url
      #   The URL where webhooks related to this connection will be sent. Must include a
      #   scheme, such as 'https'.
      #
      #   @return [String, nil]
      optional :webhook_event_url, String

      # @!attribute webhook_timeout_secs
      #   Specifies how many seconds to wait before timing out a webhook.
      #
      #   @return [Integer, nil]
      optional :webhook_timeout_secs, Integer, nil?: true

      # @!method initialize(id: nil, active: nil, created_at: nil, credential_active: nil, external_sip_connection: nil, inbound: nil, outbound: nil, record_type: nil, tags: nil, updated_at: nil, webhook_api_version: nil, webhook_event_failover_url: nil, webhook_event_url: nil, webhook_timeout_secs: nil)
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::ExternalConnection} for more details.
      #
      #   @param id [String] Uniquely identifies the resource.
      #
      #   @param active [Boolean] Specifies whether the connection can be used.
      #
      #   @param created_at [String] ISO 8601 formatted date indicating when the resource was created.
      #
      #   @param credential_active [Boolean] If the credential associated with this service is active.
      #
      #   @param external_sip_connection [Symbol, Telnyx::Models::ExternalConnection::ExternalSipConnection] The service that will be consuming this connection.
      #
      #   @param inbound [Telnyx::Models::ExternalConnection::Inbound]
      #
      #   @param outbound [Telnyx::Models::ExternalConnection::Outbound]
      #
      #   @param record_type [String] Identifies the type of the resource.
      #
      #   @param tags [Array<String>] Tags associated with the connection.
      #
      #   @param updated_at [String] ISO 8601 formatted date indicating when the resource was updated.
      #
      #   @param webhook_api_version [Symbol, Telnyx::Models::ExternalConnection::WebhookAPIVersion] Determines which webhook format will be used, Telnyx API v1 or v2.
      #
      #   @param webhook_event_failover_url [String, nil] The failover URL where webhooks related to this connection will be sent if sendi
      #
      #   @param webhook_event_url [String] The URL where webhooks related to this connection will be sent. Must include a s
      #
      #   @param webhook_timeout_secs [Integer, nil] Specifies how many seconds to wait before timing out a webhook.

      # The service that will be consuming this connection.
      #
      # @see Telnyx::Models::ExternalConnection#external_sip_connection
      module ExternalSipConnection
        extend Telnyx::Internal::Type::Enum

        ZOOM = :zoom
        OPERATOR_CONNECT = :operator_connect

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see Telnyx::Models::ExternalConnection#inbound
      class Inbound < Telnyx::Internal::Type::BaseModel
        # @!attribute channel_limit
        #   When set, this will limit the number of concurrent inbound calls to phone
        #   numbers associated with this connection.
        #
        #   @return [Integer, nil]
        optional :channel_limit, Integer

        # @!method initialize(channel_limit: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::ExternalConnection::Inbound} for more details.
        #
        #   @param channel_limit [Integer] When set, this will limit the number of concurrent inbound calls to phone number
      end

      # @see Telnyx::Models::ExternalConnection#outbound
      class Outbound < Telnyx::Internal::Type::BaseModel
        # @!attribute channel_limit
        #   When set, this will limit the number of concurrent outbound calls to phone
        #   numbers associated with this connection.
        #
        #   @return [Integer, nil]
        optional :channel_limit, Integer

        # @!attribute outbound_voice_profile_id
        #   Identifies the associated outbound voice profile.
        #
        #   @return [String, nil]
        optional :outbound_voice_profile_id, String

        # @!method initialize(channel_limit: nil, outbound_voice_profile_id: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::ExternalConnection::Outbound} for more details.
        #
        #   @param channel_limit [Integer] When set, this will limit the number of concurrent outbound calls to phone numbe
        #
        #   @param outbound_voice_profile_id [String] Identifies the associated outbound voice profile.
      end

      # Determines which webhook format will be used, Telnyx API v1 or v2.
      #
      # @see Telnyx::Models::ExternalConnection#webhook_api_version
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

# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::MobileVoiceConnections#delete
    class MobileVoiceConnectionDeleteResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::MobileVoiceConnectionDeleteResponse::Data, nil]
      optional :data, -> { Telnyx::Models::MobileVoiceConnectionDeleteResponse::Data }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::MobileVoiceConnectionDeleteResponse::Data]

      # @see Telnyx::Models::MobileVoiceConnectionDeleteResponse#data
      class Data < Telnyx::Internal::Type::BaseModel
        # @!attribute active
        #   Indicates if the connection is active.
        #
        #   @return [Boolean, nil]
        optional :active, Telnyx::Internal::Type::Boolean

        # @!attribute connection_name
        #   The name of the connection.
        #
        #   @return [String, nil]
        optional :connection_name, String

        # @!attribute inbound
        #
        #   @return [Telnyx::Models::MobileVoiceConnectionDeleteResponse::Data::Inbound, nil]
        optional :inbound, -> { Telnyx::Models::MobileVoiceConnectionDeleteResponse::Data::Inbound }

        # @!attribute outbound
        #
        #   @return [Telnyx::Models::MobileVoiceConnectionDeleteResponse::Data::Outbound, nil]
        optional :outbound, -> { Telnyx::Models::MobileVoiceConnectionDeleteResponse::Data::Outbound }

        # @!attribute tags
        #   A list of tags associated with the connection.
        #
        #   @return [Array<String>, nil]
        optional :tags, Telnyx::Internal::Type::ArrayOf[String]

        # @!attribute webhook_api_version
        #   The API version for webhooks.
        #
        #   @return [Symbol, Telnyx::Models::MobileVoiceConnectionDeleteResponse::Data::WebhookAPIVersion, nil]
        optional :webhook_api_version,
                 enum: -> { Telnyx::Models::MobileVoiceConnectionDeleteResponse::Data::WebhookAPIVersion },
                 nil?: true

        # @!attribute webhook_event_failover_url
        #   The failover URL where webhooks are sent.
        #
        #   @return [String, nil]
        optional :webhook_event_failover_url, String, nil?: true

        # @!attribute webhook_event_url
        #   The URL where webhooks are sent.
        #
        #   @return [String, nil]
        optional :webhook_event_url, String, nil?: true

        # @!attribute webhook_timeout_secs
        #   The timeout for webhooks in seconds.
        #
        #   @return [Integer, nil]
        optional :webhook_timeout_secs, Integer, nil?: true

        response_only do
          # @!attribute id
          #   Identifies the resource.
          #
          #   @return [String, nil]
          optional :id, String

          # @!attribute created_at
          #
          #   @return [Time, nil]
          optional :created_at, Time

          # @!attribute record_type
          #   Identifies the type of the resource.
          #
          #   @return [Symbol, Telnyx::Models::MobileVoiceConnectionDeleteResponse::Data::RecordType, nil]
          optional :record_type, enum: -> { Telnyx::Models::MobileVoiceConnectionDeleteResponse::Data::RecordType }

          # @!attribute updated_at
          #
          #   @return [Time, nil]
          optional :updated_at, Time
        end

        # @!method initialize(id: nil, active: nil, connection_name: nil, created_at: nil, inbound: nil, outbound: nil, record_type: nil, tags: nil, updated_at: nil, webhook_api_version: nil, webhook_event_failover_url: nil, webhook_event_url: nil, webhook_timeout_secs: nil)
        #   @param id [String] Identifies the resource.
        #
        #   @param active [Boolean] Indicates if the connection is active.
        #
        #   @param connection_name [String] The name of the connection.
        #
        #   @param created_at [Time]
        #
        #   @param inbound [Telnyx::Models::MobileVoiceConnectionDeleteResponse::Data::Inbound]
        #
        #   @param outbound [Telnyx::Models::MobileVoiceConnectionDeleteResponse::Data::Outbound]
        #
        #   @param record_type [Symbol, Telnyx::Models::MobileVoiceConnectionDeleteResponse::Data::RecordType] Identifies the type of the resource.
        #
        #   @param tags [Array<String>] A list of tags associated with the connection.
        #
        #   @param updated_at [Time]
        #
        #   @param webhook_api_version [Symbol, Telnyx::Models::MobileVoiceConnectionDeleteResponse::Data::WebhookAPIVersion, nil] The API version for webhooks.
        #
        #   @param webhook_event_failover_url [String, nil] The failover URL where webhooks are sent.
        #
        #   @param webhook_event_url [String, nil] The URL where webhooks are sent.
        #
        #   @param webhook_timeout_secs [Integer, nil] The timeout for webhooks in seconds.

        # @see Telnyx::Models::MobileVoiceConnectionDeleteResponse::Data#inbound
        class Inbound < Telnyx::Internal::Type::BaseModel
          # @!attribute channel_limit
          #
          #   @return [Integer, nil]
          optional :channel_limit, Integer, nil?: true

          # @!method initialize(channel_limit: nil)
          #   @param channel_limit [Integer, nil]
        end

        # @see Telnyx::Models::MobileVoiceConnectionDeleteResponse::Data#outbound
        class Outbound < Telnyx::Internal::Type::BaseModel
          # @!attribute channel_limit
          #
          #   @return [Integer, nil]
          optional :channel_limit, Integer, nil?: true

          # @!attribute outbound_voice_profile_id
          #
          #   @return [String, nil]
          optional :outbound_voice_profile_id, String, nil?: true

          # @!method initialize(channel_limit: nil, outbound_voice_profile_id: nil)
          #   @param channel_limit [Integer, nil]
          #   @param outbound_voice_profile_id [String, nil]
        end

        # Identifies the type of the resource.
        #
        # @see Telnyx::Models::MobileVoiceConnectionDeleteResponse::Data#record_type
        module RecordType
          extend Telnyx::Internal::Type::Enum

          MOBILE_VOICE_CONNECTION = :mobile_voice_connection

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # The API version for webhooks.
        #
        # @see Telnyx::Models::MobileVoiceConnectionDeleteResponse::Data#webhook_api_version
        module WebhookAPIVersion
          extend Telnyx::Internal::Type::Enum

          WEBHOOK_API_VERSION_1 = :"1"
          WEBHOOK_API_VERSION_2 = :"2"

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end

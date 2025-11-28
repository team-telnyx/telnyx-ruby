# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::MobileVoiceConnections#update
    class MobileVoiceConnectionUpdateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute active
      #
      #   @return [Boolean, nil]
      optional :active, Telnyx::Internal::Type::Boolean

      # @!attribute connection_name
      #
      #   @return [String, nil]
      optional :connection_name, String

      # @!attribute inbound
      #
      #   @return [Telnyx::Models::MobileVoiceConnectionUpdateParams::Inbound, nil]
      optional :inbound, -> { Telnyx::MobileVoiceConnectionUpdateParams::Inbound }

      # @!attribute outbound
      #
      #   @return [Telnyx::Models::MobileVoiceConnectionUpdateParams::Outbound, nil]
      optional :outbound, -> { Telnyx::MobileVoiceConnectionUpdateParams::Outbound }

      # @!attribute tags
      #
      #   @return [Array<String>, nil]
      optional :tags, Telnyx::Internal::Type::ArrayOf[String]

      # @!attribute webhook_api_version
      #
      #   @return [Symbol, Telnyx::Models::MobileVoiceConnectionUpdateParams::WebhookAPIVersion, nil]
      optional :webhook_api_version, enum: -> { Telnyx::MobileVoiceConnectionUpdateParams::WebhookAPIVersion }

      # @!attribute webhook_event_failover_url
      #
      #   @return [String, nil]
      optional :webhook_event_failover_url, String, nil?: true

      # @!attribute webhook_event_url
      #
      #   @return [String, nil]
      optional :webhook_event_url, String, nil?: true

      # @!attribute webhook_timeout_secs
      #
      #   @return [Integer, nil]
      optional :webhook_timeout_secs, Integer

      # @!method initialize(active: nil, connection_name: nil, inbound: nil, outbound: nil, tags: nil, webhook_api_version: nil, webhook_event_failover_url: nil, webhook_event_url: nil, webhook_timeout_secs: nil, request_options: {})
      #   @param active [Boolean]
      #   @param connection_name [String]
      #   @param inbound [Telnyx::Models::MobileVoiceConnectionUpdateParams::Inbound]
      #   @param outbound [Telnyx::Models::MobileVoiceConnectionUpdateParams::Outbound]
      #   @param tags [Array<String>]
      #   @param webhook_api_version [Symbol, Telnyx::Models::MobileVoiceConnectionUpdateParams::WebhookAPIVersion]
      #   @param webhook_event_failover_url [String, nil]
      #   @param webhook_event_url [String, nil]
      #   @param webhook_timeout_secs [Integer]
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      class Inbound < Telnyx::Internal::Type::BaseModel
        # @!attribute channel_limit
        #
        #   @return [Integer, nil]
        optional :channel_limit, Integer

        # @!method initialize(channel_limit: nil)
        #   @param channel_limit [Integer]
      end

      class Outbound < Telnyx::Internal::Type::BaseModel
        # @!attribute channel_limit
        #
        #   @return [Integer, nil]
        optional :channel_limit, Integer

        # @!attribute outbound_voice_profile_id
        #
        #   @return [String, nil]
        optional :outbound_voice_profile_id, String

        # @!method initialize(channel_limit: nil, outbound_voice_profile_id: nil)
        #   @param channel_limit [Integer]
        #   @param outbound_voice_profile_id [String]
      end

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

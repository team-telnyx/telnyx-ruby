# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::ExternalConnections#update
    class ExternalConnectionUpdateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute outbound
      #
      #   @return [Telnyx::Models::ExternalConnectionUpdateParams::Outbound]
      required :outbound, -> { Telnyx::ExternalConnectionUpdateParams::Outbound }

      # @!attribute active
      #   Specifies whether the connection can be used.
      #
      #   @return [Boolean, nil]
      optional :active, Telnyx::Internal::Type::Boolean

      # @!attribute inbound
      #
      #   @return [Telnyx::Models::ExternalConnectionUpdateParams::Inbound, nil]
      optional :inbound, -> { Telnyx::ExternalConnectionUpdateParams::Inbound }

      # @!attribute tags
      #   Tags associated with the connection.
      #
      #   @return [Array<String>, nil]
      optional :tags, Telnyx::Internal::Type::ArrayOf[String]

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

      # @!method initialize(outbound:, active: nil, inbound: nil, tags: nil, webhook_event_failover_url: nil, webhook_event_url: nil, webhook_timeout_secs: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::ExternalConnectionUpdateParams} for more details.
      #
      #   @param outbound [Telnyx::Models::ExternalConnectionUpdateParams::Outbound]
      #
      #   @param active [Boolean] Specifies whether the connection can be used.
      #
      #   @param inbound [Telnyx::Models::ExternalConnectionUpdateParams::Inbound]
      #
      #   @param tags [Array<String>] Tags associated with the connection.
      #
      #   @param webhook_event_failover_url [String, nil] The failover URL where webhooks related to this connection will be sent if sendi
      #
      #   @param webhook_event_url [String] The URL where webhooks related to this connection will be sent. Must include a s
      #
      #   @param webhook_timeout_secs [Integer, nil] Specifies how many seconds to wait before timing out a webhook.
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      class Outbound < Telnyx::Internal::Type::BaseModel
        # @!attribute outbound_voice_profile_id
        #   Identifies the associated outbound voice profile.
        #
        #   @return [String]
        required :outbound_voice_profile_id, String

        # @!attribute channel_limit
        #   When set, this will limit the number of concurrent outbound calls to phone
        #   numbers associated with this connection.
        #
        #   @return [Integer, nil]
        optional :channel_limit, Integer

        # @!method initialize(outbound_voice_profile_id:, channel_limit: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::ExternalConnectionUpdateParams::Outbound} for more details.
        #
        #   @param outbound_voice_profile_id [String] Identifies the associated outbound voice profile.
        #
        #   @param channel_limit [Integer] When set, this will limit the number of concurrent outbound calls to phone numbe
      end

      class Inbound < Telnyx::Internal::Type::BaseModel
        # @!attribute channel_limit
        #   When set, this will limit the number of concurrent inbound calls to phone
        #   numbers associated with this connection.
        #
        #   @return [Integer, nil]
        optional :channel_limit, Integer

        # @!method initialize(channel_limit: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::ExternalConnectionUpdateParams::Inbound} for more details.
        #
        #   @param channel_limit [Integer] When set, this will limit the number of concurrent inbound calls to phone number
      end
    end
  end
end

# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::Rooms#create
    class RoomCreateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute enable_recording
      #   Enable or disable recording for that room.
      #
      #   @return [Boolean, nil]
      optional :enable_recording, Telnyx::Internal::Type::Boolean

      # @!attribute max_participants
      #   The maximum amount of participants allowed in a room. If new participants try to
      #   join after that limit is reached, their request will be rejected.
      #
      #   @return [Integer, nil]
      optional :max_participants, Integer

      # @!attribute unique_name
      #   The unique (within the Telnyx account scope) name of the room.
      #
      #   @return [String, nil]
      optional :unique_name, String

      # @!attribute webhook_event_failover_url
      #   The failover URL where webhooks related to this room will be sent if sending to
      #   the primary URL fails. Must include a scheme, such as 'https'.
      #
      #   @return [String, nil]
      optional :webhook_event_failover_url, String

      # @!attribute webhook_event_url
      #   The URL where webhooks related to this room will be sent. Must include a scheme,
      #   such as 'https'.
      #
      #   @return [String, nil]
      optional :webhook_event_url, String

      # @!attribute webhook_timeout_secs
      #   Specifies how many seconds to wait before timing out a webhook.
      #
      #   @return [Integer, nil]
      optional :webhook_timeout_secs, Integer

      # @!method initialize(enable_recording: nil, max_participants: nil, unique_name: nil, webhook_event_failover_url: nil, webhook_event_url: nil, webhook_timeout_secs: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::RoomCreateParams} for more details.
      #
      #   @param enable_recording [Boolean] Enable or disable recording for that room.
      #
      #   @param max_participants [Integer] The maximum amount of participants allowed in a room. If new participants try to
      #
      #   @param unique_name [String] The unique (within the Telnyx account scope) name of the room.
      #
      #   @param webhook_event_failover_url [String] The failover URL where webhooks related to this room will be sent if sending to
      #
      #   @param webhook_event_url [String] The URL where webhooks related to this room will be sent. Must include a scheme,
      #
      #   @param webhook_timeout_secs [Integer] Specifies how many seconds to wait before timing out a webhook.
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end

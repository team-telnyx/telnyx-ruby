# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::RoomCompositions#create
    class RoomCompositionCreateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute format_
      #   The desired format of the room composition.
      #
      #   @return [String, nil]
      optional :format_, String, api_name: :format, nil?: true

      # @!attribute resolution
      #   The desired resolution (width/height in pixels) of the resulting video of the
      #   room composition. Both width and height are required to be between 16 and 1280;
      #   and width _ height should not exceed 1280 _ 720
      #
      #   @return [String, nil]
      optional :resolution, String, nil?: true

      # @!attribute session_id
      #   id of the room session associated with the room composition.
      #
      #   @return [String, nil]
      optional :session_id, String, nil?: true

      # @!attribute video_layout
      #   Describes the video layout of the room composition in terms of regions.
      #
      #   @return [Hash{Symbol=>Telnyx::Models::VideoRegion}, nil]
      optional :video_layout, -> { Telnyx::Internal::Type::HashOf[Telnyx::VideoRegion] }

      # @!attribute webhook_event_failover_url
      #   The failover URL where webhooks related to this room composition will be sent if
      #   sending to the primary URL fails. Must include a scheme, such as 'https'.
      #
      #   @return [String, nil]
      optional :webhook_event_failover_url, String, nil?: true

      # @!attribute webhook_event_url
      #   The URL where webhooks related to this room composition will be sent. Must
      #   include a scheme, such as 'https'.
      #
      #   @return [String, nil]
      optional :webhook_event_url, String

      # @!attribute webhook_timeout_secs
      #   Specifies how many seconds to wait before timing out a webhook.
      #
      #   @return [Integer, nil]
      optional :webhook_timeout_secs, Integer, nil?: true

      # @!method initialize(format_: nil, resolution: nil, session_id: nil, video_layout: nil, webhook_event_failover_url: nil, webhook_event_url: nil, webhook_timeout_secs: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::RoomCompositionCreateParams} for more details.
      #
      #   @param format_ [String, nil] The desired format of the room composition.
      #
      #   @param resolution [String, nil] The desired resolution (width/height in pixels) of the resulting video of the ro
      #
      #   @param session_id [String, nil] id of the room session associated with the room composition.
      #
      #   @param video_layout [Hash{Symbol=>Telnyx::Models::VideoRegion}] Describes the video layout of the room composition in terms of regions.
      #
      #   @param webhook_event_failover_url [String, nil] The failover URL where webhooks related to this room composition will be sent if
      #
      #   @param webhook_event_url [String] The URL where webhooks related to this room composition will be sent. Must inclu
      #
      #   @param webhook_timeout_secs [Integer, nil] Specifies how many seconds to wait before timing out a webhook.
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end

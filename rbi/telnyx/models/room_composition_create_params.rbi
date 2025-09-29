# typed: strong

module Telnyx
  module Models
    class RoomCompositionCreateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::RoomCompositionCreateParams, Telnyx::Internal::AnyHash)
        end

      # The desired format of the room composition.
      sig { returns(T.nilable(String)) }
      attr_accessor :format_

      # The desired resolution (width/height in pixels) of the resulting video of the
      # room composition. Both width and height are required to be between 16 and 1280;
      # and width _ height should not exceed 1280 _ 720
      sig { returns(T.nilable(String)) }
      attr_accessor :resolution

      # id of the room session associated with the room composition.
      sig { returns(T.nilable(String)) }
      attr_accessor :session_id

      # Describes the video layout of the room composition in terms of regions.
      sig { returns(T.nilable(T::Hash[Symbol, Telnyx::VideoRegion])) }
      attr_reader :video_layout

      sig do
        params(video_layout: T::Hash[Symbol, Telnyx::VideoRegion::OrHash]).void
      end
      attr_writer :video_layout

      # The failover URL where webhooks related to this room composition will be sent if
      # sending to the primary URL fails. Must include a scheme, such as 'https'.
      sig { returns(T.nilable(String)) }
      attr_accessor :webhook_event_failover_url

      # The URL where webhooks related to this room composition will be sent. Must
      # include a scheme, such as 'https'.
      sig { returns(T.nilable(String)) }
      attr_reader :webhook_event_url

      sig { params(webhook_event_url: String).void }
      attr_writer :webhook_event_url

      # Specifies how many seconds to wait before timing out a webhook.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :webhook_timeout_secs

      sig do
        params(
          format_: T.nilable(String),
          resolution: T.nilable(String),
          session_id: T.nilable(String),
          video_layout: T::Hash[Symbol, Telnyx::VideoRegion::OrHash],
          webhook_event_failover_url: T.nilable(String),
          webhook_event_url: String,
          webhook_timeout_secs: T.nilable(Integer),
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The desired format of the room composition.
        format_: nil,
        # The desired resolution (width/height in pixels) of the resulting video of the
        # room composition. Both width and height are required to be between 16 and 1280;
        # and width _ height should not exceed 1280 _ 720
        resolution: nil,
        # id of the room session associated with the room composition.
        session_id: nil,
        # Describes the video layout of the room composition in terms of regions.
        video_layout: nil,
        # The failover URL where webhooks related to this room composition will be sent if
        # sending to the primary URL fails. Must include a scheme, such as 'https'.
        webhook_event_failover_url: nil,
        # The URL where webhooks related to this room composition will be sent. Must
        # include a scheme, such as 'https'.
        webhook_event_url: nil,
        # Specifies how many seconds to wait before timing out a webhook.
        webhook_timeout_secs: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            format_: T.nilable(String),
            resolution: T.nilable(String),
            session_id: T.nilable(String),
            video_layout: T::Hash[Symbol, Telnyx::VideoRegion],
            webhook_event_failover_url: T.nilable(String),
            webhook_event_url: String,
            webhook_timeout_secs: T.nilable(Integer),
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end

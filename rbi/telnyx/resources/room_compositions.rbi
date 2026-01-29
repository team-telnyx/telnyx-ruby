# typed: strong

module Telnyx
  module Resources
    class RoomCompositions
      # Asynchronously create a room composition.
      sig do
        params(
          format_: String,
          resolution: String,
          session_id: String,
          video_layout: T::Hash[Symbol, Telnyx::VideoRegion::OrHash],
          webhook_event_failover_url: String,
          webhook_event_url: String,
          webhook_timeout_secs: Integer,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::RoomCompositionCreateResponse)
      end
      def create(
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

      # View a room composition.
      sig do
        params(
          room_composition_id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::RoomCompositionRetrieveResponse)
      end
      def retrieve(
        # The unique identifier of a room composition.
        room_composition_id,
        request_options: {}
      )
      end

      # View a list of room compositions.
      sig do
        params(
          filter: Telnyx::RoomCompositionListParams::Filter::OrHash,
          page_number: Integer,
          page_size: Integer,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(
          Telnyx::Internal::DefaultFlatPagination[Telnyx::RoomComposition]
        )
      end
      def list(
        # Consolidated filter parameter (deepObject style). Originally:
        # filter[date_created_at][eq], filter[date_created_at][gte],
        # filter[date_created_at][lte], filter[session_id], filter[status]
        filter: nil,
        page_number: nil,
        page_size: nil,
        request_options: {}
      )
      end

      # Synchronously delete a room composition.
      sig do
        params(
          room_composition_id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).void
      end
      def delete(
        # The unique identifier of a room composition.
        room_composition_id,
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

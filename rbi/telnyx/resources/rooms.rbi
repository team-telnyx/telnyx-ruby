# typed: strong

module Telnyx
  module Resources
    class Rooms
      sig { returns(Telnyx::Resources::Rooms::Actions) }
      attr_reader :actions

      sig { returns(Telnyx::Resources::Rooms::Sessions) }
      attr_reader :sessions

      # Synchronously create a Room.
      sig do
        params(
          enable_recording: T::Boolean,
          max_participants: Integer,
          unique_name: String,
          webhook_event_failover_url: String,
          webhook_event_url: String,
          webhook_timeout_secs: Integer,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::RoomCreateResponse)
      end
      def create(
        # Enable or disable recording for that room.
        enable_recording: nil,
        # The maximum amount of participants allowed in a room. If new participants try to
        # join after that limit is reached, their request will be rejected.
        max_participants: nil,
        # The unique (within the Telnyx account scope) name of the room.
        unique_name: nil,
        # The failover URL where webhooks related to this room will be sent if sending to
        # the primary URL fails. Must include a scheme, such as 'https'.
        webhook_event_failover_url: nil,
        # The URL where webhooks related to this room will be sent. Must include a scheme,
        # such as 'https'.
        webhook_event_url: nil,
        # Specifies how many seconds to wait before timing out a webhook.
        webhook_timeout_secs: nil,
        request_options: {}
      )
      end

      # View a room.
      sig do
        params(
          room_id: String,
          include_sessions: T::Boolean,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::RoomRetrieveResponse)
      end
      def retrieve(
        # The unique identifier of a room.
        room_id,
        # To decide if room sessions should be included in the response.
        include_sessions: nil,
        request_options: {}
      )
      end

      # Synchronously update a Room.
      sig do
        params(
          room_id: String,
          enable_recording: T::Boolean,
          max_participants: Integer,
          unique_name: String,
          webhook_event_failover_url: String,
          webhook_event_url: String,
          webhook_timeout_secs: Integer,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::RoomUpdateResponse)
      end
      def update(
        # The unique identifier of a room.
        room_id,
        # Enable or disable recording for that room.
        enable_recording: nil,
        # The maximum amount of participants allowed in a room. If new participants try to
        # join after that limit is reached, their request will be rejected.
        max_participants: nil,
        # The unique (within the Telnyx account scope) name of the room.
        unique_name: nil,
        # The failover URL where webhooks related to this room will be sent if sending to
        # the primary URL fails. Must include a scheme, such as 'https'.
        webhook_event_failover_url: nil,
        # The URL where webhooks related to this room will be sent. Must include a scheme,
        # such as 'https'.
        webhook_event_url: nil,
        # Specifies how many seconds to wait before timing out a webhook.
        webhook_timeout_secs: nil,
        request_options: {}
      )
      end

      # View a list of rooms.
      sig do
        params(
          filter: Telnyx::RoomListParams::Filter::OrHash,
          include_sessions: T::Boolean,
          page: Telnyx::RoomListParams::Page::OrHash,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Internal::DefaultPagination[Telnyx::Room])
      end
      def list(
        # Consolidated filter parameter (deepObject style). Originally:
        # filter[date_created_at][eq], filter[date_created_at][gte],
        # filter[date_created_at][lte], filter[date_updated_at][eq],
        # filter[date_updated_at][gte], filter[date_updated_at][lte], filter[unique_name]
        filter: nil,
        # To decide if room sessions should be included in the response.
        include_sessions: nil,
        # Consolidated page parameter (deepObject style). Originally: page[size],
        # page[number]
        page: nil,
        request_options: {}
      )
      end

      # Synchronously delete a Room. Participants from that room will be kicked out,
      # they won't be able to join that room anymore, and you won't be charged anymore
      # for that room.
      sig do
        params(
          room_id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).void
      end
      def delete(
        # The unique identifier of a room.
        room_id,
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

# typed: strong

module Telnyx
  module Resources
    class RoomParticipants
      # View a room participant.
      sig do
        params(
          room_participant_id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::RoomParticipantRetrieveResponse)
      end
      def retrieve(
        # The unique identifier of a room participant.
        room_participant_id,
        request_options: {}
      )
      end

      # View a list of room participants.
      sig do
        params(
          filter: Telnyx::RoomParticipantListParams::Filter::OrHash,
          page: Telnyx::RoomParticipantListParams::Page::OrHash,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Internal::DefaultPagination[Telnyx::RoomParticipant])
      end
      def list(
        # Consolidated filter parameter (deepObject style). Originally:
        # filter[date_joined_at][eq], filter[date_joined_at][gte],
        # filter[date_joined_at][lte], filter[date_updated_at][eq],
        # filter[date_updated_at][gte], filter[date_updated_at][lte],
        # filter[date_left_at][eq], filter[date_left_at][gte], filter[date_left_at][lte],
        # filter[context], filter[session_id]
        filter: nil,
        # Consolidated page parameter (deepObject style). Originally: page[size],
        # page[number]
        page: nil,
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

# typed: strong

module Telnyx
  module Resources
    class RoomRecordings
      # View a room recording.
      sig do
        params(
          room_recording_id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::RoomRecordingRetrieveResponse)
      end
      def retrieve(
        # The unique identifier of a room recording.
        room_recording_id,
        request_options: {}
      )
      end

      # View a list of room recordings.
      sig do
        params(
          filter: Telnyx::RoomRecordingListParams::Filter::OrHash,
          page: Telnyx::RoomRecordingListParams::Page::OrHash,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(
          Telnyx::Internal::DefaultPagination[
            Telnyx::Models::RoomRecordingListResponse
          ]
        )
      end
      def list(
        # Consolidated filter parameter (deepObject style). Originally:
        # filter[date_ended_at][eq], filter[date_ended_at][gte],
        # filter[date_ended_at][lte], filter[date_started_at][eq],
        # filter[date_started_at][gte], filter[date_started_at][lte], filter[room_id],
        # filter[participant_id], filter[session_id], filter[status], filter[type],
        # filter[duration_secs]
        filter: nil,
        # Consolidated page parameter (deepObject style). Originally: page[size],
        # page[number]
        page: nil,
        request_options: {}
      )
      end

      # Synchronously delete a Room Recording.
      sig do
        params(
          room_recording_id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).void
      end
      def delete(
        # The unique identifier of a room recording.
        room_recording_id,
        request_options: {}
      )
      end

      # Delete several room recordings in a bulk.
      sig do
        params(
          filter: Telnyx::RoomRecordingDeleteBulkParams::Filter::OrHash,
          page: Telnyx::RoomRecordingDeleteBulkParams::Page::OrHash,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::RoomRecordingDeleteBulkResponse)
      end
      def delete_bulk(
        # Consolidated filter parameter (deepObject style). Originally:
        # filter[date_ended_at][eq], filter[date_ended_at][gte],
        # filter[date_ended_at][lte], filter[date_started_at][eq],
        # filter[date_started_at][gte], filter[date_started_at][lte], filter[room_id],
        # filter[participant_id], filter[session_id], filter[status], filter[type],
        # filter[duration_secs]
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

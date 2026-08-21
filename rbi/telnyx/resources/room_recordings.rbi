# typed: strong

module Telnyx
  module Resources
    # Rooms Recordings operations.
    class RoomRecordings
      # Returns the recording identified by `room_recording_id`, including its room,
      # session, participant, status, media details, lifecycle timestamps, and download
      # URL.
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

      # Returns a paginated list of room recordings. Filter recordings by room, session,
      # participant, recording type, status, duration, or start and end dates.
      sig do
        params(
          filter: Telnyx::RoomRecordingListParams::Filter::OrHash,
          page_number: Integer,
          page_size: Integer,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(
          Telnyx::Internal::DefaultFlatPagination[Telnyx::RoomRecording]
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
        page_number: nil,
        page_size: nil,
        request_options: {}
      )
      end

      # Synchronously deletes the specified video room recording. The recording's media
      # is removed permanently.
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

      # Deletes the room recordings that match the supplied filters and returns the
      # number of recordings affected. Filters support room, session, participant,
      # recording type, status, duration, and start or end dates.
      sig do
        params(
          filter: Telnyx::RoomRecordingDeleteBulkParams::Filter::OrHash,
          page_number: Integer,
          page_size: Integer,
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
        page_number: nil,
        page_size: nil,
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

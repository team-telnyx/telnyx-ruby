# typed: strong

module Telnyx
  module Resources
    class Recordings
      sig { returns(Telnyx::Resources::Recordings::Actions) }
      attr_reader :actions

      # Retrieves the details of an existing call recording.
      sig do
        params(
          recording_id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::RecordingRetrieveResponse)
      end
      def retrieve(
        # Uniquely identifies the recording by id.
        recording_id,
        request_options: {}
      )
      end

      # Returns a list of your call recordings.
      sig do
        params(
          filter: Telnyx::RecordingListParams::Filter::OrHash,
          page: Telnyx::RecordingListParams::Page::OrHash,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::RecordingListResponse)
      end
      def list(
        # Consolidated filter parameter (deepObject style). Originally:
        # filter[conference_id], filter[created_at][gte], filter[created_at][lte],
        # filter[call_leg_id], filter[call_session_id], filter[from], filter[to],
        # filter[connection_id]
        filter: nil,
        # Consolidated page parameter (deepObject style). Originally: page[size],
        # page[number]
        page: nil,
        request_options: {}
      )
      end

      # Permanently deletes a call recording.
      sig do
        params(
          recording_id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::RecordingDeleteResponse)
      end
      def delete(
        # Uniquely identifies the recording by id.
        recording_id,
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

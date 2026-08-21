# typed: strong

module Telnyx
  module Resources
    # Call Recordings operations.
    class Recordings
      # Call Recordings operations.
      sig { returns(Telnyx::Resources::Recordings::Actions) }
      attr_reader :actions

      # Retrieves the details of an existing call recording.
      sig do
        params(
          recording_id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::RecordingResponse)
      end
      def retrieve(
        # Uniquely identifies the recording by id.
        recording_id,
        request_options: {}
      )
      end

      # Returns a paginated list of your call recordings, with support for filtering to
      # locate specific recordings.
      sig do
        params(
          filter: Telnyx::RecordingListParams::Filter::OrHash,
          page_number: Integer,
          page_size: Integer,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(
          Telnyx::Internal::DefaultFlatPagination[Telnyx::RecordingResponseData]
        )
      end
      def list(
        # Filter recordings by various attributes.
        filter: nil,
        page_number: nil,
        page_size: nil,
        request_options: {}
      )
      end

      # Permanently deletes the specified call recording and returns the deleted
      # recording resource. The media is removed and can no longer be downloaded.
      sig do
        params(
          recording_id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::RecordingResponse)
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

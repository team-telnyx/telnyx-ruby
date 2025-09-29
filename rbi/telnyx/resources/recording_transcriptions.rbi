# typed: strong

module Telnyx
  module Resources
    class RecordingTranscriptions
      # Retrieves the details of an existing recording transcription.
      sig do
        params(
          recording_transcription_id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::RecordingTranscriptionRetrieveResponse)
      end
      def retrieve(
        # Uniquely identifies the recording transcription by id.
        recording_transcription_id,
        request_options: {}
      )
      end

      # Returns a list of your recording transcriptions.
      sig do
        params(request_options: Telnyx::RequestOptions::OrHash).returns(
          Telnyx::Models::RecordingTranscriptionListResponse
        )
      end
      def list(request_options: {})
      end

      # Permanently deletes a recording transcription.
      sig do
        params(
          recording_transcription_id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::RecordingTranscriptionDeleteResponse)
      end
      def delete(
        # Uniquely identifies the recording transcription by id.
        recording_transcription_id,
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

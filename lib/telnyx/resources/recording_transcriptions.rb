# frozen_string_literal: true

module Telnyx
  module Resources
    class RecordingTranscriptions
      # Retrieves the details of an existing recording transcription.
      #
      # @overload retrieve(recording_transcription_id, request_options: {})
      #
      # @param recording_transcription_id [String] Uniquely identifies the recording transcription by id.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::RecordingTranscriptionRetrieveResponse]
      #
      # @see Telnyx::Models::RecordingTranscriptionRetrieveParams
      def retrieve(recording_transcription_id, params = {})
        @client.request(
          method: :get,
          path: ["recording_transcriptions/%1$s", recording_transcription_id],
          model: Telnyx::Models::RecordingTranscriptionRetrieveResponse,
          options: params[:request_options]
        )
      end

      # Returns a list of your recording transcriptions.
      #
      # @overload list(request_options: {})
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::RecordingTranscriptionListResponse]
      #
      # @see Telnyx::Models::RecordingTranscriptionListParams
      def list(params = {})
        @client.request(
          method: :get,
          path: "recording_transcriptions",
          model: Telnyx::Models::RecordingTranscriptionListResponse,
          options: params[:request_options]
        )
      end

      # Permanently deletes a recording transcription.
      #
      # @overload delete(recording_transcription_id, request_options: {})
      #
      # @param recording_transcription_id [String] Uniquely identifies the recording transcription by id.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::RecordingTranscriptionDeleteResponse]
      #
      # @see Telnyx::Models::RecordingTranscriptionDeleteParams
      def delete(recording_transcription_id, params = {})
        @client.request(
          method: :delete,
          path: ["recording_transcriptions/%1$s", recording_transcription_id],
          model: Telnyx::Models::RecordingTranscriptionDeleteResponse,
          options: params[:request_options]
        )
      end

      # @api private
      #
      # @param client [Telnyx::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end

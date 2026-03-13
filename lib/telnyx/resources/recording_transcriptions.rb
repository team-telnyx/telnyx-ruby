# frozen_string_literal: true

module Telnyx
  module Resources
    # Call Recordings operations.
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
      # @overload list(filter: nil, page_number: nil, page_size: nil, request_options: {})
      #
      # @param filter [Telnyx::Models::RecordingTranscriptionListParams::Filter] Filter recording transcriptions by various attributes.
      #
      # @param page_number [Integer]
      #
      # @param page_size [Integer]
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Internal::DefaultFlatPagination<Telnyx::Models::RecordingTranscription>]
      #
      # @see Telnyx::Models::RecordingTranscriptionListParams
      def list(params = {})
        parsed, options = Telnyx::RecordingTranscriptionListParams.dump_request(params)
        query = Telnyx::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "recording_transcriptions",
          query: query.transform_keys(page_number: "page[number]", page_size: "page[size]"),
          page: Telnyx::Internal::DefaultFlatPagination,
          model: Telnyx::RecordingTranscription,
          options: options
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

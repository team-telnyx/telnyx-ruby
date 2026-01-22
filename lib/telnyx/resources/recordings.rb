# frozen_string_literal: true

module Telnyx
  module Resources
    class Recordings
      # @return [Telnyx::Resources::Recordings::Actions]
      attr_reader :actions

      # Retrieves the details of an existing call recording.
      #
      # @overload retrieve(recording_id, request_options: {})
      #
      # @param recording_id [String] Uniquely identifies the recording by id.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::RecordingRetrieveResponse]
      #
      # @see Telnyx::Models::RecordingRetrieveParams
      def retrieve(recording_id, params = {})
        @client.request(
          method: :get,
          path: ["recordings/%1$s", recording_id],
          model: Telnyx::Models::RecordingRetrieveResponse,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::RecordingListParams} for more details.
      #
      # Returns a list of your call recordings.
      #
      # @overload list(filter: nil, page: nil, request_options: {})
      #
      # @param filter [Telnyx::Models::RecordingListParams::Filter] Consolidated filter parameter (deepObject style). Originally:
      # filter[conference\_
      #
      # @param page [Telnyx::Models::RecordingListParams::Page] Consolidated page parameter (deepObject style). Originally: page[size], page[num
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Internal::DefaultPagination<Telnyx::Models::RecordingResponseData>]
      #
      # @see Telnyx::Models::RecordingListParams
      def list(params = {})
        parsed, options = Telnyx::RecordingListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "recordings",
          query: parsed,
          page: Telnyx::Internal::DefaultPagination,
          model: Telnyx::RecordingResponseData,
          options: options
        )
      end

      # Permanently deletes a call recording.
      #
      # @overload delete(recording_id, request_options: {})
      #
      # @param recording_id [String] Uniquely identifies the recording by id.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::RecordingDeleteResponse]
      #
      # @see Telnyx::Models::RecordingDeleteParams
      def delete(recording_id, params = {})
        @client.request(
          method: :delete,
          path: ["recordings/%1$s", recording_id],
          model: Telnyx::Models::RecordingDeleteResponse,
          options: params[:request_options]
        )
      end

      # @api private
      #
      # @param client [Telnyx::Client]
      def initialize(client:)
        @client = client
        @actions = Telnyx::Resources::Recordings::Actions.new(client: client)
      end
    end
  end
end

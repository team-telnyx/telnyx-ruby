# frozen_string_literal: true

module Telnyx
  module Resources
    class RoomRecordings
      # View a room recording.
      #
      # @overload retrieve(room_recording_id, request_options: {})
      #
      # @param room_recording_id [String] The unique identifier of a room recording.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::RoomRecordingRetrieveResponse]
      #
      # @see Telnyx::Models::RoomRecordingRetrieveParams
      def retrieve(room_recording_id, params = {})
        @client.request(
          method: :get,
          path: ["room_recordings/%1$s", room_recording_id],
          model: Telnyx::Models::RoomRecordingRetrieveResponse,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::RoomRecordingListParams} for more details.
      #
      # View a list of room recordings.
      #
      # @overload list(filter: nil, page: nil, request_options: {})
      #
      # @param filter [Telnyx::Models::RoomRecordingListParams::Filter] Consolidated filter parameter (deepObject style). Originally: filter[date*ended*
      #
      # @param page [Telnyx::Models::RoomRecordingListParams::Page] Consolidated page parameter (deepObject style). Originally: page[size], page[num
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::RoomRecordingListResponse]
      #
      # @see Telnyx::Models::RoomRecordingListParams
      def list(params = {})
        parsed, options = Telnyx::RoomRecordingListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "room_recordings",
          query: parsed,
          model: Telnyx::Models::RoomRecordingListResponse,
          options: options
        )
      end

      # Synchronously delete a Room Recording.
      #
      # @overload delete(room_recording_id, request_options: {})
      #
      # @param room_recording_id [String] The unique identifier of a room recording.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [nil]
      #
      # @see Telnyx::Models::RoomRecordingDeleteParams
      def delete(room_recording_id, params = {})
        @client.request(
          method: :delete,
          path: ["room_recordings/%1$s", room_recording_id],
          model: NilClass,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::RoomRecordingDeleteBulkParams} for more details.
      #
      # Delete several room recordings in a bulk.
      #
      # @overload delete_bulk(filter: nil, page: nil, request_options: {})
      #
      # @param filter [Telnyx::Models::RoomRecordingDeleteBulkParams::Filter] Consolidated filter parameter (deepObject style). Originally: filter[date*ended*
      #
      # @param page [Telnyx::Models::RoomRecordingDeleteBulkParams::Page] Consolidated page parameter (deepObject style). Originally: page[size], page[num
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::RoomRecordingDeleteBulkResponse]
      #
      # @see Telnyx::Models::RoomRecordingDeleteBulkParams
      def delete_bulk(params = {})
        parsed, options = Telnyx::RoomRecordingDeleteBulkParams.dump_request(params)
        @client.request(
          method: :delete,
          path: "room_recordings",
          query: parsed,
          model: Telnyx::Models::RoomRecordingDeleteBulkResponse,
          options: options
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

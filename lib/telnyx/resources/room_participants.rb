# frozen_string_literal: true

module Telnyx
  module Resources
    class RoomParticipants
      # View a room participant.
      #
      # @overload retrieve(room_participant_id, request_options: {})
      #
      # @param room_participant_id [String] The unique identifier of a room participant.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::RoomParticipantRetrieveResponse]
      #
      # @see Telnyx::Models::RoomParticipantRetrieveParams
      def retrieve(room_participant_id, params = {})
        @client.request(
          method: :get,
          path: ["room_participants/%1$s", room_participant_id],
          model: Telnyx::Models::RoomParticipantRetrieveResponse,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::RoomParticipantListParams} for more details.
      #
      # View a list of room participants.
      #
      # @overload list(filter: nil, page_number: nil, page_size: nil, request_options: {})
      #
      # @param filter [Telnyx::Models::RoomParticipantListParams::Filter] Consolidated filter parameter (deepObject style). Originally: filter[date_joined
      #
      # @param page_number [Integer]
      #
      # @param page_size [Integer]
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Internal::DefaultFlatPagination<Telnyx::Models::RoomParticipant>]
      #
      # @see Telnyx::Models::RoomParticipantListParams
      def list(params = {})
        parsed, options = Telnyx::RoomParticipantListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "room_participants",
          query: parsed.transform_keys(page_number: "page[number]", page_size: "page[size]"),
          page: Telnyx::Internal::DefaultFlatPagination,
          model: Telnyx::RoomParticipant,
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

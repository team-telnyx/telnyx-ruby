# frozen_string_literal: true

module Telnyx
  module Resources
    class RoomCompositions
      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::RoomCompositionCreateParams} for more details.
      #
      # Asynchronously create a room composition.
      #
      # @overload create(format_: nil, resolution: nil, session_id: nil, video_layout: nil, webhook_event_failover_url: nil, webhook_event_url: nil, webhook_timeout_secs: nil, request_options: {})
      #
      # @param format_ [String, nil] The desired format of the room composition.
      #
      # @param resolution [String, nil] The desired resolution (width/height in pixels) of the resulting video of the ro
      #
      # @param session_id [String, nil] id of the room session associated with the room composition.
      #
      # @param video_layout [Hash{Symbol=>Telnyx::Models::VideoRegion}] Describes the video layout of the room composition in terms of regions.
      #
      # @param webhook_event_failover_url [String, nil] The failover URL where webhooks related to this room composition will be sent if
      #
      # @param webhook_event_url [String] The URL where webhooks related to this room composition will be sent. Must inclu
      #
      # @param webhook_timeout_secs [Integer, nil] Specifies how many seconds to wait before timing out a webhook.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::RoomCompositionCreateResponse]
      #
      # @see Telnyx::Models::RoomCompositionCreateParams
      def create(params = {})
        parsed, options = Telnyx::RoomCompositionCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "room_compositions",
          body: parsed,
          model: Telnyx::Models::RoomCompositionCreateResponse,
          options: options
        )
      end

      # View a room composition.
      #
      # @overload retrieve(room_composition_id, request_options: {})
      #
      # @param room_composition_id [String] The unique identifier of a room composition.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::RoomCompositionRetrieveResponse]
      #
      # @see Telnyx::Models::RoomCompositionRetrieveParams
      def retrieve(room_composition_id, params = {})
        @client.request(
          method: :get,
          path: ["room_compositions/%1$s", room_composition_id],
          model: Telnyx::Models::RoomCompositionRetrieveResponse,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::RoomCompositionListParams} for more details.
      #
      # View a list of room compositions.
      #
      # @overload list(filter: nil, page: nil, request_options: {})
      #
      # @param filter [Telnyx::Models::RoomCompositionListParams::Filter] Consolidated filter parameter (deepObject style). Originally: filter[date_create
      #
      # @param page [Telnyx::Models::RoomCompositionListParams::Page] Consolidated page parameter (deepObject style). Originally: page[size], page[num
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::RoomCompositionListResponse]
      #
      # @see Telnyx::Models::RoomCompositionListParams
      def list(params = {})
        parsed, options = Telnyx::RoomCompositionListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "room_compositions",
          query: parsed,
          model: Telnyx::Models::RoomCompositionListResponse,
          options: options
        )
      end

      # Synchronously delete a room composition.
      #
      # @overload delete(room_composition_id, request_options: {})
      #
      # @param room_composition_id [String] The unique identifier of a room composition.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [nil]
      #
      # @see Telnyx::Models::RoomCompositionDeleteParams
      def delete(room_composition_id, params = {})
        @client.request(
          method: :delete,
          path: ["room_compositions/%1$s", room_composition_id],
          model: NilClass,
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

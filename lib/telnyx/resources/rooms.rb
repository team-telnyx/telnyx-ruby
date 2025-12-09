# frozen_string_literal: true

module Telnyx
  module Resources
    class Rooms
      # @return [Telnyx::Resources::Rooms::Actions]
      attr_reader :actions

      # @return [Telnyx::Resources::Rooms::Sessions]
      attr_reader :sessions

      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::RoomCreateParams} for more details.
      #
      # Synchronously create a Room.
      #
      # @overload create(enable_recording: nil, max_participants: nil, unique_name: nil, webhook_event_failover_url: nil, webhook_event_url: nil, webhook_timeout_secs: nil, request_options: {})
      #
      # @param enable_recording [Boolean] Enable or disable recording for that room.
      #
      # @param max_participants [Integer] The maximum amount of participants allowed in a room. If new participants try to
      #
      # @param unique_name [String] The unique (within the Telnyx account scope) name of the room.
      #
      # @param webhook_event_failover_url [String, nil] The failover URL where webhooks related to this room will be sent if sending to
      #
      # @param webhook_event_url [String] The URL where webhooks related to this room will be sent. Must include a scheme,
      #
      # @param webhook_timeout_secs [Integer, nil] Specifies how many seconds to wait before timing out a webhook.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::RoomCreateResponse]
      #
      # @see Telnyx::Models::RoomCreateParams
      def create(params = {})
        parsed, options = Telnyx::RoomCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "rooms",
          body: parsed,
          model: Telnyx::Models::RoomCreateResponse,
          options: options
        )
      end

      # View a room.
      #
      # @overload retrieve(room_id, include_sessions: nil, request_options: {})
      #
      # @param room_id [String] The unique identifier of a room.
      #
      # @param include_sessions [Boolean] To decide if room sessions should be included in the response.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::RoomRetrieveResponse]
      #
      # @see Telnyx::Models::RoomRetrieveParams
      def retrieve(room_id, params = {})
        parsed, options = Telnyx::RoomRetrieveParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["rooms/%1$s", room_id],
          query: parsed,
          model: Telnyx::Models::RoomRetrieveResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::RoomUpdateParams} for more details.
      #
      # Synchronously update a Room.
      #
      # @overload update(room_id, enable_recording: nil, max_participants: nil, unique_name: nil, webhook_event_failover_url: nil, webhook_event_url: nil, webhook_timeout_secs: nil, request_options: {})
      #
      # @param room_id [String] The unique identifier of a room.
      #
      # @param enable_recording [Boolean] Enable or disable recording for that room.
      #
      # @param max_participants [Integer] The maximum amount of participants allowed in a room. If new participants try to
      #
      # @param unique_name [String] The unique (within the Telnyx account scope) name of the room.
      #
      # @param webhook_event_failover_url [String, nil] The failover URL where webhooks related to this room will be sent if sending to
      #
      # @param webhook_event_url [String] The URL where webhooks related to this room will be sent. Must include a scheme,
      #
      # @param webhook_timeout_secs [Integer, nil] Specifies how many seconds to wait before timing out a webhook.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::RoomUpdateResponse]
      #
      # @see Telnyx::Models::RoomUpdateParams
      def update(room_id, params = {})
        parsed, options = Telnyx::RoomUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["rooms/%1$s", room_id],
          body: parsed,
          model: Telnyx::Models::RoomUpdateResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::RoomListParams} for more details.
      #
      # View a list of rooms.
      #
      # @overload list(filter: nil, include_sessions: nil, page: nil, request_options: {})
      #
      # @param filter [Telnyx::Models::RoomListParams::Filter] Consolidated filter parameter (deepObject style). Originally: filter[date_create
      #
      # @param include_sessions [Boolean] To decide if room sessions should be included in the response.
      #
      # @param page [Telnyx::Models::RoomListParams::Page] Consolidated page parameter (deepObject style). Originally: page[size], page[num
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Internal::DefaultPagination<Telnyx::Models::Room>]
      #
      # @see Telnyx::Models::RoomListParams
      def list(params = {})
        parsed, options = Telnyx::RoomListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "rooms",
          query: parsed,
          page: Telnyx::Internal::DefaultPagination,
          model: Telnyx::Room,
          options: options
        )
      end

      # Synchronously delete a Room. Participants from that room will be kicked out,
      # they won't be able to join that room anymore, and you won't be charged anymore
      # for that room.
      #
      # @overload delete(room_id, request_options: {})
      #
      # @param room_id [String] The unique identifier of a room.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [nil]
      #
      # @see Telnyx::Models::RoomDeleteParams
      def delete(room_id, params = {})
        @client.request(
          method: :delete,
          path: ["rooms/%1$s", room_id],
          model: NilClass,
          options: params[:request_options]
        )
      end

      # @api private
      #
      # @param client [Telnyx::Client]
      def initialize(client:)
        @client = client
        @actions = Telnyx::Resources::Rooms::Actions.new(client: client)
        @sessions = Telnyx::Resources::Rooms::Sessions.new(client: client)
      end
    end
  end
end

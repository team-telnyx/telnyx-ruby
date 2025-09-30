# frozen_string_literal: true

module Telnyx
  module Resources
    class Rooms
      class Sessions
        # @return [Telnyx::Resources::Rooms::Sessions::Actions]
        attr_reader :actions

        # View a room session.
        #
        # @overload retrieve(room_session_id, include_participants: nil, request_options: {})
        #
        # @param room_session_id [String] The unique identifier of a room session.
        #
        # @param include_participants [Boolean] To decide if room participants should be included in the response.
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Rooms::SessionRetrieveResponse]
        #
        # @see Telnyx::Models::Rooms::SessionRetrieveParams
        def retrieve(room_session_id, params = {})
          parsed, options = Telnyx::Rooms::SessionRetrieveParams.dump_request(params)
          @client.request(
            method: :get,
            path: ["room_sessions/%1$s", room_session_id],
            query: parsed,
            model: Telnyx::Models::Rooms::SessionRetrieveResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::Rooms::SessionList0Params} for more details.
        #
        # View a list of room sessions.
        #
        # @overload list_0(filter: nil, include_participants: nil, page: nil, request_options: {})
        #
        # @param filter [Telnyx::Models::Rooms::SessionList0Params::Filter] Consolidated filter parameter (deepObject style). Originally: filter[date_create
        #
        # @param include_participants [Boolean] To decide if room participants should be included in the response.
        #
        # @param page [Telnyx::Models::Rooms::SessionList0Params::Page] Consolidated page parameter (deepObject style). Originally: page[size], page[num
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Rooms::SessionList0Response]
        #
        # @see Telnyx::Models::Rooms::SessionList0Params
        def list_0(params = {})
          parsed, options = Telnyx::Rooms::SessionList0Params.dump_request(params)
          @client.request(
            method: :get,
            path: "room_sessions",
            query: parsed,
            model: Telnyx::Models::Rooms::SessionList0Response,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::Rooms::SessionList1Params} for more details.
        #
        # View a list of room sessions.
        #
        # @overload list_1(room_id, filter: nil, include_participants: nil, page: nil, request_options: {})
        #
        # @param room_id [String] The unique identifier of a room.
        #
        # @param filter [Telnyx::Models::Rooms::SessionList1Params::Filter] Consolidated filter parameter (deepObject style). Originally: filter[date_create
        #
        # @param include_participants [Boolean] To decide if room participants should be included in the response.
        #
        # @param page [Telnyx::Models::Rooms::SessionList1Params::Page] Consolidated page parameter (deepObject style). Originally: page[size], page[num
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Rooms::SessionList1Response]
        #
        # @see Telnyx::Models::Rooms::SessionList1Params
        def list_1(room_id, params = {})
          parsed, options = Telnyx::Rooms::SessionList1Params.dump_request(params)
          @client.request(
            method: :get,
            path: ["rooms/%1$s/sessions", room_id],
            query: parsed,
            model: Telnyx::Models::Rooms::SessionList1Response,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::Rooms::SessionRetrieveParticipantsParams} for more details.
        #
        # View a list of room participants.
        #
        # @overload retrieve_participants(room_session_id, filter: nil, page: nil, request_options: {})
        #
        # @param room_session_id [String] The unique identifier of a room session.
        #
        # @param filter [Telnyx::Models::Rooms::SessionRetrieveParticipantsParams::Filter] Consolidated filter parameter (deepObject style). Originally: filter[date_joined
        #
        # @param page [Telnyx::Models::Rooms::SessionRetrieveParticipantsParams::Page] Consolidated page parameter (deepObject style). Originally: page[size], page[num
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Rooms::SessionRetrieveParticipantsResponse]
        #
        # @see Telnyx::Models::Rooms::SessionRetrieveParticipantsParams
        def retrieve_participants(room_session_id, params = {})
          parsed, options = Telnyx::Rooms::SessionRetrieveParticipantsParams.dump_request(params)
          @client.request(
            method: :get,
            path: ["room_sessions/%1$s/participants", room_session_id],
            query: parsed,
            model: Telnyx::Models::Rooms::SessionRetrieveParticipantsResponse,
            options: options
          )
        end

        # @api private
        #
        # @param client [Telnyx::Client]
        def initialize(client:)
          @client = client
          @actions = Telnyx::Resources::Rooms::Sessions::Actions.new(client: client)
        end
      end
    end
  end
end

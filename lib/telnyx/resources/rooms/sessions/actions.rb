# frozen_string_literal: true

module Telnyx
  module Resources
    class Rooms
      class Sessions
        class Actions
          # Note: this will also kick all participants currently present in the room
          #
          # @overload end_(room_session_id, request_options: {})
          #
          # @param room_session_id [String] The unique identifier of a room session.
          #
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Telnyx::Models::Rooms::Sessions::ActionEndResponse]
          #
          # @see Telnyx::Models::Rooms::Sessions::ActionEndParams
          def end_(room_session_id, params = {})
            @client.request(
              method: :post,
              path: ["room_sessions/%1$s/actions/end", room_session_id],
              model: Telnyx::Models::Rooms::Sessions::ActionEndResponse,
              options: params[:request_options]
            )
          end

          # Some parameter documentations has been truncated, see
          # {Telnyx::Models::Rooms::Sessions::ActionKickParams} for more details.
          #
          # Kick participants from a room session.
          #
          # @overload kick(room_session_id, exclude: nil, participants: nil, request_options: {})
          #
          # @param room_session_id [String] The unique identifier of a room session.
          #
          # @param exclude [Array<String>] List of participant id to exclude from the action.
          #
          # @param participants [Symbol, Telnyx::Models::Rooms::Sessions::ActionsParticipantsRequest::Participants::AllParticipants, Array<String>] Either a list of participant id to perform the action on, or the keyword "all" t
          #
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Telnyx::Models::Rooms::Sessions::ActionKickResponse]
          #
          # @see Telnyx::Models::Rooms::Sessions::ActionKickParams
          def kick(room_session_id, params = {})
            parsed, options = Telnyx::Rooms::Sessions::ActionKickParams.dump_request(params)
            @client.request(
              method: :post,
              path: ["room_sessions/%1$s/actions/kick", room_session_id],
              body: parsed,
              model: Telnyx::Models::Rooms::Sessions::ActionKickResponse,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {Telnyx::Models::Rooms::Sessions::ActionMuteParams} for more details.
          #
          # Mute participants in room session.
          #
          # @overload mute(room_session_id, exclude: nil, participants: nil, request_options: {})
          #
          # @param room_session_id [String] The unique identifier of a room session.
          #
          # @param exclude [Array<String>] List of participant id to exclude from the action.
          #
          # @param participants [Symbol, Telnyx::Models::Rooms::Sessions::ActionsParticipantsRequest::Participants::AllParticipants, Array<String>] Either a list of participant id to perform the action on, or the keyword "all" t
          #
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Telnyx::Models::Rooms::Sessions::ActionMuteResponse]
          #
          # @see Telnyx::Models::Rooms::Sessions::ActionMuteParams
          def mute(room_session_id, params = {})
            parsed, options = Telnyx::Rooms::Sessions::ActionMuteParams.dump_request(params)
            @client.request(
              method: :post,
              path: ["room_sessions/%1$s/actions/mute", room_session_id],
              body: parsed,
              model: Telnyx::Models::Rooms::Sessions::ActionMuteResponse,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {Telnyx::Models::Rooms::Sessions::ActionUnmuteParams} for more details.
          #
          # Unmute participants in room session.
          #
          # @overload unmute(room_session_id, exclude: nil, participants: nil, request_options: {})
          #
          # @param room_session_id [String] The unique identifier of a room session.
          #
          # @param exclude [Array<String>] List of participant id to exclude from the action.
          #
          # @param participants [Symbol, Telnyx::Models::Rooms::Sessions::ActionsParticipantsRequest::Participants::AllParticipants, Array<String>] Either a list of participant id to perform the action on, or the keyword "all" t
          #
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Telnyx::Models::Rooms::Sessions::ActionUnmuteResponse]
          #
          # @see Telnyx::Models::Rooms::Sessions::ActionUnmuteParams
          def unmute(room_session_id, params = {})
            parsed, options = Telnyx::Rooms::Sessions::ActionUnmuteParams.dump_request(params)
            @client.request(
              method: :post,
              path: ["room_sessions/%1$s/actions/unmute", room_session_id],
              body: parsed,
              model: Telnyx::Models::Rooms::Sessions::ActionUnmuteResponse,
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
  end
end

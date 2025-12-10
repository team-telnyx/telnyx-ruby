# typed: strong

module Telnyx
  module Resources
    class Rooms
      class Sessions
        class Actions
          # Note: this will also kick all participants currently present in the room
          sig do
            params(
              room_session_id: String,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(Telnyx::Models::Rooms::Sessions::ActionEndResponse)
          end
          def end_(
            # The unique identifier of a room session.
            room_session_id,
            request_options: {}
          )
          end

          # Kick participants from a room session.
          sig do
            params(
              room_session_id: String,
              exclude: T::Array[String],
              participants:
                T.any(
                  Telnyx::Rooms::Sessions::ActionsParticipantsRequest::Participants::OrSymbol,
                  T::Array[String]
                ),
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(Telnyx::Models::Rooms::Sessions::ActionKickResponse)
          end
          def kick(
            # The unique identifier of a room session.
            room_session_id,
            # List of participant id to exclude from the action.
            exclude: nil,
            # Either a list of participant id to perform the action on, or the keyword "all"
            # to perform the action on all participant.
            participants: nil,
            request_options: {}
          )
          end

          # Mute participants in room session.
          sig do
            params(
              room_session_id: String,
              exclude: T::Array[String],
              participants:
                T.any(
                  Telnyx::Rooms::Sessions::ActionsParticipantsRequest::Participants::OrSymbol,
                  T::Array[String]
                ),
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(Telnyx::Models::Rooms::Sessions::ActionMuteResponse)
          end
          def mute(
            # The unique identifier of a room session.
            room_session_id,
            # List of participant id to exclude from the action.
            exclude: nil,
            # Either a list of participant id to perform the action on, or the keyword "all"
            # to perform the action on all participant.
            participants: nil,
            request_options: {}
          )
          end

          # Unmute participants in room session.
          sig do
            params(
              room_session_id: String,
              exclude: T::Array[String],
              participants:
                T.any(
                  Telnyx::Rooms::Sessions::ActionsParticipantsRequest::Participants::OrSymbol,
                  T::Array[String]
                ),
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(Telnyx::Models::Rooms::Sessions::ActionUnmuteResponse)
          end
          def unmute(
            # The unique identifier of a room session.
            room_session_id,
            # List of participant id to exclude from the action.
            exclude: nil,
            # Either a list of participant id to perform the action on, or the keyword "all"
            # to perform the action on all participant.
            participants: nil,
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
  end
end

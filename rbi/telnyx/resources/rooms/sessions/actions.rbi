# typed: strong

module Telnyx
  module Resources
    class Rooms
      class Sessions
        # Rooms Sessions operations.
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

          # Removes the selected participants from the specified room session. Apply the
          # action to a list of participant IDs or to `all`, with optional participant IDs
          # excluded from the action.
          sig do
            params(
              room_session_id: String,
              exclude: T::Array[String],
              participants:
                T.any(
                  Telnyx::Rooms::Sessions::ActionsParticipantsRequest::Participants::AllParticipants::OrSymbol,
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

          # Mutes the selected participants in the specified room session. Apply the action
          # to a list of participant IDs or to `all`, with optional participant IDs excluded
          # from the action.
          sig do
            params(
              room_session_id: String,
              exclude: T::Array[String],
              participants:
                T.any(
                  Telnyx::Rooms::Sessions::ActionsParticipantsRequest::Participants::AllParticipants::OrSymbol,
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

          # Unmutes the selected participants in the specified room session. Apply the
          # action to a list of participant IDs or to `all`, with optional participant IDs
          # excluded from the action.
          sig do
            params(
              room_session_id: String,
              exclude: T::Array[String],
              participants:
                T.any(
                  Telnyx::Rooms::Sessions::ActionsParticipantsRequest::Participants::AllParticipants::OrSymbol,
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

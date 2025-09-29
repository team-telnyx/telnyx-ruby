# frozen_string_literal: true

module Telnyx
  module Models
    module Texml
      module Accounts
        module Conferences
          # @see Telnyx::Resources::Texml::Accounts::Conferences::Participants#participants
          class ParticipantParticipantsResponse < Telnyx::Internal::Type::BaseModel
            # @!attribute account_sid
            #   The id of the account the resource belongs to.
            #
            #   @return [String, nil]
            optional :account_sid, String

            # @!attribute call_sid
            #   The identifier of this participant's call.
            #
            #   @return [String, nil]
            optional :call_sid, String

            # @!attribute coaching
            #   Whether the participant is coaching another call.
            #
            #   @return [Boolean, nil]
            optional :coaching, Telnyx::Internal::Type::Boolean

            # @!attribute coaching_call_sid
            #   The identifier of the coached participant's call.
            #
            #   @return [String, nil]
            optional :coaching_call_sid, String

            # @!attribute end_conference_on_exit
            #   Whether the conference ends when the participant leaves.
            #
            #   @return [Boolean, nil]
            optional :end_conference_on_exit, Telnyx::Internal::Type::Boolean

            # @!attribute hold
            #   Whether the participant is on hold.
            #
            #   @return [Boolean, nil]
            optional :hold, Telnyx::Internal::Type::Boolean

            # @!attribute muted
            #   Whether the participant is muted.
            #
            #   @return [Boolean, nil]
            optional :muted, Telnyx::Internal::Type::Boolean

            # @!attribute status
            #   The status of the participant's call in the conference.
            #
            #   @return [Symbol, Telnyx::Models::Texml::Accounts::Conferences::ParticipantParticipantsResponse::Status, nil]
            optional :status,
                     enum: -> { Telnyx::Models::Texml::Accounts::Conferences::ParticipantParticipantsResponse::Status }

            # @!attribute uri
            #   The relative URI for this participant.
            #
            #   @return [String, nil]
            optional :uri, String

            # @!method initialize(account_sid: nil, call_sid: nil, coaching: nil, coaching_call_sid: nil, end_conference_on_exit: nil, hold: nil, muted: nil, status: nil, uri: nil)
            #   @param account_sid [String] The id of the account the resource belongs to.
            #
            #   @param call_sid [String] The identifier of this participant's call.
            #
            #   @param coaching [Boolean] Whether the participant is coaching another call.
            #
            #   @param coaching_call_sid [String] The identifier of the coached participant's call.
            #
            #   @param end_conference_on_exit [Boolean] Whether the conference ends when the participant leaves.
            #
            #   @param hold [Boolean] Whether the participant is on hold.
            #
            #   @param muted [Boolean] Whether the participant is muted.
            #
            #   @param status [Symbol, Telnyx::Models::Texml::Accounts::Conferences::ParticipantParticipantsResponse::Status] The status of the participant's call in the conference.
            #
            #   @param uri [String] The relative URI for this participant.

            # The status of the participant's call in the conference.
            #
            # @see Telnyx::Models::Texml::Accounts::Conferences::ParticipantParticipantsResponse#status
            module Status
              extend Telnyx::Internal::Type::Enum

              CONNECTING = :connecting
              CONNECTED = :connected
              COMPLETED = :completed

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end
        end
      end
    end
  end
end

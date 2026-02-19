# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::Conferences#retrieve_participant
    class ConferenceRetrieveParticipantResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::ConferenceRetrieveParticipantResponse::Data, nil]
      optional :data, -> { Telnyx::Models::ConferenceRetrieveParticipantResponse::Data }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::ConferenceRetrieveParticipantResponse::Data]

      # @see Telnyx::Models::ConferenceRetrieveParticipantResponse#data
      class Data < Telnyx::Internal::Type::BaseModel
        # @!attribute id
        #   Uniquely identifies the participant.
        #
        #   @return [String, nil]
        optional :id, String

        # @!attribute call_control_id
        #   Unique identifier and token for controlling the participant's call leg.
        #
        #   @return [String, nil]
        optional :call_control_id, String

        # @!attribute call_leg_id
        #   Unique identifier for the call leg.
        #
        #   @return [String, nil]
        optional :call_leg_id, String

        # @!attribute conference_id
        #   Unique identifier for the conference.
        #
        #   @return [String, nil]
        optional :conference_id, String

        # @!attribute created_at
        #   Timestamp when the participant joined.
        #
        #   @return [Time, nil]
        optional :created_at, Time

        # @!attribute end_conference_on_exit
        #   Whether the conference ends when this participant exits.
        #
        #   @return [Boolean, nil]
        optional :end_conference_on_exit, Telnyx::Internal::Type::Boolean

        # @!attribute label
        #   Label assigned to the participant when joining.
        #
        #   @return [String, nil]
        optional :label, String

        # @!attribute muted
        #   Whether the participant is muted.
        #
        #   @return [Boolean, nil]
        optional :muted, Telnyx::Internal::Type::Boolean

        # @!attribute on_hold
        #   Whether the participant is on hold.
        #
        #   @return [Boolean, nil]
        optional :on_hold, Telnyx::Internal::Type::Boolean

        # @!attribute soft_end_conference_on_exit
        #   Whether the conference soft-ends when this participant exits.
        #
        #   @return [Boolean, nil]
        optional :soft_end_conference_on_exit, Telnyx::Internal::Type::Boolean

        # @!attribute status
        #   Status of the participant.
        #
        #   @return [Symbol, Telnyx::Models::ConferenceRetrieveParticipantResponse::Data::Status, nil]
        optional :status, enum: -> { Telnyx::Models::ConferenceRetrieveParticipantResponse::Data::Status }

        # @!attribute updated_at
        #   Timestamp when the participant was last updated.
        #
        #   @return [Time, nil]
        optional :updated_at, Time

        # @!attribute whisper_call_control_ids
        #   List of call control IDs this participant is whispering to.
        #
        #   @return [Array<String>, nil]
        optional :whisper_call_control_ids, Telnyx::Internal::Type::ArrayOf[String]

        # @!method initialize(id: nil, call_control_id: nil, call_leg_id: nil, conference_id: nil, created_at: nil, end_conference_on_exit: nil, label: nil, muted: nil, on_hold: nil, soft_end_conference_on_exit: nil, status: nil, updated_at: nil, whisper_call_control_ids: nil)
        #   @param id [String] Uniquely identifies the participant.
        #
        #   @param call_control_id [String] Unique identifier and token for controlling the participant's call leg.
        #
        #   @param call_leg_id [String] Unique identifier for the call leg.
        #
        #   @param conference_id [String] Unique identifier for the conference.
        #
        #   @param created_at [Time] Timestamp when the participant joined.
        #
        #   @param end_conference_on_exit [Boolean] Whether the conference ends when this participant exits.
        #
        #   @param label [String] Label assigned to the participant when joining.
        #
        #   @param muted [Boolean] Whether the participant is muted.
        #
        #   @param on_hold [Boolean] Whether the participant is on hold.
        #
        #   @param soft_end_conference_on_exit [Boolean] Whether the conference soft-ends when this participant exits.
        #
        #   @param status [Symbol, Telnyx::Models::ConferenceRetrieveParticipantResponse::Data::Status] Status of the participant.
        #
        #   @param updated_at [Time] Timestamp when the participant was last updated.
        #
        #   @param whisper_call_control_ids [Array<String>] List of call control IDs this participant is whispering to.

        # Status of the participant.
        #
        # @see Telnyx::Models::ConferenceRetrieveParticipantResponse::Data#status
        module Status
          extend Telnyx::Internal::Type::Enum

          JOINING = :joining
          JOINED = :joined
          LEFT = :left

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end

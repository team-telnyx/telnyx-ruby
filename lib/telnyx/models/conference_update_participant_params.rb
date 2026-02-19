# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::Conferences#update_participant
    class ConferenceUpdateParticipantParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute beep_enabled
      #   Whether entry/exit beeps are enabled for this participant.
      #
      #   @return [Symbol, Telnyx::Models::ConferenceUpdateParticipantParams::BeepEnabled, nil]
      optional :beep_enabled, enum: -> { Telnyx::ConferenceUpdateParticipantParams::BeepEnabled }

      # @!attribute end_conference_on_exit
      #   Whether the conference should end when this participant exits.
      #
      #   @return [Boolean, nil]
      optional :end_conference_on_exit, Telnyx::Internal::Type::Boolean

      # @!attribute soft_end_conference_on_exit
      #   Whether the conference should soft-end when this participant exits. A soft end
      #   will stop new participants from joining but allow existing participants to
      #   remain.
      #
      #   @return [Boolean, nil]
      optional :soft_end_conference_on_exit, Telnyx::Internal::Type::Boolean

      # @!method initialize(id:, beep_enabled: nil, end_conference_on_exit: nil, soft_end_conference_on_exit: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::ConferenceUpdateParticipantParams} for more details.
      #
      #   @param id [String]
      #
      #   @param beep_enabled [Symbol, Telnyx::Models::ConferenceUpdateParticipantParams::BeepEnabled] Whether entry/exit beeps are enabled for this participant.
      #
      #   @param end_conference_on_exit [Boolean] Whether the conference should end when this participant exits.
      #
      #   @param soft_end_conference_on_exit [Boolean] Whether the conference should soft-end when this participant exits. A soft end w
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      # Whether entry/exit beeps are enabled for this participant.
      module BeepEnabled
        extend Telnyx::Internal::Type::Enum

        ALWAYS = :always
        NEVER = :never
        ON_ENTER = :on_enter
        ON_EXIT = :on_exit

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end

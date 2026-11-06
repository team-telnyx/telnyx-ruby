# frozen_string_literal: true

module Telnyx
  module Models
    class MeetingSessionAssistant < Telnyx::Internal::Type::BaseModel
      # @!attribute id
      #   Identifier of the assistant.
      #
      #   @return [String]
      required :id, String

      # @!attribute audio_gate
      #   Audio gating strategy in force for the assistant call leg.
      #
      #   @return [Symbol, Telnyx::Models::MeetingSessionAssistant::AudioGate]
      required :audio_gate, enum: -> { Telnyx::MeetingSessionAssistant::AudioGate }

      # @!attribute leave_on_end
      #   Whether the bot leaves when the Assistant's conversation ends or fails.
      #
      #   @return [Boolean]
      required :leave_on_end, Telnyx::Internal::Type::Boolean

      # @!attribute dynamic_variables
      #   Dynamic variables in individual-session responses; null when none were supplied.
      #   Omitted from session list items.
      #
      #   @return [Hash{Symbol=>String}, nil]
      optional :dynamic_variables, Telnyx::Internal::Type::HashOf[String], nil?: true

      # @!method initialize(id:, audio_gate:, leave_on_end:, dynamic_variables: nil)
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::MeetingSessionAssistant} for more details.
      #
      #   @param id [String] Identifier of the assistant.
      #
      #   @param audio_gate [Symbol, Telnyx::Models::MeetingSessionAssistant::AudioGate] Audio gating strategy in force for the assistant call leg.
      #
      #   @param leave_on_end [Boolean] Whether the bot leaves when the Assistant's conversation ends or fails.
      #
      #   @param dynamic_variables [Hash{Symbol=>String}, nil] Dynamic variables in individual-session responses; null when none were supplied.

      # Audio gating strategy in force for the assistant call leg.
      #
      # @see Telnyx::Models::MeetingSessionAssistant#audio_gate
      module AudioGate
        extend Telnyx::Internal::Type::Enum

        HALF_DUPLEX = :half_duplex
        FULL_DUPLEX = :full_duplex

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end

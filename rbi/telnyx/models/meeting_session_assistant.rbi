# typed: strong

module Telnyx
  module Models
    class MeetingSessionAssistant < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::MeetingSessionAssistant, Telnyx::Internal::AnyHash)
        end

      # Identifier of the assistant.
      sig { returns(String) }
      attr_accessor :id

      # Audio gating strategy in force for the assistant call leg.
      sig { returns(Telnyx::MeetingSessionAssistant::AudioGate::TaggedSymbol) }
      attr_accessor :audio_gate

      # Whether the bot leaves when the Assistant's conversation ends or fails.
      sig { returns(T::Boolean) }
      attr_accessor :leave_on_end

      # Dynamic variables in individual-session responses; null when none were supplied.
      # Omitted from session list items.
      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      attr_accessor :dynamic_variables

      sig do
        params(
          id: String,
          audio_gate: Telnyx::MeetingSessionAssistant::AudioGate::OrSymbol,
          leave_on_end: T::Boolean,
          dynamic_variables: T.nilable(T::Hash[Symbol, String])
        ).returns(T.attached_class)
      end
      def self.new(
        # Identifier of the assistant.
        id:,
        # Audio gating strategy in force for the assistant call leg.
        audio_gate:,
        # Whether the bot leaves when the Assistant's conversation ends or fails.
        leave_on_end:,
        # Dynamic variables in individual-session responses; null when none were supplied.
        # Omitted from session list items.
        dynamic_variables: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            audio_gate:
              Telnyx::MeetingSessionAssistant::AudioGate::TaggedSymbol,
            leave_on_end: T::Boolean,
            dynamic_variables: T.nilable(T::Hash[Symbol, String])
          }
        )
      end
      def to_hash
      end

      # Audio gating strategy in force for the assistant call leg.
      module AudioGate
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Telnyx::MeetingSessionAssistant::AudioGate)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        HALF_DUPLEX =
          T.let(
            :half_duplex,
            Telnyx::MeetingSessionAssistant::AudioGate::TaggedSymbol
          )
        FULL_DUPLEX =
          T.let(
            :full_duplex,
            Telnyx::MeetingSessionAssistant::AudioGate::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Telnyx::MeetingSessionAssistant::AudioGate::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end

# typed: strong

module Telnyx
  module Models
    class ConferenceUpdateParticipantParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Telnyx::ConferenceUpdateParticipantParams,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :id

      # Whether entry/exit beeps are enabled for this participant.
      sig do
        returns(
          T.nilable(
            Telnyx::ConferenceUpdateParticipantParams::BeepEnabled::OrSymbol
          )
        )
      end
      attr_reader :beep_enabled

      sig do
        params(
          beep_enabled:
            Telnyx::ConferenceUpdateParticipantParams::BeepEnabled::OrSymbol
        ).void
      end
      attr_writer :beep_enabled

      # Whether the conference should end when this participant exits.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :end_conference_on_exit

      sig { params(end_conference_on_exit: T::Boolean).void }
      attr_writer :end_conference_on_exit

      # Whether the conference should soft-end when this participant exits. A soft end
      # will stop new participants from joining but allow existing participants to
      # remain.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :soft_end_conference_on_exit

      sig { params(soft_end_conference_on_exit: T::Boolean).void }
      attr_writer :soft_end_conference_on_exit

      sig do
        params(
          id: String,
          beep_enabled:
            Telnyx::ConferenceUpdateParticipantParams::BeepEnabled::OrSymbol,
          end_conference_on_exit: T::Boolean,
          soft_end_conference_on_exit: T::Boolean,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        # Whether entry/exit beeps are enabled for this participant.
        beep_enabled: nil,
        # Whether the conference should end when this participant exits.
        end_conference_on_exit: nil,
        # Whether the conference should soft-end when this participant exits. A soft end
        # will stop new participants from joining but allow existing participants to
        # remain.
        soft_end_conference_on_exit: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            id: String,
            beep_enabled:
              Telnyx::ConferenceUpdateParticipantParams::BeepEnabled::OrSymbol,
            end_conference_on_exit: T::Boolean,
            soft_end_conference_on_exit: T::Boolean,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Whether entry/exit beeps are enabled for this participant.
      module BeepEnabled
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Telnyx::ConferenceUpdateParticipantParams::BeepEnabled
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ALWAYS =
          T.let(
            :always,
            Telnyx::ConferenceUpdateParticipantParams::BeepEnabled::TaggedSymbol
          )
        NEVER =
          T.let(
            :never,
            Telnyx::ConferenceUpdateParticipantParams::BeepEnabled::TaggedSymbol
          )
        ON_ENTER =
          T.let(
            :on_enter,
            Telnyx::ConferenceUpdateParticipantParams::BeepEnabled::TaggedSymbol
          )
        ON_EXIT =
          T.let(
            :on_exit,
            Telnyx::ConferenceUpdateParticipantParams::BeepEnabled::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::ConferenceUpdateParticipantParams::BeepEnabled::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end

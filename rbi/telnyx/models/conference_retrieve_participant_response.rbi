# typed: strong

module Telnyx
  module Models
    class ConferenceRetrieveParticipantResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::ConferenceRetrieveParticipantResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig do
        returns(
          T.nilable(Telnyx::Models::ConferenceRetrieveParticipantResponse::Data)
        )
      end
      attr_reader :data

      sig do
        params(
          data:
            Telnyx::Models::ConferenceRetrieveParticipantResponse::Data::OrHash
        ).void
      end
      attr_writer :data

      sig do
        params(
          data:
            Telnyx::Models::ConferenceRetrieveParticipantResponse::Data::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data: nil)
      end

      sig do
        override.returns(
          { data: Telnyx::Models::ConferenceRetrieveParticipantResponse::Data }
        )
      end
      def to_hash
      end

      class Data < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::ConferenceRetrieveParticipantResponse::Data,
              Telnyx::Internal::AnyHash
            )
          end

        # Uniquely identifies the participant.
        sig { returns(T.nilable(String)) }
        attr_reader :id

        sig { params(id: String).void }
        attr_writer :id

        # Unique identifier and token for controlling the participant's call leg.
        sig { returns(T.nilable(String)) }
        attr_reader :call_control_id

        sig { params(call_control_id: String).void }
        attr_writer :call_control_id

        # Unique identifier for the call leg.
        sig { returns(T.nilable(String)) }
        attr_reader :call_leg_id

        sig { params(call_leg_id: String).void }
        attr_writer :call_leg_id

        # Unique identifier for the conference.
        sig { returns(T.nilable(String)) }
        attr_reader :conference_id

        sig { params(conference_id: String).void }
        attr_writer :conference_id

        # Timestamp when the participant joined.
        sig { returns(T.nilable(Time)) }
        attr_reader :created_at

        sig { params(created_at: Time).void }
        attr_writer :created_at

        # Whether the conference ends when this participant exits.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :end_conference_on_exit

        sig { params(end_conference_on_exit: T::Boolean).void }
        attr_writer :end_conference_on_exit

        # Label assigned to the participant when joining.
        sig { returns(T.nilable(String)) }
        attr_reader :label

        sig { params(label: String).void }
        attr_writer :label

        # Whether the participant is muted.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :muted

        sig { params(muted: T::Boolean).void }
        attr_writer :muted

        # Whether the participant is on hold.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :on_hold

        sig { params(on_hold: T::Boolean).void }
        attr_writer :on_hold

        # Whether the conference soft-ends when this participant exits.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :soft_end_conference_on_exit

        sig { params(soft_end_conference_on_exit: T::Boolean).void }
        attr_writer :soft_end_conference_on_exit

        # Status of the participant.
        sig do
          returns(
            T.nilable(
              Telnyx::Models::ConferenceRetrieveParticipantResponse::Data::Status::TaggedSymbol
            )
          )
        end
        attr_reader :status

        sig do
          params(
            status:
              Telnyx::Models::ConferenceRetrieveParticipantResponse::Data::Status::OrSymbol
          ).void
        end
        attr_writer :status

        # Timestamp when the participant was last updated.
        sig { returns(T.nilable(Time)) }
        attr_reader :updated_at

        sig { params(updated_at: Time).void }
        attr_writer :updated_at

        # List of call control IDs this participant is whispering to.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :whisper_call_control_ids

        sig { params(whisper_call_control_ids: T::Array[String]).void }
        attr_writer :whisper_call_control_ids

        sig do
          params(
            id: String,
            call_control_id: String,
            call_leg_id: String,
            conference_id: String,
            created_at: Time,
            end_conference_on_exit: T::Boolean,
            label: String,
            muted: T::Boolean,
            on_hold: T::Boolean,
            soft_end_conference_on_exit: T::Boolean,
            status:
              Telnyx::Models::ConferenceRetrieveParticipantResponse::Data::Status::OrSymbol,
            updated_at: Time,
            whisper_call_control_ids: T::Array[String]
          ).returns(T.attached_class)
        end
        def self.new(
          # Uniquely identifies the participant.
          id: nil,
          # Unique identifier and token for controlling the participant's call leg.
          call_control_id: nil,
          # Unique identifier for the call leg.
          call_leg_id: nil,
          # Unique identifier for the conference.
          conference_id: nil,
          # Timestamp when the participant joined.
          created_at: nil,
          # Whether the conference ends when this participant exits.
          end_conference_on_exit: nil,
          # Label assigned to the participant when joining.
          label: nil,
          # Whether the participant is muted.
          muted: nil,
          # Whether the participant is on hold.
          on_hold: nil,
          # Whether the conference soft-ends when this participant exits.
          soft_end_conference_on_exit: nil,
          # Status of the participant.
          status: nil,
          # Timestamp when the participant was last updated.
          updated_at: nil,
          # List of call control IDs this participant is whispering to.
          whisper_call_control_ids: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              call_control_id: String,
              call_leg_id: String,
              conference_id: String,
              created_at: Time,
              end_conference_on_exit: T::Boolean,
              label: String,
              muted: T::Boolean,
              on_hold: T::Boolean,
              soft_end_conference_on_exit: T::Boolean,
              status:
                Telnyx::Models::ConferenceRetrieveParticipantResponse::Data::Status::TaggedSymbol,
              updated_at: Time,
              whisper_call_control_ids: T::Array[String]
            }
          )
        end
        def to_hash
        end

        # Status of the participant.
        module Status
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::Models::ConferenceRetrieveParticipantResponse::Data::Status
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          JOINING =
            T.let(
              :joining,
              Telnyx::Models::ConferenceRetrieveParticipantResponse::Data::Status::TaggedSymbol
            )
          JOINED =
            T.let(
              :joined,
              Telnyx::Models::ConferenceRetrieveParticipantResponse::Data::Status::TaggedSymbol
            )
          LEFT =
            T.let(
              :left,
              Telnyx::Models::ConferenceRetrieveParticipantResponse::Data::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Models::ConferenceRetrieveParticipantResponse::Data::Status::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end

# typed: strong

module Telnyx
  module Models
    class ConferenceListParticipantsResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::ConferenceListParticipantsResponse,
            Telnyx::Internal::AnyHash
          )
        end

      # Uniquely identifies the participant
      sig { returns(String) }
      attr_accessor :id

      # Call Control ID associated with the partiipant of the conference
      sig { returns(String) }
      attr_accessor :call_control_id

      # Uniquely identifies the call leg associated with the participant
      sig { returns(String) }
      attr_accessor :call_leg_id

      # Info about the conference that the participant is in
      sig do
        returns(Telnyx::Models::ConferenceListParticipantsResponse::Conference)
      end
      attr_reader :conference

      sig do
        params(
          conference:
            Telnyx::Models::ConferenceListParticipantsResponse::Conference::OrHash
        ).void
      end
      attr_writer :conference

      # ISO 8601 formatted date of when the participant was created
      sig { returns(String) }
      attr_accessor :created_at

      # Whether the conference will end and all remaining participants be hung up after
      # the participant leaves the conference.
      sig { returns(T::Boolean) }
      attr_accessor :end_conference_on_exit

      # Whether the participant is muted.
      sig { returns(T::Boolean) }
      attr_accessor :muted

      # Whether the participant is put on_hold.
      sig { returns(T::Boolean) }
      attr_accessor :on_hold

      sig do
        returns(
          Telnyx::Models::ConferenceListParticipantsResponse::RecordType::TaggedSymbol
        )
      end
      attr_accessor :record_type

      # Whether the conference will end after the participant leaves the conference.
      sig { returns(T::Boolean) }
      attr_accessor :soft_end_conference_on_exit

      # The status of the participant with respect to the lifecycle within the
      # conference
      sig do
        returns(
          Telnyx::Models::ConferenceListParticipantsResponse::Status::TaggedSymbol
        )
      end
      attr_accessor :status

      # ISO 8601 formatted date of when the participant was last updated
      sig { returns(String) }
      attr_accessor :updated_at

      # Array of unique call_control_ids the participant can whisper to..
      sig { returns(T::Array[String]) }
      attr_accessor :whisper_call_control_ids

      sig do
        params(
          id: String,
          call_control_id: String,
          call_leg_id: String,
          conference:
            Telnyx::Models::ConferenceListParticipantsResponse::Conference::OrHash,
          created_at: String,
          end_conference_on_exit: T::Boolean,
          muted: T::Boolean,
          on_hold: T::Boolean,
          record_type:
            Telnyx::Models::ConferenceListParticipantsResponse::RecordType::OrSymbol,
          soft_end_conference_on_exit: T::Boolean,
          status:
            Telnyx::Models::ConferenceListParticipantsResponse::Status::OrSymbol,
          updated_at: String,
          whisper_call_control_ids: T::Array[String]
        ).returns(T.attached_class)
      end
      def self.new(
        # Uniquely identifies the participant
        id:,
        # Call Control ID associated with the partiipant of the conference
        call_control_id:,
        # Uniquely identifies the call leg associated with the participant
        call_leg_id:,
        # Info about the conference that the participant is in
        conference:,
        # ISO 8601 formatted date of when the participant was created
        created_at:,
        # Whether the conference will end and all remaining participants be hung up after
        # the participant leaves the conference.
        end_conference_on_exit:,
        # Whether the participant is muted.
        muted:,
        # Whether the participant is put on_hold.
        on_hold:,
        record_type:,
        # Whether the conference will end after the participant leaves the conference.
        soft_end_conference_on_exit:,
        # The status of the participant with respect to the lifecycle within the
        # conference
        status:,
        # ISO 8601 formatted date of when the participant was last updated
        updated_at:,
        # Array of unique call_control_ids the participant can whisper to..
        whisper_call_control_ids:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            call_control_id: String,
            call_leg_id: String,
            conference:
              Telnyx::Models::ConferenceListParticipantsResponse::Conference,
            created_at: String,
            end_conference_on_exit: T::Boolean,
            muted: T::Boolean,
            on_hold: T::Boolean,
            record_type:
              Telnyx::Models::ConferenceListParticipantsResponse::RecordType::TaggedSymbol,
            soft_end_conference_on_exit: T::Boolean,
            status:
              Telnyx::Models::ConferenceListParticipantsResponse::Status::TaggedSymbol,
            updated_at: String,
            whisper_call_control_ids: T::Array[String]
          }
        )
      end
      def to_hash
      end

      class Conference < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::ConferenceListParticipantsResponse::Conference,
              Telnyx::Internal::AnyHash
            )
          end

        # Uniquely identifies the conference
        sig { returns(T.nilable(String)) }
        attr_reader :id

        sig { params(id: String).void }
        attr_writer :id

        # Name of the conference
        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

        # Info about the conference that the participant is in
        sig { params(id: String, name: String).returns(T.attached_class) }
        def self.new(
          # Uniquely identifies the conference
          id: nil,
          # Name of the conference
          name: nil
        )
        end

        sig { override.returns({ id: String, name: String }) }
        def to_hash
        end
      end

      module RecordType
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Telnyx::Models::ConferenceListParticipantsResponse::RecordType
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PARTICIPANT =
          T.let(
            :participant,
            Telnyx::Models::ConferenceListParticipantsResponse::RecordType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::Models::ConferenceListParticipantsResponse::RecordType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # The status of the participant with respect to the lifecycle within the
      # conference
      module Status
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Telnyx::Models::ConferenceListParticipantsResponse::Status
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        JOINING =
          T.let(
            :joining,
            Telnyx::Models::ConferenceListParticipantsResponse::Status::TaggedSymbol
          )
        JOINED =
          T.let(
            :joined,
            Telnyx::Models::ConferenceListParticipantsResponse::Status::TaggedSymbol
          )
        LEFT =
          T.let(
            :left,
            Telnyx::Models::ConferenceListParticipantsResponse::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::Models::ConferenceListParticipantsResponse::Status::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end

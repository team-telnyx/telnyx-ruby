# typed: strong

module Telnyx
  module Models
    class CallRecordingTranscriptionSaved < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::CallRecordingTranscriptionSaved,
            Telnyx::Internal::AnyHash
          )
        end

      # Identifies the type of resource.
      sig { returns(T.nilable(String)) }
      attr_reader :id

      sig { params(id: String).void }
      attr_writer :id

      # The type of event being delivered.
      sig do
        returns(
          T.nilable(
            Telnyx::CallRecordingTranscriptionSaved::EventType::TaggedSymbol
          )
        )
      end
      attr_reader :event_type

      sig do
        params(
          event_type:
            Telnyx::CallRecordingTranscriptionSaved::EventType::OrSymbol
        ).void
      end
      attr_writer :event_type

      # ISO 8601 datetime of when the event occurred.
      sig { returns(T.nilable(Time)) }
      attr_reader :occurred_at

      sig { params(occurred_at: Time).void }
      attr_writer :occurred_at

      sig do
        returns(T.nilable(Telnyx::CallRecordingTranscriptionSaved::Payload))
      end
      attr_reader :payload

      sig do
        params(
          payload: Telnyx::CallRecordingTranscriptionSaved::Payload::OrHash
        ).void
      end
      attr_writer :payload

      # Identifies the type of the resource.
      sig do
        returns(
          T.nilable(
            Telnyx::CallRecordingTranscriptionSaved::RecordType::TaggedSymbol
          )
        )
      end
      attr_reader :record_type

      sig do
        params(
          record_type:
            Telnyx::CallRecordingTranscriptionSaved::RecordType::OrSymbol
        ).void
      end
      attr_writer :record_type

      sig do
        params(
          id: String,
          event_type:
            Telnyx::CallRecordingTranscriptionSaved::EventType::OrSymbol,
          occurred_at: Time,
          payload: Telnyx::CallRecordingTranscriptionSaved::Payload::OrHash,
          record_type:
            Telnyx::CallRecordingTranscriptionSaved::RecordType::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # Identifies the type of resource.
        id: nil,
        # The type of event being delivered.
        event_type: nil,
        # ISO 8601 datetime of when the event occurred.
        occurred_at: nil,
        payload: nil,
        # Identifies the type of the resource.
        record_type: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            event_type:
              Telnyx::CallRecordingTranscriptionSaved::EventType::TaggedSymbol,
            occurred_at: Time,
            payload: Telnyx::CallRecordingTranscriptionSaved::Payload,
            record_type:
              Telnyx::CallRecordingTranscriptionSaved::RecordType::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      # The type of event being delivered.
      module EventType
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Telnyx::CallRecordingTranscriptionSaved::EventType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CALL_RECORDING_TRANSCRIPTION_SAVED =
          T.let(
            :"call.recording.transcription.saved",
            Telnyx::CallRecordingTranscriptionSaved::EventType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::CallRecordingTranscriptionSaved::EventType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      class Payload < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::CallRecordingTranscriptionSaved::Payload,
              Telnyx::Internal::AnyHash
            )
          end

        # Call ID used to issue commands via Call Control API.
        sig { returns(T.nilable(String)) }
        attr_reader :call_control_id

        sig { params(call_control_id: String).void }
        attr_writer :call_control_id

        # ID that is unique to the call and can be used to correlate webhook events.
        sig { returns(T.nilable(String)) }
        attr_reader :call_leg_id

        sig { params(call_leg_id: String).void }
        attr_writer :call_leg_id

        # ID that is unique to the call session and can be used to correlate webhook
        # events. Call session is a group of related call legs that logically belong to
        # the same phone call, e.g. an inbound and outbound leg of a transferred call.
        sig { returns(T.nilable(String)) }
        attr_reader :call_session_id

        sig { params(call_session_id: String).void }
        attr_writer :call_session_id

        # The type of calling party connection.
        sig do
          returns(
            T.nilable(
              Telnyx::CallRecordingTranscriptionSaved::Payload::CallingPartyType::TaggedSymbol
            )
          )
        end
        attr_reader :calling_party_type

        sig do
          params(
            calling_party_type:
              Telnyx::CallRecordingTranscriptionSaved::Payload::CallingPartyType::OrSymbol
          ).void
        end
        attr_writer :calling_party_type

        # State received from a command.
        sig { returns(T.nilable(String)) }
        attr_reader :client_state

        sig { params(client_state: String).void }
        attr_writer :client_state

        # Call Control App ID (formerly Telnyx connection ID) used in the call.
        sig { returns(T.nilable(String)) }
        attr_reader :connection_id

        sig { params(connection_id: String).void }
        attr_writer :connection_id

        # ID that is unique to the recording session and can be used to correlate webhook
        # events.
        sig { returns(T.nilable(String)) }
        attr_reader :recording_id

        sig { params(recording_id: String).void }
        attr_writer :recording_id

        # ID that is unique to the transcription process and can be used to correlate
        # webhook events.
        sig { returns(T.nilable(String)) }
        attr_reader :recording_transcription_id

        sig { params(recording_transcription_id: String).void }
        attr_writer :recording_transcription_id

        # The transcription status.
        sig do
          returns(
            T.nilable(
              Telnyx::CallRecordingTranscriptionSaved::Payload::Status::TaggedSymbol
            )
          )
        end
        attr_reader :status

        sig do
          params(
            status:
              Telnyx::CallRecordingTranscriptionSaved::Payload::Status::OrSymbol
          ).void
        end
        attr_writer :status

        # The transcribed text
        sig { returns(T.nilable(String)) }
        attr_reader :transcription_text

        sig { params(transcription_text: String).void }
        attr_writer :transcription_text

        sig do
          params(
            call_control_id: String,
            call_leg_id: String,
            call_session_id: String,
            calling_party_type:
              Telnyx::CallRecordingTranscriptionSaved::Payload::CallingPartyType::OrSymbol,
            client_state: String,
            connection_id: String,
            recording_id: String,
            recording_transcription_id: String,
            status:
              Telnyx::CallRecordingTranscriptionSaved::Payload::Status::OrSymbol,
            transcription_text: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Call ID used to issue commands via Call Control API.
          call_control_id: nil,
          # ID that is unique to the call and can be used to correlate webhook events.
          call_leg_id: nil,
          # ID that is unique to the call session and can be used to correlate webhook
          # events. Call session is a group of related call legs that logically belong to
          # the same phone call, e.g. an inbound and outbound leg of a transferred call.
          call_session_id: nil,
          # The type of calling party connection.
          calling_party_type: nil,
          # State received from a command.
          client_state: nil,
          # Call Control App ID (formerly Telnyx connection ID) used in the call.
          connection_id: nil,
          # ID that is unique to the recording session and can be used to correlate webhook
          # events.
          recording_id: nil,
          # ID that is unique to the transcription process and can be used to correlate
          # webhook events.
          recording_transcription_id: nil,
          # The transcription status.
          status: nil,
          # The transcribed text
          transcription_text: nil
        )
        end

        sig do
          override.returns(
            {
              call_control_id: String,
              call_leg_id: String,
              call_session_id: String,
              calling_party_type:
                Telnyx::CallRecordingTranscriptionSaved::Payload::CallingPartyType::TaggedSymbol,
              client_state: String,
              connection_id: String,
              recording_id: String,
              recording_transcription_id: String,
              status:
                Telnyx::CallRecordingTranscriptionSaved::Payload::Status::TaggedSymbol,
              transcription_text: String
            }
          )
        end
        def to_hash
        end

        # The type of calling party connection.
        module CallingPartyType
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::CallRecordingTranscriptionSaved::Payload::CallingPartyType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PSTN =
            T.let(
              :pstn,
              Telnyx::CallRecordingTranscriptionSaved::Payload::CallingPartyType::TaggedSymbol
            )
          SIP =
            T.let(
              :sip,
              Telnyx::CallRecordingTranscriptionSaved::Payload::CallingPartyType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::CallRecordingTranscriptionSaved::Payload::CallingPartyType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # The transcription status.
        module Status
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::CallRecordingTranscriptionSaved::Payload::Status
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          COMPLETED =
            T.let(
              :completed,
              Telnyx::CallRecordingTranscriptionSaved::Payload::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::CallRecordingTranscriptionSaved::Payload::Status::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      # Identifies the type of the resource.
      module RecordType
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Telnyx::CallRecordingTranscriptionSaved::RecordType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        EVENT =
          T.let(
            :event,
            Telnyx::CallRecordingTranscriptionSaved::RecordType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::CallRecordingTranscriptionSaved::RecordType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end

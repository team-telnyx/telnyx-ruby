# typed: strong

module Telnyx
  module Models
    class Transcription < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Telnyx::Transcription, Telnyx::Internal::AnyHash) }

      # Identifies the type of resource.
      sig { returns(T.nilable(String)) }
      attr_reader :id

      sig { params(id: String).void }
      attr_writer :id

      # The type of event being delivered.
      sig { returns(T.nilable(Telnyx::Transcription::EventType::TaggedSymbol)) }
      attr_reader :event_type

      sig do
        params(event_type: Telnyx::Transcription::EventType::OrSymbol).void
      end
      attr_writer :event_type

      # ISO 8601 datetime of when the event occurred.
      sig { returns(T.nilable(Time)) }
      attr_reader :occurred_at

      sig { params(occurred_at: Time).void }
      attr_writer :occurred_at

      sig { returns(T.nilable(Telnyx::Transcription::Payload)) }
      attr_reader :payload

      sig { params(payload: Telnyx::Transcription::Payload::OrHash).void }
      attr_writer :payload

      # Identifies the type of the resource.
      sig do
        returns(T.nilable(Telnyx::Transcription::RecordType::TaggedSymbol))
      end
      attr_reader :record_type

      sig do
        params(record_type: Telnyx::Transcription::RecordType::OrSymbol).void
      end
      attr_writer :record_type

      sig do
        params(
          id: String,
          event_type: Telnyx::Transcription::EventType::OrSymbol,
          occurred_at: Time,
          payload: Telnyx::Transcription::Payload::OrHash,
          record_type: Telnyx::Transcription::RecordType::OrSymbol
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
            event_type: Telnyx::Transcription::EventType::TaggedSymbol,
            occurred_at: Time,
            payload: Telnyx::Transcription::Payload,
            record_type: Telnyx::Transcription::RecordType::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      # The type of event being delivered.
      module EventType
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::Transcription::EventType) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CALL_TRANSCRIPTION =
          T.let(
            :"call.transcription",
            Telnyx::Transcription::EventType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Telnyx::Transcription::EventType::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      class Payload < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Telnyx::Transcription::Payload, Telnyx::Internal::AnyHash)
          end

        # Unique identifier and token for controlling the call.
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

        # Use this field to add state to every subsequent webhook. It must be a valid
        # Base-64 encoded string.
        sig { returns(T.nilable(String)) }
        attr_reader :client_state

        sig { params(client_state: String).void }
        attr_writer :client_state

        # Call Control App ID (formerly Telnyx connection ID) used in the call.
        sig { returns(T.nilable(String)) }
        attr_reader :connection_id

        sig { params(connection_id: String).void }
        attr_writer :connection_id

        sig do
          returns(T.nilable(Telnyx::Transcription::Payload::TranscriptionData))
        end
        attr_reader :transcription_data

        sig do
          params(
            transcription_data:
              Telnyx::Transcription::Payload::TranscriptionData::OrHash
          ).void
        end
        attr_writer :transcription_data

        sig do
          params(
            call_control_id: String,
            call_leg_id: String,
            call_session_id: String,
            client_state: String,
            connection_id: String,
            transcription_data:
              Telnyx::Transcription::Payload::TranscriptionData::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Unique identifier and token for controlling the call.
          call_control_id: nil,
          # ID that is unique to the call and can be used to correlate webhook events.
          call_leg_id: nil,
          # ID that is unique to the call session and can be used to correlate webhook
          # events. Call session is a group of related call legs that logically belong to
          # the same phone call, e.g. an inbound and outbound leg of a transferred call.
          call_session_id: nil,
          # Use this field to add state to every subsequent webhook. It must be a valid
          # Base-64 encoded string.
          client_state: nil,
          # Call Control App ID (formerly Telnyx connection ID) used in the call.
          connection_id: nil,
          transcription_data: nil
        )
        end

        sig do
          override.returns(
            {
              call_control_id: String,
              call_leg_id: String,
              call_session_id: String,
              client_state: String,
              connection_id: String,
              transcription_data:
                Telnyx::Transcription::Payload::TranscriptionData
            }
          )
        end
        def to_hash
        end

        class TranscriptionData < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Transcription::Payload::TranscriptionData,
                Telnyx::Internal::AnyHash
              )
            end

          # Speech recognition confidence level.
          sig { returns(T.nilable(Float)) }
          attr_reader :confidence

          sig { params(confidence: Float).void }
          attr_writer :confidence

          # When false, it means that this is an interim result.
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :is_final

          sig { params(is_final: T::Boolean).void }
          attr_writer :is_final

          # Recognized text.
          sig { returns(T.nilable(String)) }
          attr_reader :transcript

          sig { params(transcript: String).void }
          attr_writer :transcript

          # Indicates which leg of the call has been transcribed. This is only available
          # when `transcription_engine` is set to `B`.
          sig do
            returns(
              T.nilable(
                Telnyx::Transcription::Payload::TranscriptionData::TranscriptionTrack::TaggedSymbol
              )
            )
          end
          attr_reader :transcription_track

          sig do
            params(
              transcription_track:
                Telnyx::Transcription::Payload::TranscriptionData::TranscriptionTrack::OrSymbol
            ).void
          end
          attr_writer :transcription_track

          sig do
            params(
              confidence: Float,
              is_final: T::Boolean,
              transcript: String,
              transcription_track:
                Telnyx::Transcription::Payload::TranscriptionData::TranscriptionTrack::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(
            # Speech recognition confidence level.
            confidence: nil,
            # When false, it means that this is an interim result.
            is_final: nil,
            # Recognized text.
            transcript: nil,
            # Indicates which leg of the call has been transcribed. This is only available
            # when `transcription_engine` is set to `B`.
            transcription_track: nil
          )
          end

          sig do
            override.returns(
              {
                confidence: Float,
                is_final: T::Boolean,
                transcript: String,
                transcription_track:
                  Telnyx::Transcription::Payload::TranscriptionData::TranscriptionTrack::TaggedSymbol
              }
            )
          end
          def to_hash
          end

          # Indicates which leg of the call has been transcribed. This is only available
          # when `transcription_engine` is set to `B`.
          module TranscriptionTrack
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::Transcription::Payload::TranscriptionData::TranscriptionTrack
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            INBOUND =
              T.let(
                :inbound,
                Telnyx::Transcription::Payload::TranscriptionData::TranscriptionTrack::TaggedSymbol
              )
            OUTBOUND =
              T.let(
                :outbound,
                Telnyx::Transcription::Payload::TranscriptionData::TranscriptionTrack::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::Transcription::Payload::TranscriptionData::TranscriptionTrack::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end
      end

      # Identifies the type of the resource.
      module RecordType
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::Transcription::RecordType) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        EVENT = T.let(:event, Telnyx::Transcription::RecordType::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Telnyx::Transcription::RecordType::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end

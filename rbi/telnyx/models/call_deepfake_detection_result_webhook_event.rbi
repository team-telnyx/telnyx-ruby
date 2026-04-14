# typed: strong

module Telnyx
  module Models
    class CallDeepfakeDetectionResultWebhookEvent < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::CallDeepfakeDetectionResultWebhookEvent,
            Telnyx::Internal::AnyHash
          )
        end

      sig do
        returns(
          T.nilable(Telnyx::CallDeepfakeDetectionResultWebhookEvent::Data)
        )
      end
      attr_reader :data

      sig do
        params(
          data: Telnyx::CallDeepfakeDetectionResultWebhookEvent::Data::OrHash
        ).void
      end
      attr_writer :data

      sig do
        params(
          data: Telnyx::CallDeepfakeDetectionResultWebhookEvent::Data::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data: nil)
      end

      sig do
        override.returns(
          { data: Telnyx::CallDeepfakeDetectionResultWebhookEvent::Data }
        )
      end
      def to_hash
      end

      class Data < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::CallDeepfakeDetectionResultWebhookEvent::Data,
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
              Telnyx::CallDeepfakeDetectionResultWebhookEvent::Data::EventType::TaggedSymbol
            )
          )
        end
        attr_reader :event_type

        sig do
          params(
            event_type:
              Telnyx::CallDeepfakeDetectionResultWebhookEvent::Data::EventType::OrSymbol
          ).void
        end
        attr_writer :event_type

        # ISO 8601 datetime of when the event occurred.
        sig { returns(T.nilable(Time)) }
        attr_reader :occurred_at

        sig { params(occurred_at: Time).void }
        attr_writer :occurred_at

        sig do
          returns(
            T.nilable(
              Telnyx::CallDeepfakeDetectionResultWebhookEvent::Data::Payload
            )
          )
        end
        attr_reader :payload

        sig do
          params(
            payload:
              Telnyx::CallDeepfakeDetectionResultWebhookEvent::Data::Payload::OrHash
          ).void
        end
        attr_writer :payload

        # Identifies the type of the resource.
        sig do
          returns(
            T.nilable(
              Telnyx::CallDeepfakeDetectionResultWebhookEvent::Data::RecordType::TaggedSymbol
            )
          )
        end
        attr_reader :record_type

        sig do
          params(
            record_type:
              Telnyx::CallDeepfakeDetectionResultWebhookEvent::Data::RecordType::OrSymbol
          ).void
        end
        attr_writer :record_type

        sig do
          params(
            id: String,
            event_type:
              Telnyx::CallDeepfakeDetectionResultWebhookEvent::Data::EventType::OrSymbol,
            occurred_at: Time,
            payload:
              Telnyx::CallDeepfakeDetectionResultWebhookEvent::Data::Payload::OrHash,
            record_type:
              Telnyx::CallDeepfakeDetectionResultWebhookEvent::Data::RecordType::OrSymbol
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
                Telnyx::CallDeepfakeDetectionResultWebhookEvent::Data::EventType::TaggedSymbol,
              occurred_at: Time,
              payload:
                Telnyx::CallDeepfakeDetectionResultWebhookEvent::Data::Payload,
              record_type:
                Telnyx::CallDeepfakeDetectionResultWebhookEvent::Data::RecordType::TaggedSymbol
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
              T.all(
                Symbol,
                Telnyx::CallDeepfakeDetectionResultWebhookEvent::Data::EventType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CALL_DEEPFAKE_DETECTION_RESULT =
            T.let(
              :"call.deepfake_detection.result",
              Telnyx::CallDeepfakeDetectionResultWebhookEvent::Data::EventType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::CallDeepfakeDetectionResultWebhookEvent::Data::EventType::TaggedSymbol
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
                Telnyx::CallDeepfakeDetectionResultWebhookEvent::Data::Payload,
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

          # State received from a command.
          sig { returns(T.nilable(String)) }
          attr_accessor :client_state

          # Call Control App ID (formerly Telnyx connection ID) used in the call.
          sig { returns(T.nilable(String)) }
          attr_reader :connection_id

          sig { params(connection_id: String).void }
          attr_writer :connection_id

          # Percentage (0-100) indicating how consistently the model classified the audio
          # across frames. High consistency (>90%) means confident classification
          # throughout; low consistency suggests mixed signals. Null for silence_timeout.
          sig { returns(T.nilable(Float)) }
          attr_accessor :consistency

          # Detection outcome. 'real' = human voice, 'fake' = AI-generated voice,
          # 'silence_timeout' = no analyzable speech detected before timeout.
          sig do
            returns(
              T.nilable(
                Telnyx::CallDeepfakeDetectionResultWebhookEvent::Data::Payload::Result::TaggedSymbol
              )
            )
          end
          attr_reader :result

          sig do
            params(
              result:
                Telnyx::CallDeepfakeDetectionResultWebhookEvent::Data::Payload::Result::OrSymbol
            ).void
          end
          attr_writer :result

          # Probability that the audio is AI-generated, from 0.0 (likely real) to 1.0
          # (likely deepfake). Based on the model's aggregated confidence across analyzed
          # audio frames. Null for silence_timeout.
          sig { returns(T.nilable(Float)) }
          attr_accessor :score

          sig do
            params(
              call_control_id: String,
              call_leg_id: String,
              call_session_id: String,
              client_state: T.nilable(String),
              connection_id: String,
              consistency: T.nilable(Float),
              result:
                Telnyx::CallDeepfakeDetectionResultWebhookEvent::Data::Payload::Result::OrSymbol,
              score: T.nilable(Float)
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
            # State received from a command.
            client_state: nil,
            # Call Control App ID (formerly Telnyx connection ID) used in the call.
            connection_id: nil,
            # Percentage (0-100) indicating how consistently the model classified the audio
            # across frames. High consistency (>90%) means confident classification
            # throughout; low consistency suggests mixed signals. Null for silence_timeout.
            consistency: nil,
            # Detection outcome. 'real' = human voice, 'fake' = AI-generated voice,
            # 'silence_timeout' = no analyzable speech detected before timeout.
            result: nil,
            # Probability that the audio is AI-generated, from 0.0 (likely real) to 1.0
            # (likely deepfake). Based on the model's aggregated confidence across analyzed
            # audio frames. Null for silence_timeout.
            score: nil
          )
          end

          sig do
            override.returns(
              {
                call_control_id: String,
                call_leg_id: String,
                call_session_id: String,
                client_state: T.nilable(String),
                connection_id: String,
                consistency: T.nilable(Float),
                result:
                  Telnyx::CallDeepfakeDetectionResultWebhookEvent::Data::Payload::Result::TaggedSymbol,
                score: T.nilable(Float)
              }
            )
          end
          def to_hash
          end

          # Detection outcome. 'real' = human voice, 'fake' = AI-generated voice,
          # 'silence_timeout' = no analyzable speech detected before timeout.
          module Result
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::CallDeepfakeDetectionResultWebhookEvent::Data::Payload::Result
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            REAL =
              T.let(
                :real,
                Telnyx::CallDeepfakeDetectionResultWebhookEvent::Data::Payload::Result::TaggedSymbol
              )
            FAKE =
              T.let(
                :fake,
                Telnyx::CallDeepfakeDetectionResultWebhookEvent::Data::Payload::Result::TaggedSymbol
              )
            SILENCE_TIMEOUT =
              T.let(
                :silence_timeout,
                Telnyx::CallDeepfakeDetectionResultWebhookEvent::Data::Payload::Result::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::CallDeepfakeDetectionResultWebhookEvent::Data::Payload::Result::TaggedSymbol
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
              T.all(
                Symbol,
                Telnyx::CallDeepfakeDetectionResultWebhookEvent::Data::RecordType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          EVENT =
            T.let(
              :event,
              Telnyx::CallDeepfakeDetectionResultWebhookEvent::Data::RecordType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::CallDeepfakeDetectionResultWebhookEvent::Data::RecordType::TaggedSymbol
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

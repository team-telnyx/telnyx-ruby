# typed: strong

module Telnyx
  module Models
    class ConferenceSpeakStartedWebhookEvent < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::ConferenceSpeakStartedWebhookEvent,
            Telnyx::Internal::AnyHash
          )
        end

      sig do
        returns(T.nilable(Telnyx::ConferenceSpeakStartedWebhookEvent::Data))
      end
      attr_reader :data

      sig do
        params(
          data: Telnyx::ConferenceSpeakStartedWebhookEvent::Data::OrHash
        ).void
      end
      attr_writer :data

      sig do
        params(
          data: Telnyx::ConferenceSpeakStartedWebhookEvent::Data::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data: nil)
      end

      sig do
        override.returns(
          { data: Telnyx::ConferenceSpeakStartedWebhookEvent::Data }
        )
      end
      def to_hash
      end

      class Data < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::ConferenceSpeakStartedWebhookEvent::Data,
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
              Telnyx::ConferenceSpeakStartedWebhookEvent::Data::EventType::TaggedSymbol
            )
          )
        end
        attr_reader :event_type

        sig do
          params(
            event_type:
              Telnyx::ConferenceSpeakStartedWebhookEvent::Data::EventType::OrSymbol
          ).void
        end
        attr_writer :event_type

        sig do
          returns(
            T.nilable(Telnyx::ConferenceSpeakStartedWebhookEvent::Data::Payload)
          )
        end
        attr_reader :payload

        sig do
          params(
            payload:
              Telnyx::ConferenceSpeakStartedWebhookEvent::Data::Payload::OrHash
          ).void
        end
        attr_writer :payload

        # Identifies the type of the resource.
        sig do
          returns(
            T.nilable(
              Telnyx::ConferenceSpeakStartedWebhookEvent::Data::RecordType::TaggedSymbol
            )
          )
        end
        attr_reader :record_type

        sig do
          params(
            record_type:
              Telnyx::ConferenceSpeakStartedWebhookEvent::Data::RecordType::OrSymbol
          ).void
        end
        attr_writer :record_type

        sig do
          params(
            id: String,
            event_type:
              Telnyx::ConferenceSpeakStartedWebhookEvent::Data::EventType::OrSymbol,
            payload:
              Telnyx::ConferenceSpeakStartedWebhookEvent::Data::Payload::OrHash,
            record_type:
              Telnyx::ConferenceSpeakStartedWebhookEvent::Data::RecordType::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # Identifies the type of resource.
          id: nil,
          # The type of event being delivered.
          event_type: nil,
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
                Telnyx::ConferenceSpeakStartedWebhookEvent::Data::EventType::TaggedSymbol,
              payload:
                Telnyx::ConferenceSpeakStartedWebhookEvent::Data::Payload,
              record_type:
                Telnyx::ConferenceSpeakStartedWebhookEvent::Data::RecordType::TaggedSymbol
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
                Telnyx::ConferenceSpeakStartedWebhookEvent::Data::EventType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CONFERENCE_SPEAK_STARTED =
            T.let(
              :"conference.speak.started",
              Telnyx::ConferenceSpeakStartedWebhookEvent::Data::EventType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::ConferenceSpeakStartedWebhookEvent::Data::EventType::TaggedSymbol
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
                Telnyx::ConferenceSpeakStartedWebhookEvent::Data::Payload,
                Telnyx::Internal::AnyHash
              )
            end

          # ID of the conference the text was spoken in.
          sig { returns(T.nilable(String)) }
          attr_reader :conference_id

          sig { params(conference_id: String).void }
          attr_writer :conference_id

          # Call Control App ID (formerly Telnyx connection ID) used in the call.
          sig { returns(T.nilable(String)) }
          attr_reader :connection_id

          sig { params(connection_id: String).void }
          attr_writer :connection_id

          # ID that is unique to the call session that started the conference.
          sig { returns(T.nilable(String)) }
          attr_reader :creator_call_session_id

          sig { params(creator_call_session_id: String).void }
          attr_writer :creator_call_session_id

          # ISO 8601 datetime of when the event occurred.
          sig { returns(T.nilable(Time)) }
          attr_reader :occurred_at

          sig { params(occurred_at: Time).void }
          attr_writer :occurred_at

          sig do
            params(
              conference_id: String,
              connection_id: String,
              creator_call_session_id: String,
              occurred_at: Time
            ).returns(T.attached_class)
          end
          def self.new(
            # ID of the conference the text was spoken in.
            conference_id: nil,
            # Call Control App ID (formerly Telnyx connection ID) used in the call.
            connection_id: nil,
            # ID that is unique to the call session that started the conference.
            creator_call_session_id: nil,
            # ISO 8601 datetime of when the event occurred.
            occurred_at: nil
          )
          end

          sig do
            override.returns(
              {
                conference_id: String,
                connection_id: String,
                creator_call_session_id: String,
                occurred_at: Time
              }
            )
          end
          def to_hash
          end
        end

        # Identifies the type of the resource.
        module RecordType
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::ConferenceSpeakStartedWebhookEvent::Data::RecordType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          EVENT =
            T.let(
              :event,
              Telnyx::ConferenceSpeakStartedWebhookEvent::Data::RecordType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::ConferenceSpeakStartedWebhookEvent::Data::RecordType::TaggedSymbol
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

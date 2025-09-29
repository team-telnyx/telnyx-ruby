# typed: strong

module Telnyx
  module Models
    class CallConversationEndedWebhookEvent < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::CallConversationEndedWebhookEvent,
            Telnyx::Internal::AnyHash
          )
        end

      sig do
        returns(T.nilable(Telnyx::CallConversationEndedWebhookEvent::Data))
      end
      attr_reader :data

      sig do
        params(
          data: Telnyx::CallConversationEndedWebhookEvent::Data::OrHash
        ).void
      end
      attr_writer :data

      sig do
        params(
          data: Telnyx::CallConversationEndedWebhookEvent::Data::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data: nil)
      end

      sig do
        override.returns(
          { data: Telnyx::CallConversationEndedWebhookEvent::Data }
        )
      end
      def to_hash
      end

      class Data < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::CallConversationEndedWebhookEvent::Data,
              Telnyx::Internal::AnyHash
            )
          end

        # Unique identifier for the event.
        sig { returns(T.nilable(String)) }
        attr_reader :id

        sig { params(id: String).void }
        attr_writer :id

        # Timestamp when the event was created in the system.
        sig { returns(T.nilable(Time)) }
        attr_reader :created_at

        sig { params(created_at: Time).void }
        attr_writer :created_at

        # The type of event being delivered.
        sig do
          returns(
            T.nilable(
              Telnyx::CallConversationEndedWebhookEvent::Data::EventType::TaggedSymbol
            )
          )
        end
        attr_reader :event_type

        sig do
          params(
            event_type:
              Telnyx::CallConversationEndedWebhookEvent::Data::EventType::OrSymbol
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
            T.nilable(Telnyx::CallConversationEndedWebhookEvent::Data::Payload)
          )
        end
        attr_reader :payload

        sig do
          params(
            payload:
              Telnyx::CallConversationEndedWebhookEvent::Data::Payload::OrHash
          ).void
        end
        attr_writer :payload

        # Identifies the type of the resource.
        sig do
          returns(
            T.nilable(
              Telnyx::CallConversationEndedWebhookEvent::Data::RecordType::TaggedSymbol
            )
          )
        end
        attr_reader :record_type

        sig do
          params(
            record_type:
              Telnyx::CallConversationEndedWebhookEvent::Data::RecordType::OrSymbol
          ).void
        end
        attr_writer :record_type

        sig do
          params(
            id: String,
            created_at: Time,
            event_type:
              Telnyx::CallConversationEndedWebhookEvent::Data::EventType::OrSymbol,
            occurred_at: Time,
            payload:
              Telnyx::CallConversationEndedWebhookEvent::Data::Payload::OrHash,
            record_type:
              Telnyx::CallConversationEndedWebhookEvent::Data::RecordType::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # Unique identifier for the event.
          id: nil,
          # Timestamp when the event was created in the system.
          created_at: nil,
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
              created_at: Time,
              event_type:
                Telnyx::CallConversationEndedWebhookEvent::Data::EventType::TaggedSymbol,
              occurred_at: Time,
              payload: Telnyx::CallConversationEndedWebhookEvent::Data::Payload,
              record_type:
                Telnyx::CallConversationEndedWebhookEvent::Data::RecordType::TaggedSymbol
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
                Telnyx::CallConversationEndedWebhookEvent::Data::EventType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CALL_CONVERSATION_ENDED =
            T.let(
              :"call.conversation.ended",
              Telnyx::CallConversationEndedWebhookEvent::Data::EventType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::CallConversationEndedWebhookEvent::Data::EventType::TaggedSymbol
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
                Telnyx::CallConversationEndedWebhookEvent::Data::Payload,
                Telnyx::Internal::AnyHash
              )
            end

          # Unique identifier of the assistant involved in the call.
          sig { returns(T.nilable(String)) }
          attr_reader :assistant_id

          sig { params(assistant_id: String).void }
          attr_writer :assistant_id

          # Call ID used to issue commands via Call Control API.
          sig { returns(T.nilable(String)) }
          attr_reader :call_control_id

          sig { params(call_control_id: String).void }
          attr_writer :call_control_id

          # ID that is unique to the call leg.
          sig { returns(T.nilable(String)) }
          attr_reader :call_leg_id

          sig { params(call_leg_id: String).void }
          attr_writer :call_leg_id

          # ID that is unique to the call session (group of related call legs).
          sig { returns(T.nilable(String)) }
          attr_reader :call_session_id

          sig { params(call_session_id: String).void }
          attr_writer :call_session_id

          # The type of calling party connection.
          sig do
            returns(
              T.nilable(
                Telnyx::CallConversationEndedWebhookEvent::Data::Payload::CallingPartyType::TaggedSymbol
              )
            )
          end
          attr_reader :calling_party_type

          sig do
            params(
              calling_party_type:
                Telnyx::CallConversationEndedWebhookEvent::Data::Payload::CallingPartyType::OrSymbol
            ).void
          end
          attr_writer :calling_party_type

          # Base64-encoded state received from a command.
          sig { returns(T.nilable(String)) }
          attr_reader :client_state

          sig { params(client_state: String).void }
          attr_writer :client_state

          # Call Control App ID (formerly Telnyx connection ID) used in the call.
          sig { returns(T.nilable(String)) }
          attr_reader :connection_id

          sig { params(connection_id: String).void }
          attr_writer :connection_id

          # ID unique to the conversation or insight group generated for the call.
          sig { returns(T.nilable(String)) }
          attr_reader :conversation_id

          sig { params(conversation_id: String).void }
          attr_writer :conversation_id

          # Duration of the conversation in seconds.
          sig { returns(T.nilable(Integer)) }
          attr_reader :duration_sec

          sig { params(duration_sec: Integer).void }
          attr_writer :duration_sec

          # The caller's number or identifier.
          sig { returns(T.nilable(String)) }
          attr_reader :from

          sig { params(from: String).void }
          attr_writer :from

          # The large language model used during the conversation.
          sig { returns(T.nilable(String)) }
          attr_reader :llm_model

          sig { params(llm_model: String).void }
          attr_writer :llm_model

          # The speech-to-text model used in the conversation.
          sig { returns(T.nilable(String)) }
          attr_reader :stt_model

          sig { params(stt_model: String).void }
          attr_writer :stt_model

          # The callee's number or SIP address.
          sig { returns(T.nilable(String)) }
          attr_reader :to

          sig { params(to: String).void }
          attr_writer :to

          # The model ID used for text-to-speech synthesis.
          sig { returns(T.nilable(String)) }
          attr_reader :tts_model_id

          sig { params(tts_model_id: String).void }
          attr_writer :tts_model_id

          # The text-to-speech provider used in the call.
          sig { returns(T.nilable(String)) }
          attr_reader :tts_provider

          sig { params(tts_provider: String).void }
          attr_writer :tts_provider

          # Voice ID used for TTS.
          sig { returns(T.nilable(String)) }
          attr_reader :tts_voice_id

          sig { params(tts_voice_id: String).void }
          attr_writer :tts_voice_id

          sig do
            params(
              assistant_id: String,
              call_control_id: String,
              call_leg_id: String,
              call_session_id: String,
              calling_party_type:
                Telnyx::CallConversationEndedWebhookEvent::Data::Payload::CallingPartyType::OrSymbol,
              client_state: String,
              connection_id: String,
              conversation_id: String,
              duration_sec: Integer,
              from: String,
              llm_model: String,
              stt_model: String,
              to: String,
              tts_model_id: String,
              tts_provider: String,
              tts_voice_id: String
            ).returns(T.attached_class)
          end
          def self.new(
            # Unique identifier of the assistant involved in the call.
            assistant_id: nil,
            # Call ID used to issue commands via Call Control API.
            call_control_id: nil,
            # ID that is unique to the call leg.
            call_leg_id: nil,
            # ID that is unique to the call session (group of related call legs).
            call_session_id: nil,
            # The type of calling party connection.
            calling_party_type: nil,
            # Base64-encoded state received from a command.
            client_state: nil,
            # Call Control App ID (formerly Telnyx connection ID) used in the call.
            connection_id: nil,
            # ID unique to the conversation or insight group generated for the call.
            conversation_id: nil,
            # Duration of the conversation in seconds.
            duration_sec: nil,
            # The caller's number or identifier.
            from: nil,
            # The large language model used during the conversation.
            llm_model: nil,
            # The speech-to-text model used in the conversation.
            stt_model: nil,
            # The callee's number or SIP address.
            to: nil,
            # The model ID used for text-to-speech synthesis.
            tts_model_id: nil,
            # The text-to-speech provider used in the call.
            tts_provider: nil,
            # Voice ID used for TTS.
            tts_voice_id: nil
          )
          end

          sig do
            override.returns(
              {
                assistant_id: String,
                call_control_id: String,
                call_leg_id: String,
                call_session_id: String,
                calling_party_type:
                  Telnyx::CallConversationEndedWebhookEvent::Data::Payload::CallingPartyType::TaggedSymbol,
                client_state: String,
                connection_id: String,
                conversation_id: String,
                duration_sec: Integer,
                from: String,
                llm_model: String,
                stt_model: String,
                to: String,
                tts_model_id: String,
                tts_provider: String,
                tts_voice_id: String
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
                  Telnyx::CallConversationEndedWebhookEvent::Data::Payload::CallingPartyType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            PSTN =
              T.let(
                :pstn,
                Telnyx::CallConversationEndedWebhookEvent::Data::Payload::CallingPartyType::TaggedSymbol
              )
            SIP =
              T.let(
                :sip,
                Telnyx::CallConversationEndedWebhookEvent::Data::Payload::CallingPartyType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::CallConversationEndedWebhookEvent::Data::Payload::CallingPartyType::TaggedSymbol
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
                Telnyx::CallConversationEndedWebhookEvent::Data::RecordType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          EVENT =
            T.let(
              :event,
              Telnyx::CallConversationEndedWebhookEvent::Data::RecordType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::CallConversationEndedWebhookEvent::Data::RecordType::TaggedSymbol
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

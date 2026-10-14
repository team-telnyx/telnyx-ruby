# typed: strong

module Telnyx
  module Models
    class CallConversationCreatedWebhookEvent < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::CallConversationCreatedWebhookEvent,
            Telnyx::Internal::AnyHash
          )
        end

      # A conversation has been created for the call. Use the conversation ID to
      # correlate subsequent conversation events.
      sig do
        returns(T.nilable(Telnyx::CallConversationCreatedWebhookEvent::Data))
      end
      attr_reader :data

      sig do
        params(
          data: Telnyx::CallConversationCreatedWebhookEvent::Data::OrHash
        ).void
      end
      attr_writer :data

      sig do
        params(
          data: Telnyx::CallConversationCreatedWebhookEvent::Data::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # A conversation has been created for the call. Use the conversation ID to
        # correlate subsequent conversation events.
        data: nil
      )
      end

      sig do
        override.returns(
          { data: Telnyx::CallConversationCreatedWebhookEvent::Data }
        )
      end
      def to_hash
      end

      class Data < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::CallConversationCreatedWebhookEvent::Data,
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
              Telnyx::CallConversationCreatedWebhookEvent::Data::EventType::TaggedSymbol
            )
          )
        end
        attr_reader :event_type

        sig do
          params(
            event_type:
              Telnyx::CallConversationCreatedWebhookEvent::Data::EventType::OrSymbol
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
              Telnyx::CallConversationCreatedWebhookEvent::Data::Payload
            )
          )
        end
        attr_reader :payload

        sig do
          params(
            payload:
              Telnyx::CallConversationCreatedWebhookEvent::Data::Payload::OrHash
          ).void
        end
        attr_writer :payload

        # Identifies the type of the resource.
        sig do
          returns(
            T.nilable(
              Telnyx::CallConversationCreatedWebhookEvent::Data::RecordType::TaggedSymbol
            )
          )
        end
        attr_reader :record_type

        sig do
          params(
            record_type:
              Telnyx::CallConversationCreatedWebhookEvent::Data::RecordType::OrSymbol
          ).void
        end
        attr_writer :record_type

        # A conversation has been created for the call. Use the conversation ID to
        # correlate subsequent conversation events.
        sig do
          params(
            id: String,
            created_at: Time,
            event_type:
              Telnyx::CallConversationCreatedWebhookEvent::Data::EventType::OrSymbol,
            occurred_at: Time,
            payload:
              Telnyx::CallConversationCreatedWebhookEvent::Data::Payload::OrHash,
            record_type:
              Telnyx::CallConversationCreatedWebhookEvent::Data::RecordType::OrSymbol
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
                Telnyx::CallConversationCreatedWebhookEvent::Data::EventType::TaggedSymbol,
              occurred_at: Time,
              payload:
                Telnyx::CallConversationCreatedWebhookEvent::Data::Payload,
              record_type:
                Telnyx::CallConversationCreatedWebhookEvent::Data::RecordType::TaggedSymbol
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
                Telnyx::CallConversationCreatedWebhookEvent::Data::EventType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CALL_CONVERSATION_CREATED =
            T.let(
              :"call.conversation.created",
              Telnyx::CallConversationCreatedWebhookEvent::Data::EventType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::CallConversationCreatedWebhookEvent::Data::EventType::TaggedSymbol
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
                Telnyx::CallConversationCreatedWebhookEvent::Data::Payload,
                Telnyx::Internal::AnyHash
              )
            end

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
                Telnyx::CallConversationCreatedWebhookEvent::Data::Payload::CallingPartyType::TaggedSymbol
              )
            )
          end
          attr_reader :calling_party_type

          sig do
            params(
              calling_party_type:
                Telnyx::CallConversationCreatedWebhookEvent::Data::Payload::CallingPartyType::OrSymbol
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

          # Unique identifier of the conversation created for this call.
          sig { returns(T.nilable(String)) }
          attr_reader :conversation_id

          sig { params(conversation_id: String).void }
          attr_writer :conversation_id

          # The caller's number or identifier.
          sig { returns(T.nilable(String)) }
          attr_reader :from

          sig { params(from: String).void }
          attr_writer :from

          # The callee's number or SIP address.
          sig { returns(T.nilable(String)) }
          attr_reader :to

          sig { params(to: String).void }
          attr_writer :to

          sig do
            params(
              call_control_id: String,
              call_leg_id: String,
              call_session_id: String,
              calling_party_type:
                Telnyx::CallConversationCreatedWebhookEvent::Data::Payload::CallingPartyType::OrSymbol,
              client_state: String,
              connection_id: String,
              conversation_id: String,
              from: String,
              to: String
            ).returns(T.attached_class)
          end
          def self.new(
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
            # Unique identifier of the conversation created for this call.
            conversation_id: nil,
            # The caller's number or identifier.
            from: nil,
            # The callee's number or SIP address.
            to: nil
          )
          end

          sig do
            override.returns(
              {
                call_control_id: String,
                call_leg_id: String,
                call_session_id: String,
                calling_party_type:
                  Telnyx::CallConversationCreatedWebhookEvent::Data::Payload::CallingPartyType::TaggedSymbol,
                client_state: String,
                connection_id: String,
                conversation_id: String,
                from: String,
                to: String
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
                  Telnyx::CallConversationCreatedWebhookEvent::Data::Payload::CallingPartyType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            PSTN =
              T.let(
                :pstn,
                Telnyx::CallConversationCreatedWebhookEvent::Data::Payload::CallingPartyType::TaggedSymbol
              )
            SIP =
              T.let(
                :sip,
                Telnyx::CallConversationCreatedWebhookEvent::Data::Payload::CallingPartyType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::CallConversationCreatedWebhookEvent::Data::Payload::CallingPartyType::TaggedSymbol
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
                Telnyx::CallConversationCreatedWebhookEvent::Data::RecordType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          EVENT =
            T.let(
              :event,
              Telnyx::CallConversationCreatedWebhookEvent::Data::RecordType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::CallConversationCreatedWebhookEvent::Data::RecordType::TaggedSymbol
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

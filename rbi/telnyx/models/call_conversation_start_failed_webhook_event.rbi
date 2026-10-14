# typed: strong

module Telnyx
  module Models
    class CallConversationStartFailedWebhookEvent < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::CallConversationStartFailedWebhookEvent,
            Telnyx::Internal::AnyHash
          )
        end

      # The AI assistant requested for the call could not be started, so no conversation
      # was created. No `call.conversation.created` or `call.conversation.ended` is sent
      # for this attempt.
      sig do
        returns(
          T.nilable(Telnyx::CallConversationStartFailedWebhookEvent::Data)
        )
      end
      attr_reader :data

      sig do
        params(
          data: Telnyx::CallConversationStartFailedWebhookEvent::Data::OrHash
        ).void
      end
      attr_writer :data

      sig do
        params(
          data: Telnyx::CallConversationStartFailedWebhookEvent::Data::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The AI assistant requested for the call could not be started, so no conversation
        # was created. No `call.conversation.created` or `call.conversation.ended` is sent
        # for this attempt.
        data: nil
      )
      end

      sig do
        override.returns(
          { data: Telnyx::CallConversationStartFailedWebhookEvent::Data }
        )
      end
      def to_hash
      end

      class Data < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::CallConversationStartFailedWebhookEvent::Data,
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
              Telnyx::CallConversationStartFailedWebhookEvent::Data::EventType::TaggedSymbol
            )
          )
        end
        attr_reader :event_type

        sig do
          params(
            event_type:
              Telnyx::CallConversationStartFailedWebhookEvent::Data::EventType::OrSymbol
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
              Telnyx::CallConversationStartFailedWebhookEvent::Data::Payload
            )
          )
        end
        attr_reader :payload

        sig do
          params(
            payload:
              Telnyx::CallConversationStartFailedWebhookEvent::Data::Payload::OrHash
          ).void
        end
        attr_writer :payload

        # Identifies the type of the resource.
        sig do
          returns(
            T.nilable(
              Telnyx::CallConversationStartFailedWebhookEvent::Data::RecordType::TaggedSymbol
            )
          )
        end
        attr_reader :record_type

        sig do
          params(
            record_type:
              Telnyx::CallConversationStartFailedWebhookEvent::Data::RecordType::OrSymbol
          ).void
        end
        attr_writer :record_type

        # The AI assistant requested for the call could not be started, so no conversation
        # was created. No `call.conversation.created` or `call.conversation.ended` is sent
        # for this attempt.
        sig do
          params(
            id: String,
            created_at: Time,
            event_type:
              Telnyx::CallConversationStartFailedWebhookEvent::Data::EventType::OrSymbol,
            occurred_at: Time,
            payload:
              Telnyx::CallConversationStartFailedWebhookEvent::Data::Payload::OrHash,
            record_type:
              Telnyx::CallConversationStartFailedWebhookEvent::Data::RecordType::OrSymbol
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
                Telnyx::CallConversationStartFailedWebhookEvent::Data::EventType::TaggedSymbol,
              occurred_at: Time,
              payload:
                Telnyx::CallConversationStartFailedWebhookEvent::Data::Payload,
              record_type:
                Telnyx::CallConversationStartFailedWebhookEvent::Data::RecordType::TaggedSymbol
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
                Telnyx::CallConversationStartFailedWebhookEvent::Data::EventType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CALL_CONVERSATION_START_FAILED =
            T.let(
              :"call.conversation.start_failed",
              Telnyx::CallConversationStartFailedWebhookEvent::Data::EventType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::CallConversationStartFailedWebhookEvent::Data::EventType::TaggedSymbol
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
                Telnyx::CallConversationStartFailedWebhookEvent::Data::Payload,
                Telnyx::Internal::AnyHash
              )
            end

          # Identifier of the AI assistant that failed to start.
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
                Telnyx::CallConversationStartFailedWebhookEvent::Data::Payload::CallingPartyType::TaggedSymbol
              )
            )
          end
          attr_reader :calling_party_type

          sig do
            params(
              calling_party_type:
                Telnyx::CallConversationStartFailedWebhookEvent::Data::Payload::CallingPartyType::OrSymbol
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

          # The caller's number or identifier.
          sig { returns(T.nilable(String)) }
          attr_reader :from

          sig { params(from: String).void }
          attr_writer :from

          # Why the conversation could not be started. `invalid_request`: the assistant
          # request was rejected, for example because the assistant ID does not exist.
          # `service_error`: the assistant could not be started because of an error on the
          # Telnyx side.
          sig do
            returns(
              T.nilable(
                Telnyx::CallConversationStartFailedWebhookEvent::Data::Payload::Reason::TaggedSymbol
              )
            )
          end
          attr_reader :reason

          sig do
            params(
              reason:
                Telnyx::CallConversationStartFailedWebhookEvent::Data::Payload::Reason::OrSymbol
            ).void
          end
          attr_writer :reason

          # The callee's number or SIP address.
          sig { returns(T.nilable(String)) }
          attr_reader :to

          sig { params(to: String).void }
          attr_writer :to

          sig do
            params(
              assistant_id: String,
              call_control_id: String,
              call_leg_id: String,
              call_session_id: String,
              calling_party_type:
                Telnyx::CallConversationStartFailedWebhookEvent::Data::Payload::CallingPartyType::OrSymbol,
              client_state: String,
              connection_id: String,
              from: String,
              reason:
                Telnyx::CallConversationStartFailedWebhookEvent::Data::Payload::Reason::OrSymbol,
              to: String
            ).returns(T.attached_class)
          end
          def self.new(
            # Identifier of the AI assistant that failed to start.
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
            # The caller's number or identifier.
            from: nil,
            # Why the conversation could not be started. `invalid_request`: the assistant
            # request was rejected, for example because the assistant ID does not exist.
            # `service_error`: the assistant could not be started because of an error on the
            # Telnyx side.
            reason: nil,
            # The callee's number or SIP address.
            to: nil
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
                  Telnyx::CallConversationStartFailedWebhookEvent::Data::Payload::CallingPartyType::TaggedSymbol,
                client_state: String,
                connection_id: String,
                from: String,
                reason:
                  Telnyx::CallConversationStartFailedWebhookEvent::Data::Payload::Reason::TaggedSymbol,
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
                  Telnyx::CallConversationStartFailedWebhookEvent::Data::Payload::CallingPartyType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            PSTN =
              T.let(
                :pstn,
                Telnyx::CallConversationStartFailedWebhookEvent::Data::Payload::CallingPartyType::TaggedSymbol
              )
            SIP =
              T.let(
                :sip,
                Telnyx::CallConversationStartFailedWebhookEvent::Data::Payload::CallingPartyType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::CallConversationStartFailedWebhookEvent::Data::Payload::CallingPartyType::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # Why the conversation could not be started. `invalid_request`: the assistant
          # request was rejected, for example because the assistant ID does not exist.
          # `service_error`: the assistant could not be started because of an error on the
          # Telnyx side.
          module Reason
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::CallConversationStartFailedWebhookEvent::Data::Payload::Reason
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            INVALID_REQUEST =
              T.let(
                :invalid_request,
                Telnyx::CallConversationStartFailedWebhookEvent::Data::Payload::Reason::TaggedSymbol
              )
            SERVICE_ERROR =
              T.let(
                :service_error,
                Telnyx::CallConversationStartFailedWebhookEvent::Data::Payload::Reason::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::CallConversationStartFailedWebhookEvent::Data::Payload::Reason::TaggedSymbol
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
                Telnyx::CallConversationStartFailedWebhookEvent::Data::RecordType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          EVENT =
            T.let(
              :event,
              Telnyx::CallConversationStartFailedWebhookEvent::Data::RecordType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::CallConversationStartFailedWebhookEvent::Data::RecordType::TaggedSymbol
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

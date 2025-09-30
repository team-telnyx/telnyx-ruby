# typed: strong

module Telnyx
  module Models
    class CallAIGatherEndedWebhookEvent < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::CallAIGatherEndedWebhookEvent,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(Telnyx::CallAIGatherEndedWebhookEvent::Data)) }
      attr_reader :data

      sig do
        params(data: Telnyx::CallAIGatherEndedWebhookEvent::Data::OrHash).void
      end
      attr_writer :data

      sig do
        params(
          data: Telnyx::CallAIGatherEndedWebhookEvent::Data::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data: nil)
      end

      sig do
        override.returns({ data: Telnyx::CallAIGatherEndedWebhookEvent::Data })
      end
      def to_hash
      end

      class Data < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::CallAIGatherEndedWebhookEvent::Data,
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
              Telnyx::CallAIGatherEndedWebhookEvent::Data::EventType::TaggedSymbol
            )
          )
        end
        attr_reader :event_type

        sig do
          params(
            event_type:
              Telnyx::CallAIGatherEndedWebhookEvent::Data::EventType::OrSymbol
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
            T.nilable(Telnyx::CallAIGatherEndedWebhookEvent::Data::Payload)
          )
        end
        attr_reader :payload

        sig do
          params(
            payload:
              Telnyx::CallAIGatherEndedWebhookEvent::Data::Payload::OrHash
          ).void
        end
        attr_writer :payload

        # Identifies the type of the resource.
        sig do
          returns(
            T.nilable(
              Telnyx::CallAIGatherEndedWebhookEvent::Data::RecordType::TaggedSymbol
            )
          )
        end
        attr_reader :record_type

        sig do
          params(
            record_type:
              Telnyx::CallAIGatherEndedWebhookEvent::Data::RecordType::OrSymbol
          ).void
        end
        attr_writer :record_type

        sig do
          params(
            id: String,
            event_type:
              Telnyx::CallAIGatherEndedWebhookEvent::Data::EventType::OrSymbol,
            occurred_at: Time,
            payload:
              Telnyx::CallAIGatherEndedWebhookEvent::Data::Payload::OrHash,
            record_type:
              Telnyx::CallAIGatherEndedWebhookEvent::Data::RecordType::OrSymbol
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
                Telnyx::CallAIGatherEndedWebhookEvent::Data::EventType::TaggedSymbol,
              occurred_at: Time,
              payload: Telnyx::CallAIGatherEndedWebhookEvent::Data::Payload,
              record_type:
                Telnyx::CallAIGatherEndedWebhookEvent::Data::RecordType::TaggedSymbol
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
                Telnyx::CallAIGatherEndedWebhookEvent::Data::EventType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CALL_AI_GATHER_ENDED =
            T.let(
              :"call.ai_gather.ended",
              Telnyx::CallAIGatherEndedWebhookEvent::Data::EventType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::CallAIGatherEndedWebhookEvent::Data::EventType::TaggedSymbol
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
                Telnyx::CallAIGatherEndedWebhookEvent::Data::Payload,
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
          attr_reader :client_state

          sig { params(client_state: String).void }
          attr_writer :client_state

          # Telnyx connection ID used in the call.
          sig { returns(T.nilable(String)) }
          attr_reader :connection_id

          sig { params(connection_id: String).void }
          attr_writer :connection_id

          # Number or SIP URI placing the call.
          sig { returns(T.nilable(String)) }
          attr_reader :from

          sig { params(from: String).void }
          attr_writer :from

          # The history of the messages exchanged during the AI gather
          sig do
            returns(
              T.nilable(
                T::Array[
                  Telnyx::CallAIGatherEndedWebhookEvent::Data::Payload::MessageHistory
                ]
              )
            )
          end
          attr_reader :message_history

          sig do
            params(
              message_history:
                T::Array[
                  Telnyx::CallAIGatherEndedWebhookEvent::Data::Payload::MessageHistory::OrHash
                ]
            ).void
          end
          attr_writer :message_history

          # The result of the AI gather, its type depends of the `parameters` provided in
          # the command
          sig { returns(T.nilable(T.anything)) }
          attr_reader :result

          sig { params(result: T.anything).void }
          attr_writer :result

          # Reflects how command ended.
          sig do
            returns(
              T.nilable(
                Telnyx::CallAIGatherEndedWebhookEvent::Data::Payload::Status::TaggedSymbol
              )
            )
          end
          attr_reader :status

          sig do
            params(
              status:
                Telnyx::CallAIGatherEndedWebhookEvent::Data::Payload::Status::OrSymbol
            ).void
          end
          attr_writer :status

          # Destination number or SIP URI of the call.
          sig { returns(T.nilable(String)) }
          attr_reader :to

          sig { params(to: String).void }
          attr_writer :to

          sig do
            params(
              call_control_id: String,
              call_leg_id: String,
              call_session_id: String,
              client_state: String,
              connection_id: String,
              from: String,
              message_history:
                T::Array[
                  Telnyx::CallAIGatherEndedWebhookEvent::Data::Payload::MessageHistory::OrHash
                ],
              result: T.anything,
              status:
                Telnyx::CallAIGatherEndedWebhookEvent::Data::Payload::Status::OrSymbol,
              to: String
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
            # Telnyx connection ID used in the call.
            connection_id: nil,
            # Number or SIP URI placing the call.
            from: nil,
            # The history of the messages exchanged during the AI gather
            message_history: nil,
            # The result of the AI gather, its type depends of the `parameters` provided in
            # the command
            result: nil,
            # Reflects how command ended.
            status: nil,
            # Destination number or SIP URI of the call.
            to: nil
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
                from: String,
                message_history:
                  T::Array[
                    Telnyx::CallAIGatherEndedWebhookEvent::Data::Payload::MessageHistory
                  ],
                result: T.anything,
                status:
                  Telnyx::CallAIGatherEndedWebhookEvent::Data::Payload::Status::TaggedSymbol,
                to: String
              }
            )
          end
          def to_hash
          end

          class MessageHistory < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::CallAIGatherEndedWebhookEvent::Data::Payload::MessageHistory,
                  Telnyx::Internal::AnyHash
                )
              end

            # The content of the message
            sig { returns(T.nilable(String)) }
            attr_reader :content

            sig { params(content: String).void }
            attr_writer :content

            # The role of the message sender
            sig do
              returns(
                T.nilable(
                  Telnyx::CallAIGatherEndedWebhookEvent::Data::Payload::MessageHistory::Role::TaggedSymbol
                )
              )
            end
            attr_reader :role

            sig do
              params(
                role:
                  Telnyx::CallAIGatherEndedWebhookEvent::Data::Payload::MessageHistory::Role::OrSymbol
              ).void
            end
            attr_writer :role

            sig do
              params(
                content: String,
                role:
                  Telnyx::CallAIGatherEndedWebhookEvent::Data::Payload::MessageHistory::Role::OrSymbol
              ).returns(T.attached_class)
            end
            def self.new(
              # The content of the message
              content: nil,
              # The role of the message sender
              role: nil
            )
            end

            sig do
              override.returns(
                {
                  content: String,
                  role:
                    Telnyx::CallAIGatherEndedWebhookEvent::Data::Payload::MessageHistory::Role::TaggedSymbol
                }
              )
            end
            def to_hash
            end

            # The role of the message sender
            module Role
              extend Telnyx::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Telnyx::CallAIGatherEndedWebhookEvent::Data::Payload::MessageHistory::Role
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ASSISTANT =
                T.let(
                  :assistant,
                  Telnyx::CallAIGatherEndedWebhookEvent::Data::Payload::MessageHistory::Role::TaggedSymbol
                )
              USER =
                T.let(
                  :user,
                  Telnyx::CallAIGatherEndedWebhookEvent::Data::Payload::MessageHistory::Role::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Telnyx::CallAIGatherEndedWebhookEvent::Data::Payload::MessageHistory::Role::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end

          # Reflects how command ended.
          module Status
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::CallAIGatherEndedWebhookEvent::Data::Payload::Status
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            VALID =
              T.let(
                :valid,
                Telnyx::CallAIGatherEndedWebhookEvent::Data::Payload::Status::TaggedSymbol
              )
            INVALID =
              T.let(
                :invalid,
                Telnyx::CallAIGatherEndedWebhookEvent::Data::Payload::Status::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::CallAIGatherEndedWebhookEvent::Data::Payload::Status::TaggedSymbol
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
                Telnyx::CallAIGatherEndedWebhookEvent::Data::RecordType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          EVENT =
            T.let(
              :event,
              Telnyx::CallAIGatherEndedWebhookEvent::Data::RecordType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::CallAIGatherEndedWebhookEvent::Data::RecordType::TaggedSymbol
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

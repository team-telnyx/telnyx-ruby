# typed: strong

module Telnyx
  module Models
    class CallAIGatherEnded < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::CallAIGatherEnded, Telnyx::Internal::AnyHash)
        end

      # Identifies the type of resource.
      sig { returns(T.nilable(String)) }
      attr_reader :id

      sig { params(id: String).void }
      attr_writer :id

      # The type of event being delivered.
      sig do
        returns(T.nilable(Telnyx::CallAIGatherEnded::EventType::TaggedSymbol))
      end
      attr_reader :event_type

      sig do
        params(event_type: Telnyx::CallAIGatherEnded::EventType::OrSymbol).void
      end
      attr_writer :event_type

      # ISO 8601 datetime of when the event occurred.
      sig { returns(T.nilable(Time)) }
      attr_reader :occurred_at

      sig { params(occurred_at: Time).void }
      attr_writer :occurred_at

      sig { returns(T.nilable(Telnyx::CallAIGatherEnded::Payload)) }
      attr_reader :payload

      sig { params(payload: Telnyx::CallAIGatherEnded::Payload::OrHash).void }
      attr_writer :payload

      # Identifies the type of the resource.
      sig do
        returns(T.nilable(Telnyx::CallAIGatherEnded::RecordType::TaggedSymbol))
      end
      attr_reader :record_type

      sig do
        params(
          record_type: Telnyx::CallAIGatherEnded::RecordType::OrSymbol
        ).void
      end
      attr_writer :record_type

      sig do
        params(
          id: String,
          event_type: Telnyx::CallAIGatherEnded::EventType::OrSymbol,
          occurred_at: Time,
          payload: Telnyx::CallAIGatherEnded::Payload::OrHash,
          record_type: Telnyx::CallAIGatherEnded::RecordType::OrSymbol
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
            event_type: Telnyx::CallAIGatherEnded::EventType::TaggedSymbol,
            occurred_at: Time,
            payload: Telnyx::CallAIGatherEnded::Payload,
            record_type: Telnyx::CallAIGatherEnded::RecordType::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      # The type of event being delivered.
      module EventType
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::CallAIGatherEnded::EventType) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CALL_AI_GATHER_ENDED =
          T.let(
            :"call.ai_gather.ended",
            Telnyx::CallAIGatherEnded::EventType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Telnyx::CallAIGatherEnded::EventType::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      class Payload < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Telnyx::CallAIGatherEnded::Payload, Telnyx::Internal::AnyHash)
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
              T::Array[Telnyx::CallAIGatherEnded::Payload::MessageHistory]
            )
          )
        end
        attr_reader :message_history

        sig do
          params(
            message_history:
              T::Array[
                Telnyx::CallAIGatherEnded::Payload::MessageHistory::OrHash
              ]
          ).void
        end
        attr_writer :message_history

        # The result of the AI gather, its type depends of the `parameters` provided in
        # the command
        sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
        attr_reader :result

        sig { params(result: T::Hash[Symbol, T.anything]).void }
        attr_writer :result

        # Reflects how command ended.
        sig do
          returns(
            T.nilable(Telnyx::CallAIGatherEnded::Payload::Status::TaggedSymbol)
          )
        end
        attr_reader :status

        sig do
          params(
            status: Telnyx::CallAIGatherEnded::Payload::Status::OrSymbol
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
                Telnyx::CallAIGatherEnded::Payload::MessageHistory::OrHash
              ],
            result: T::Hash[Symbol, T.anything],
            status: Telnyx::CallAIGatherEnded::Payload::Status::OrSymbol,
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
                T::Array[Telnyx::CallAIGatherEnded::Payload::MessageHistory],
              result: T::Hash[Symbol, T.anything],
              status: Telnyx::CallAIGatherEnded::Payload::Status::TaggedSymbol,
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
                Telnyx::CallAIGatherEnded::Payload::MessageHistory,
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
                Telnyx::CallAIGatherEnded::Payload::MessageHistory::Role::TaggedSymbol
              )
            )
          end
          attr_reader :role

          sig do
            params(
              role:
                Telnyx::CallAIGatherEnded::Payload::MessageHistory::Role::OrSymbol
            ).void
          end
          attr_writer :role

          sig do
            params(
              content: String,
              role:
                Telnyx::CallAIGatherEnded::Payload::MessageHistory::Role::OrSymbol
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
                  Telnyx::CallAIGatherEnded::Payload::MessageHistory::Role::TaggedSymbol
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
                  Telnyx::CallAIGatherEnded::Payload::MessageHistory::Role
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            ASSISTANT =
              T.let(
                :assistant,
                Telnyx::CallAIGatherEnded::Payload::MessageHistory::Role::TaggedSymbol
              )
            USER =
              T.let(
                :user,
                Telnyx::CallAIGatherEnded::Payload::MessageHistory::Role::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::CallAIGatherEnded::Payload::MessageHistory::Role::TaggedSymbol
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
              T.all(Symbol, Telnyx::CallAIGatherEnded::Payload::Status)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          VALID =
            T.let(
              :valid,
              Telnyx::CallAIGatherEnded::Payload::Status::TaggedSymbol
            )
          INVALID =
            T.let(
              :invalid,
              Telnyx::CallAIGatherEnded::Payload::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[Telnyx::CallAIGatherEnded::Payload::Status::TaggedSymbol]
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
          T.type_alias { T.all(Symbol, Telnyx::CallAIGatherEnded::RecordType) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        EVENT =
          T.let(:event, Telnyx::CallAIGatherEnded::RecordType::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Telnyx::CallAIGatherEnded::RecordType::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end

# typed: strong

module Telnyx
  module Models
    class CallCostWebhookEvent < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::CallCostWebhookEvent, Telnyx::Internal::AnyHash)
        end

      sig { returns(T.nilable(Telnyx::CallCostWebhookEvent::Data)) }
      attr_reader :data

      sig { params(data: Telnyx::CallCostWebhookEvent::Data::OrHash).void }
      attr_writer :data

      sig do
        params(data: Telnyx::CallCostWebhookEvent::Data::OrHash).returns(
          T.attached_class
        )
      end
      def self.new(data: nil)
      end

      sig { override.returns({ data: Telnyx::CallCostWebhookEvent::Data }) }
      def to_hash
      end

      class Data < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Telnyx::CallCostWebhookEvent::Data, Telnyx::Internal::AnyHash)
          end

        # Unique identifier of the event.
        sig { returns(T.nilable(String)) }
        attr_reader :id

        sig { params(id: String).void }
        attr_writer :id

        # The type of event being delivered.
        sig do
          returns(
            T.nilable(
              Telnyx::CallCostWebhookEvent::Data::EventType::TaggedSymbol
            )
          )
        end
        attr_reader :event_type

        sig do
          params(
            event_type: Telnyx::CallCostWebhookEvent::Data::EventType::OrSymbol
          ).void
        end
        attr_writer :event_type

        # ISO 8601 datetime of when the event occurred.
        sig { returns(T.nilable(Time)) }
        attr_reader :occurred_at

        sig { params(occurred_at: Time).void }
        attr_writer :occurred_at

        sig { returns(T.nilable(Telnyx::CallCostWebhookEvent::Data::Payload)) }
        attr_reader :payload

        sig do
          params(
            payload: Telnyx::CallCostWebhookEvent::Data::Payload::OrHash
          ).void
        end
        attr_writer :payload

        # Identifies the type of the resource.
        sig do
          returns(
            T.nilable(
              Telnyx::CallCostWebhookEvent::Data::RecordType::TaggedSymbol
            )
          )
        end
        attr_reader :record_type

        sig do
          params(
            record_type:
              Telnyx::CallCostWebhookEvent::Data::RecordType::OrSymbol
          ).void
        end
        attr_writer :record_type

        sig do
          params(
            id: String,
            event_type: Telnyx::CallCostWebhookEvent::Data::EventType::OrSymbol,
            occurred_at: Time,
            payload: Telnyx::CallCostWebhookEvent::Data::Payload::OrHash,
            record_type:
              Telnyx::CallCostWebhookEvent::Data::RecordType::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # Unique identifier of the event.
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
                Telnyx::CallCostWebhookEvent::Data::EventType::TaggedSymbol,
              occurred_at: Time,
              payload: Telnyx::CallCostWebhookEvent::Data::Payload,
              record_type:
                Telnyx::CallCostWebhookEvent::Data::RecordType::TaggedSymbol
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
              T.all(Symbol, Telnyx::CallCostWebhookEvent::Data::EventType)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CALL_COST =
            T.let(
              :"call.cost",
              Telnyx::CallCostWebhookEvent::Data::EventType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::CallCostWebhookEvent::Data::EventType::TaggedSymbol
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
                Telnyx::CallCostWebhookEvent::Data::Payload,
                Telnyx::Internal::AnyHash
              )
            end

          # The longest billed duration across all cost parts, in seconds.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :billed_duration_secs

          # Identifies the billing group associated with the call.
          sig { returns(T.nilable(String)) }
          attr_accessor :billing_group_id

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

          # State received from a command. Base64-encoded.
          sig { returns(T.nilable(String)) }
          attr_reader :client_state

          sig { params(client_state: String).void }
          attr_writer :client_state

          # Call Control App ID (formerly Telnyx connection ID) used in the call.
          sig { returns(T.nilable(String)) }
          attr_reader :connection_id

          sig { params(connection_id: String).void }
          attr_writer :connection_id

          # Breakdown of costs by call part.
          sig do
            returns(
              T.nilable(
                T::Array[Telnyx::CallCostWebhookEvent::Data::Payload::CostPart]
              )
            )
          end
          attr_reader :cost_parts

          sig do
            params(
              cost_parts:
                T::Array[
                  Telnyx::CallCostWebhookEvent::Data::Payload::CostPart::OrHash
                ]
            ).void
          end
          attr_writer :cost_parts

          # ISO 8601 datetime of when the event occurred.
          sig { returns(T.nilable(Time)) }
          attr_reader :occurred_at

          sig { params(occurred_at: Time).void }
          attr_writer :occurred_at

          # The status of the cost calculation (`success` or `error`).
          sig do
            returns(
              T.nilable(
                Telnyx::CallCostWebhookEvent::Data::Payload::Status::TaggedSymbol
              )
            )
          end
          attr_reader :status

          sig do
            params(
              status:
                Telnyx::CallCostWebhookEvent::Data::Payload::Status::OrSymbol
            ).void
          end
          attr_writer :status

          # The total cost of the call.
          sig { returns(T.nilable(String)) }
          attr_accessor :total_cost

          sig do
            params(
              billed_duration_secs: T.nilable(Integer),
              billing_group_id: T.nilable(String),
              call_control_id: String,
              call_leg_id: String,
              call_session_id: String,
              client_state: String,
              connection_id: String,
              cost_parts:
                T::Array[
                  Telnyx::CallCostWebhookEvent::Data::Payload::CostPart::OrHash
                ],
              occurred_at: Time,
              status:
                Telnyx::CallCostWebhookEvent::Data::Payload::Status::OrSymbol,
              total_cost: T.nilable(String)
            ).returns(T.attached_class)
          end
          def self.new(
            # The longest billed duration across all cost parts, in seconds.
            billed_duration_secs: nil,
            # Identifies the billing group associated with the call.
            billing_group_id: nil,
            # Call ID used to issue commands via Call Control API.
            call_control_id: nil,
            # ID that is unique to the call and can be used to correlate webhook events.
            call_leg_id: nil,
            # ID that is unique to the call session and can be used to correlate webhook
            # events. Call session is a group of related call legs that logically belong to
            # the same phone call, e.g. an inbound and outbound leg of a transferred call.
            call_session_id: nil,
            # State received from a command. Base64-encoded.
            client_state: nil,
            # Call Control App ID (formerly Telnyx connection ID) used in the call.
            connection_id: nil,
            # Breakdown of costs by call part.
            cost_parts: nil,
            # ISO 8601 datetime of when the event occurred.
            occurred_at: nil,
            # The status of the cost calculation (`success` or `error`).
            status: nil,
            # The total cost of the call.
            total_cost: nil
          )
          end

          sig do
            override.returns(
              {
                billed_duration_secs: T.nilable(Integer),
                billing_group_id: T.nilable(String),
                call_control_id: String,
                call_leg_id: String,
                call_session_id: String,
                client_state: String,
                connection_id: String,
                cost_parts:
                  T::Array[
                    Telnyx::CallCostWebhookEvent::Data::Payload::CostPart
                  ],
                occurred_at: Time,
                status:
                  Telnyx::CallCostWebhookEvent::Data::Payload::Status::TaggedSymbol,
                total_cost: T.nilable(String)
              }
            )
          end
          def to_hash
          end

          class CostPart < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::CallCostWebhookEvent::Data::Payload::CostPart,
                  Telnyx::Internal::AnyHash
                )
              end

            # The billed duration in seconds for this part of the call.
            sig { returns(T.nilable(Integer)) }
            attr_reader :billed_duration_secs

            sig { params(billed_duration_secs: Integer).void }
            attr_writer :billed_duration_secs

            # The product component this cost applies to. Values are determined by the billing
            # system (e.g. sip-trunking, call-control, call-recording). Not a fixed set — new
            # values may appear as products evolve.
            sig { returns(T.nilable(String)) }
            attr_reader :call_part

            sig { params(call_part: String).void }
            attr_writer :call_part

            # The cost for this part of the call.
            sig { returns(T.nilable(String)) }
            attr_reader :cost

            sig { params(cost: String).void }
            attr_writer :cost

            # The currency of the cost.
            sig { returns(T.nilable(String)) }
            attr_reader :currency

            sig { params(currency: String).void }
            attr_writer :currency

            # The per-minute rate applied.
            sig { returns(T.nilable(String)) }
            attr_reader :rate

            sig { params(rate: String).void }
            attr_writer :rate

            sig do
              params(
                billed_duration_secs: Integer,
                call_part: String,
                cost: String,
                currency: String,
                rate: String
              ).returns(T.attached_class)
            end
            def self.new(
              # The billed duration in seconds for this part of the call.
              billed_duration_secs: nil,
              # The product component this cost applies to. Values are determined by the billing
              # system (e.g. sip-trunking, call-control, call-recording). Not a fixed set — new
              # values may appear as products evolve.
              call_part: nil,
              # The cost for this part of the call.
              cost: nil,
              # The currency of the cost.
              currency: nil,
              # The per-minute rate applied.
              rate: nil
            )
            end

            sig do
              override.returns(
                {
                  billed_duration_secs: Integer,
                  call_part: String,
                  cost: String,
                  currency: String,
                  rate: String
                }
              )
            end
            def to_hash
            end
          end

          # The status of the cost calculation (`success` or `error`).
          module Status
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::CallCostWebhookEvent::Data::Payload::Status
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            SUCCESS =
              T.let(
                :success,
                Telnyx::CallCostWebhookEvent::Data::Payload::Status::TaggedSymbol
              )
            ERROR =
              T.let(
                :error,
                Telnyx::CallCostWebhookEvent::Data::Payload::Status::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::CallCostWebhookEvent::Data::Payload::Status::TaggedSymbol
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
              T.all(Symbol, Telnyx::CallCostWebhookEvent::Data::RecordType)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          EVENT =
            T.let(
              :event,
              Telnyx::CallCostWebhookEvent::Data::RecordType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::CallCostWebhookEvent::Data::RecordType::TaggedSymbol
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

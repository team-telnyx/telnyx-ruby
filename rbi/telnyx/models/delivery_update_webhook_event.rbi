# typed: strong

module Telnyx
  module Models
    class DeliveryUpdateWebhookEvent < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::DeliveryUpdateWebhookEvent, Telnyx::Internal::AnyHash)
        end

      sig { returns(T.nilable(Telnyx::DeliveryUpdateWebhookEvent::Data)) }
      attr_reader :data

      sig do
        params(data: Telnyx::DeliveryUpdateWebhookEvent::Data::OrHash).void
      end
      attr_writer :data

      sig { returns(T.nilable(Telnyx::DeliveryUpdateWebhookEvent::Meta)) }
      attr_reader :meta

      sig do
        params(meta: Telnyx::DeliveryUpdateWebhookEvent::Meta::OrHash).void
      end
      attr_writer :meta

      sig do
        params(
          data: Telnyx::DeliveryUpdateWebhookEvent::Data::OrHash,
          meta: Telnyx::DeliveryUpdateWebhookEvent::Meta::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data: nil, meta: nil)
      end

      sig do
        override.returns(
          {
            data: Telnyx::DeliveryUpdateWebhookEvent::Data,
            meta: Telnyx::DeliveryUpdateWebhookEvent::Meta
          }
        )
      end
      def to_hash
      end

      class Data < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::DeliveryUpdateWebhookEvent::Data,
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
              Telnyx::DeliveryUpdateWebhookEvent::Data::EventType::TaggedSymbol
            )
          )
        end
        attr_reader :event_type

        sig do
          params(
            event_type:
              Telnyx::DeliveryUpdateWebhookEvent::Data::EventType::OrSymbol
          ).void
        end
        attr_writer :event_type

        # ISO 8601 formatted date indicating when the resource was created.
        sig { returns(T.nilable(Time)) }
        attr_reader :occurred_at

        sig { params(occurred_at: Time).void }
        attr_writer :occurred_at

        sig { returns(T.nilable(Telnyx::OutboundMessagePayload)) }
        attr_reader :payload

        sig { params(payload: Telnyx::OutboundMessagePayload::OrHash).void }
        attr_writer :payload

        # Identifies the type of the resource.
        sig do
          returns(
            T.nilable(
              Telnyx::DeliveryUpdateWebhookEvent::Data::RecordType::TaggedSymbol
            )
          )
        end
        attr_reader :record_type

        sig do
          params(
            record_type:
              Telnyx::DeliveryUpdateWebhookEvent::Data::RecordType::OrSymbol
          ).void
        end
        attr_writer :record_type

        sig do
          params(
            id: String,
            event_type:
              Telnyx::DeliveryUpdateWebhookEvent::Data::EventType::OrSymbol,
            occurred_at: Time,
            payload: Telnyx::OutboundMessagePayload::OrHash,
            record_type:
              Telnyx::DeliveryUpdateWebhookEvent::Data::RecordType::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # Identifies the type of resource.
          id: nil,
          # The type of event being delivered.
          event_type: nil,
          # ISO 8601 formatted date indicating when the resource was created.
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
                Telnyx::DeliveryUpdateWebhookEvent::Data::EventType::TaggedSymbol,
              occurred_at: Time,
              payload: Telnyx::OutboundMessagePayload,
              record_type:
                Telnyx::DeliveryUpdateWebhookEvent::Data::RecordType::TaggedSymbol
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
              T.all(Symbol, Telnyx::DeliveryUpdateWebhookEvent::Data::EventType)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          MESSAGE_SENT =
            T.let(
              :"message.sent",
              Telnyx::DeliveryUpdateWebhookEvent::Data::EventType::TaggedSymbol
            )
          MESSAGE_FINALIZED =
            T.let(
              :"message.finalized",
              Telnyx::DeliveryUpdateWebhookEvent::Data::EventType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::DeliveryUpdateWebhookEvent::Data::EventType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Identifies the type of the resource.
        module RecordType
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::DeliveryUpdateWebhookEvent::Data::RecordType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          EVENT =
            T.let(
              :event,
              Telnyx::DeliveryUpdateWebhookEvent::Data::RecordType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::DeliveryUpdateWebhookEvent::Data::RecordType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      class Meta < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::DeliveryUpdateWebhookEvent::Meta,
              Telnyx::Internal::AnyHash
            )
          end

        # Number of attempts to deliver the webhook event.
        sig { returns(T.nilable(Integer)) }
        attr_reader :attempt

        sig { params(attempt: Integer).void }
        attr_writer :attempt

        # The webhook URL the event was delivered to.
        sig { returns(T.nilable(String)) }
        attr_reader :delivered_to

        sig { params(delivered_to: String).void }
        attr_writer :delivered_to

        sig do
          params(attempt: Integer, delivered_to: String).returns(
            T.attached_class
          )
        end
        def self.new(
          # Number of attempts to deliver the webhook event.
          attempt: nil,
          # The webhook URL the event was delivered to.
          delivered_to: nil
        )
        end

        sig { override.returns({ attempt: Integer, delivered_to: String }) }
        def to_hash
        end
      end
    end
  end
end

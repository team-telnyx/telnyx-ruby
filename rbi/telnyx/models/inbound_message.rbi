# typed: strong

module Telnyx
  module Models
    class InboundMessage < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::InboundMessage, Telnyx::Internal::AnyHash)
        end

      # Identifies the type of resource.
      sig { returns(T.nilable(String)) }
      attr_reader :id

      sig { params(id: String).void }
      attr_writer :id

      # The type of event being delivered.
      sig do
        returns(T.nilable(Telnyx::InboundMessage::EventType::TaggedSymbol))
      end
      attr_reader :event_type

      sig do
        params(event_type: Telnyx::InboundMessage::EventType::OrSymbol).void
      end
      attr_writer :event_type

      # ISO 8601 formatted date indicating when the resource was created.
      sig { returns(T.nilable(Time)) }
      attr_reader :occurred_at

      sig { params(occurred_at: Time).void }
      attr_writer :occurred_at

      sig { returns(T.nilable(Telnyx::InboundMessagePayload)) }
      attr_reader :payload

      sig { params(payload: Telnyx::InboundMessagePayload::OrHash).void }
      attr_writer :payload

      # Identifies the type of the resource.
      sig do
        returns(T.nilable(Telnyx::InboundMessage::RecordType::TaggedSymbol))
      end
      attr_reader :record_type

      sig do
        params(record_type: Telnyx::InboundMessage::RecordType::OrSymbol).void
      end
      attr_writer :record_type

      sig do
        params(
          id: String,
          event_type: Telnyx::InboundMessage::EventType::OrSymbol,
          occurred_at: Time,
          payload: Telnyx::InboundMessagePayload::OrHash,
          record_type: Telnyx::InboundMessage::RecordType::OrSymbol
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
            event_type: Telnyx::InboundMessage::EventType::TaggedSymbol,
            occurred_at: Time,
            payload: Telnyx::InboundMessagePayload,
            record_type: Telnyx::InboundMessage::RecordType::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      # The type of event being delivered.
      module EventType
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::InboundMessage::EventType) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        MESSAGE_RECEIVED =
          T.let(
            :"message.received",
            Telnyx::InboundMessage::EventType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Telnyx::InboundMessage::EventType::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # Identifies the type of the resource.
      module RecordType
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::InboundMessage::RecordType) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        EVENT = T.let(:event, Telnyx::InboundMessage::RecordType::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Telnyx::InboundMessage::RecordType::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end

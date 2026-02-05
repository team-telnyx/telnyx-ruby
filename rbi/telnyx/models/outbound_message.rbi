# typed: strong

module Telnyx
  module Models
    class OutboundMessage < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::OutboundMessage, Telnyx::Internal::AnyHash)
        end

      # Identifies the type of resource.
      sig { returns(T.nilable(String)) }
      attr_reader :id

      sig { params(id: String).void }
      attr_writer :id

      # The type of event being delivered.
      sig do
        returns(T.nilable(Telnyx::OutboundMessage::EventType::TaggedSymbol))
      end
      attr_reader :event_type

      sig do
        params(event_type: Telnyx::OutboundMessage::EventType::OrSymbol).void
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
        returns(T.nilable(Telnyx::OutboundMessage::RecordType::TaggedSymbol))
      end
      attr_reader :record_type

      sig do
        params(record_type: Telnyx::OutboundMessage::RecordType::OrSymbol).void
      end
      attr_writer :record_type

      sig do
        params(
          id: String,
          event_type: Telnyx::OutboundMessage::EventType::OrSymbol,
          occurred_at: Time,
          payload: Telnyx::OutboundMessagePayload::OrHash,
          record_type: Telnyx::OutboundMessage::RecordType::OrSymbol
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
            event_type: Telnyx::OutboundMessage::EventType::TaggedSymbol,
            occurred_at: Time,
            payload: Telnyx::OutboundMessagePayload,
            record_type: Telnyx::OutboundMessage::RecordType::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      # The type of event being delivered.
      module EventType
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::OutboundMessage::EventType) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        MESSAGE_SENT =
          T.let(
            :"message.sent",
            Telnyx::OutboundMessage::EventType::TaggedSymbol
          )
        MESSAGE_FINALIZED =
          T.let(
            :"message.finalized",
            Telnyx::OutboundMessage::EventType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Telnyx::OutboundMessage::EventType::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # Identifies the type of the resource.
      module RecordType
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::OutboundMessage::RecordType) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        EVENT = T.let(:event, Telnyx::OutboundMessage::RecordType::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Telnyx::OutboundMessage::RecordType::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end

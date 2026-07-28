# typed: strong

module Telnyx
  module Models
    class InboundMessage < Telnyx::Models::EmailInboxes::ThreadMessage
      OrHash =
        T.type_alias do
          T.any(Telnyx::InboundMessage, Telnyx::Internal::AnyHash)
        end

      sig do
        returns(T.nilable(Telnyx::InboundMessage::Direction::TaggedSymbol))
      end
      attr_reader :direction

      sig do
        params(direction: Telnyx::InboundMessage::Direction::OrSymbol).void
      end
      attr_writer :direction

      sig { returns(T.nilable(Telnyx::InboundMessage::Status::TaggedSymbol)) }
      attr_reader :status

      sig { params(status: Telnyx::InboundMessage::Status::OrSymbol).void }
      attr_writer :status

      sig do
        params(
          direction: Telnyx::InboundMessage::Direction::OrSymbol,
          status: Telnyx::InboundMessage::Status::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(direction: nil, status: nil)
      end

      sig do
        override.returns(
          {
            direction: Telnyx::InboundMessage::Direction::TaggedSymbol,
            status: Telnyx::InboundMessage::Status::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      module Direction
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::InboundMessage::Direction) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        INBOUND =
          T.let(:inbound, Telnyx::InboundMessage::Direction::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Telnyx::InboundMessage::Direction::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      module Status
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::InboundMessage::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        RECEIVED =
          T.let(:received, Telnyx::InboundMessage::Status::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Telnyx::InboundMessage::Status::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end

# typed: strong

module Telnyx
  module Models
    class InboundMessageWebhookEvent < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::InboundMessageWebhookEvent, Telnyx::Internal::AnyHash)
        end

      sig { returns(T.nilable(Telnyx::InboundMessage)) }
      attr_reader :data

      sig { params(data: Telnyx::InboundMessage::OrHash).void }
      attr_writer :data

      sig do
        params(data: Telnyx::InboundMessage::OrHash).returns(T.attached_class)
      end
      def self.new(data: nil)
      end

      sig { override.returns({ data: Telnyx::InboundMessage }) }
      def to_hash
      end
    end
  end
end

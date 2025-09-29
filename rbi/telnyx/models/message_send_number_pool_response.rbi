# typed: strong

module Telnyx
  module Models
    class MessageSendNumberPoolResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::MessageSendNumberPoolResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(Telnyx::OutboundMessagePayload)) }
      attr_reader :data

      sig { params(data: Telnyx::OutboundMessagePayload::OrHash).void }
      attr_writer :data

      sig do
        params(data: Telnyx::OutboundMessagePayload::OrHash).returns(
          T.attached_class
        )
      end
      def self.new(data: nil)
      end

      sig { override.returns({ data: Telnyx::OutboundMessagePayload }) }
      def to_hash
      end
    end
  end
end

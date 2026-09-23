# typed: strong

module Telnyx
  module Models
    class MessageRetrieveGroupMessagesResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::MessageRetrieveGroupMessagesResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(T::Array[Telnyx::OutboundMessagePayload])) }
      attr_reader :data

      sig do
        params(data: T::Array[Telnyx::OutboundMessagePayload::OrHash]).void
      end
      attr_writer :data

      sig do
        params(data: T::Array[Telnyx::OutboundMessagePayload::OrHash]).returns(
          T.attached_class
        )
      end
      def self.new(data: nil)
      end

      sig do
        override.returns({ data: T::Array[Telnyx::OutboundMessagePayload] })
      end
      def to_hash
      end
    end
  end
end

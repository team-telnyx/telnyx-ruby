# typed: strong

module Telnyx
  module Models
    class MessageRetrieveResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::MessageRetrieveResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig do
        returns(
          T.nilable(Telnyx::Models::MessageRetrieveResponse::Data::Variants)
        )
      end
      attr_reader :data

      sig do
        params(
          data:
            T.any(
              Telnyx::OutboundMessagePayload::OrHash,
              Telnyx::InboundMessagePayload::OrHash
            )
        ).void
      end
      attr_writer :data

      sig do
        params(
          data:
            T.any(
              Telnyx::OutboundMessagePayload::OrHash,
              Telnyx::InboundMessagePayload::OrHash
            )
        ).returns(T.attached_class)
      end
      def self.new(data: nil)
      end

      sig do
        override.returns(
          { data: Telnyx::Models::MessageRetrieveResponse::Data::Variants }
        )
      end
      def to_hash
      end

      module Data
        extend Telnyx::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(Telnyx::OutboundMessagePayload, Telnyx::InboundMessagePayload)
          end

        sig do
          override.returns(
            T::Array[Telnyx::Models::MessageRetrieveResponse::Data::Variants]
          )
        end
        def self.variants
        end
      end
    end
  end
end

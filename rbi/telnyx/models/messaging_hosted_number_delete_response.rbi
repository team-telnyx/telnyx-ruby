# typed: strong

module Telnyx
  module Models
    class MessagingHostedNumberDeleteResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::MessagingHostedNumberDeleteResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(Telnyx::MessagingHostedNumberOrder)) }
      attr_reader :data

      sig { params(data: Telnyx::MessagingHostedNumberOrder::OrHash).void }
      attr_writer :data

      sig do
        params(data: Telnyx::MessagingHostedNumberOrder::OrHash).returns(
          T.attached_class
        )
      end
      def self.new(data: nil)
      end

      sig { override.returns({ data: Telnyx::MessagingHostedNumberOrder }) }
      def to_hash
      end
    end
  end
end

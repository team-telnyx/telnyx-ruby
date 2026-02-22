# typed: strong

module Telnyx
  module Models
    class AlphanumericSenderIDDeleteResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::AlphanumericSenderIDDeleteResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(Telnyx::AlphanumericSenderID)) }
      attr_reader :data

      sig { params(data: Telnyx::AlphanumericSenderID::OrHash).void }
      attr_writer :data

      sig do
        params(data: Telnyx::AlphanumericSenderID::OrHash).returns(
          T.attached_class
        )
      end
      def self.new(data: nil)
      end

      sig { override.returns({ data: Telnyx::AlphanumericSenderID }) }
      def to_hash
      end
    end
  end
end

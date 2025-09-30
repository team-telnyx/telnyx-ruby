# typed: strong

module Telnyx
  module Models
    class NumberOrderCreateResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::NumberOrderCreateResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(Telnyx::NumberOrderWithPhoneNumbers)) }
      attr_reader :data

      sig { params(data: Telnyx::NumberOrderWithPhoneNumbers::OrHash).void }
      attr_writer :data

      sig do
        params(data: Telnyx::NumberOrderWithPhoneNumbers::OrHash).returns(
          T.attached_class
        )
      end
      def self.new(data: nil)
      end

      sig { override.returns({ data: Telnyx::NumberOrderWithPhoneNumbers }) }
      def to_hash
      end
    end
  end
end

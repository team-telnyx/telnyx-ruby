# typed: strong

module Telnyx
  module Models
    class NumberOrderPhoneNumberRetrieveResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::NumberOrderPhoneNumberRetrieveResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(Telnyx::NumberOrderPhoneNumber)) }
      attr_reader :data

      sig { params(data: Telnyx::NumberOrderPhoneNumber::OrHash).void }
      attr_writer :data

      sig do
        params(data: Telnyx::NumberOrderPhoneNumber::OrHash).returns(
          T.attached_class
        )
      end
      def self.new(data: nil)
      end

      sig { override.returns({ data: Telnyx::NumberOrderPhoneNumber }) }
      def to_hash
      end
    end
  end
end

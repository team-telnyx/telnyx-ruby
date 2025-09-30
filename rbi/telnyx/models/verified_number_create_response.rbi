# typed: strong

module Telnyx
  module Models
    class VerifiedNumberCreateResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::VerifiedNumberCreateResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(String)) }
      attr_reader :phone_number

      sig { params(phone_number: String).void }
      attr_writer :phone_number

      sig { returns(T.nilable(String)) }
      attr_reader :verification_method

      sig { params(verification_method: String).void }
      attr_writer :verification_method

      sig do
        params(phone_number: String, verification_method: String).returns(
          T.attached_class
        )
      end
      def self.new(phone_number: nil, verification_method: nil)
      end

      sig do
        override.returns({ phone_number: String, verification_method: String })
      end
      def to_hash
      end
    end
  end
end

# typed: strong

module Telnyx
  module Models
    class TelephonyCredentialUpdateResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::TelephonyCredentialUpdateResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(Telnyx::TelephonyCredential)) }
      attr_reader :data

      sig { params(data: Telnyx::TelephonyCredential::OrHash).void }
      attr_writer :data

      sig do
        params(data: Telnyx::TelephonyCredential::OrHash).returns(
          T.attached_class
        )
      end
      def self.new(data: nil)
      end

      sig { override.returns({ data: Telnyx::TelephonyCredential }) }
      def to_hash
      end
    end
  end
end

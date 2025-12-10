# typed: strong

module Telnyx
  module Models
    class MobilePhoneNumberRetrieveResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::MobilePhoneNumberRetrieveResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(Telnyx::MobilePhoneNumber)) }
      attr_reader :data

      sig { params(data: Telnyx::MobilePhoneNumber::OrHash).void }
      attr_writer :data

      sig do
        params(data: Telnyx::MobilePhoneNumber::OrHash).returns(
          T.attached_class
        )
      end
      def self.new(data: nil)
      end

      sig { override.returns({ data: Telnyx::MobilePhoneNumber }) }
      def to_hash
      end
    end
  end
end

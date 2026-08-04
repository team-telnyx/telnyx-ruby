# typed: strong

module Telnyx
  module Models
    class PhoneNumberRetrieveResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::PhoneNumberRetrieveResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(Telnyx::NumbersPhoneNumberDetailed)) }
      attr_reader :data

      sig { params(data: Telnyx::NumbersPhoneNumberDetailed::OrHash).void }
      attr_writer :data

      sig do
        params(data: Telnyx::NumbersPhoneNumberDetailed::OrHash).returns(
          T.attached_class
        )
      end
      def self.new(data: nil)
      end

      sig { override.returns({ data: Telnyx::NumbersPhoneNumberDetailed }) }
      def to_hash
      end
    end
  end
end

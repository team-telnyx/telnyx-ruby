# typed: strong

module Telnyx
  module Models
    class PhoneNumberUpdateResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::PhoneNumberUpdateResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(Telnyx::PhoneNumberDetailed)) }
      attr_reader :data

      sig { params(data: Telnyx::PhoneNumberDetailed::OrHash).void }
      attr_writer :data

      sig do
        params(data: Telnyx::PhoneNumberDetailed::OrHash).returns(
          T.attached_class
        )
      end
      def self.new(data: nil)
      end

      sig { override.returns({ data: Telnyx::PhoneNumberDetailed }) }
      def to_hash
      end
    end
  end
end

# typed: strong

module Telnyx
  module Models
    class UserAddressRetrieveResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::UserAddressRetrieveResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(Telnyx::UserAddress)) }
      attr_reader :data

      sig { params(data: Telnyx::UserAddress::OrHash).void }
      attr_writer :data

      sig do
        params(data: Telnyx::UserAddress::OrHash).returns(T.attached_class)
      end
      def self.new(data: nil)
      end

      sig { override.returns({ data: Telnyx::UserAddress }) }
      def to_hash
      end
    end
  end
end

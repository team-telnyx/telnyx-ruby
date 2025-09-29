# typed: strong

module Telnyx
  module Models
    class AddressCreateResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::AddressCreateResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(Telnyx::Address)) }
      attr_reader :data

      sig { params(data: Telnyx::Address::OrHash).void }
      attr_writer :data

      sig { params(data: Telnyx::Address::OrHash).returns(T.attached_class) }
      def self.new(data: nil)
      end

      sig { override.returns({ data: Telnyx::Address }) }
      def to_hash
      end
    end
  end
end

# typed: strong

module Telnyx
  module Models
    class IPConnectionRetrieveResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::IPConnectionRetrieveResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(Telnyx::IPConnection)) }
      attr_reader :data

      sig { params(data: Telnyx::IPConnection::OrHash).void }
      attr_writer :data

      sig do
        params(data: Telnyx::IPConnection::OrHash).returns(T.attached_class)
      end
      def self.new(data: nil)
      end

      sig { override.returns({ data: Telnyx::IPConnection }) }
      def to_hash
      end
    end
  end
end

# typed: strong

module Telnyx
  module Models
    class PublicInternetGatewayDeleteResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::PublicInternetGatewayDeleteResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(Telnyx::PublicInternetGatewayRead)) }
      attr_reader :data

      sig { params(data: Telnyx::PublicInternetGatewayRead::OrHash).void }
      attr_writer :data

      sig do
        params(data: Telnyx::PublicInternetGatewayRead::OrHash).returns(
          T.attached_class
        )
      end
      def self.new(data: nil)
      end

      sig { override.returns({ data: Telnyx::PublicInternetGatewayRead }) }
      def to_hash
      end
    end
  end
end

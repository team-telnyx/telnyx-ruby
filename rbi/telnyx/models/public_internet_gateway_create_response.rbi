# typed: strong

module Telnyx
  module Models
    class PublicInternetGatewayCreateResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::PublicInternetGatewayCreateResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig do
        returns(
          T.nilable(Telnyx::Models::PublicInternetGatewayCreateResponse::Data)
        )
      end
      attr_reader :data

      sig do
        params(
          data:
            Telnyx::Models::PublicInternetGatewayCreateResponse::Data::OrHash
        ).void
      end
      attr_writer :data

      sig do
        params(
          data:
            Telnyx::Models::PublicInternetGatewayCreateResponse::Data::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data: nil)
      end

      sig do
        override.returns(
          { data: Telnyx::Models::PublicInternetGatewayCreateResponse::Data }
        )
      end
      def to_hash
      end

      class Data < Telnyx::Models::Record
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::PublicInternetGatewayCreateResponse::Data,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(T.attached_class) }
        def self.new
        end

        sig { override.returns({}) }
        def to_hash
        end
      end
    end
  end
end

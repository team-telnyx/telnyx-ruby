# typed: strong

module Telnyx
  module Models
    class PublicInternetGatewayCreateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Telnyx::PublicInternetGatewayCreateParams,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(Telnyx::PublicInternetGatewayCreateParams::Body) }
      attr_reader :body

      sig do
        params(
          body: Telnyx::PublicInternetGatewayCreateParams::Body::OrHash
        ).void
      end
      attr_writer :body

      sig do
        params(
          body: Telnyx::PublicInternetGatewayCreateParams::Body::OrHash,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(body:, request_options: {})
      end

      sig do
        override.returns(
          {
            body: Telnyx::PublicInternetGatewayCreateParams::Body,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end

      class Body < Telnyx::Models::PublicInternetGateway
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::PublicInternetGatewayCreateParams::Body,
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

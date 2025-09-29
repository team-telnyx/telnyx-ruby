# typed: strong

module Telnyx
  module Models
    class UsageReportGetOptionsParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::UsageReportGetOptionsParams, Telnyx::Internal::AnyHash)
        end

      # Options (dimensions and metrics) for a given product. If none specified, all
      # products will be returned.
      sig { returns(T.nilable(String)) }
      attr_reader :product

      sig { params(product: String).void }
      attr_writer :product

      # Authenticates the request with your Telnyx API V2 KEY
      sig { returns(T.nilable(String)) }
      attr_reader :authorization_bearer

      sig { params(authorization_bearer: String).void }
      attr_writer :authorization_bearer

      sig do
        params(
          product: String,
          authorization_bearer: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Options (dimensions and metrics) for a given product. If none specified, all
        # products will be returned.
        product: nil,
        # Authenticates the request with your Telnyx API V2 KEY
        authorization_bearer: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            product: String,
            authorization_bearer: String,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end

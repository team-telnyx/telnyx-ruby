# typed: strong

module Telnyx
  module Models
    class TermsOfServiceRetrieveInfoParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Telnyx::TermsOfServiceRetrieveInfoParams,
            Telnyx::Internal::AnyHash
          )
        end

      # Optional product filter. Omit to return info for all products.
      sig do
        returns(T.nilable(Telnyx::TermsOfService::TosProductType::OrSymbol))
      end
      attr_reader :product_type

      sig do
        params(
          product_type: Telnyx::TermsOfService::TosProductType::OrSymbol
        ).void
      end
      attr_writer :product_type

      sig do
        params(
          product_type: Telnyx::TermsOfService::TosProductType::OrSymbol,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Optional product filter. Omit to return info for all products.
        product_type: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            product_type: Telnyx::TermsOfService::TosProductType::OrSymbol,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end

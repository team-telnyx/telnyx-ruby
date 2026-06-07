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
        returns(
          T.nilable(
            Telnyx::TermsOfServiceRetrieveInfoParams::ProductType::OrSymbol
          )
        )
      end
      attr_reader :product_type

      sig do
        params(
          product_type:
            Telnyx::TermsOfServiceRetrieveInfoParams::ProductType::OrSymbol
        ).void
      end
      attr_writer :product_type

      sig do
        params(
          product_type:
            Telnyx::TermsOfServiceRetrieveInfoParams::ProductType::OrSymbol,
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
            product_type:
              Telnyx::TermsOfServiceRetrieveInfoParams::ProductType::OrSymbol,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Optional product filter. Omit to return info for all products.
      module ProductType
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Telnyx::TermsOfServiceRetrieveInfoParams::ProductType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        BRANDED_CALLING =
          T.let(
            :branded_calling,
            Telnyx::TermsOfServiceRetrieveInfoParams::ProductType::TaggedSymbol
          )
        NUMBER_REPUTATION =
          T.let(
            :number_reputation,
            Telnyx::TermsOfServiceRetrieveInfoParams::ProductType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::TermsOfServiceRetrieveInfoParams::ProductType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end

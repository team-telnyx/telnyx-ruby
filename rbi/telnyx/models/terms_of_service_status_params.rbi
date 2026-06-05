# typed: strong

module Telnyx
  module Models
    class TermsOfServiceStatusParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::TermsOfServiceStatusParams, Telnyx::Internal::AnyHash)
        end

      # Which product's ToS to check. Defaults to `branded_calling`; pass
      # `number_reputation` to check the Number Reputation Terms of Service.
      sig do
        returns(
          T.nilable(Telnyx::TermsOfServiceStatusParams::ProductType::OrSymbol)
        )
      end
      attr_reader :product_type

      sig do
        params(
          product_type:
            Telnyx::TermsOfServiceStatusParams::ProductType::OrSymbol
        ).void
      end
      attr_writer :product_type

      sig do
        params(
          product_type:
            Telnyx::TermsOfServiceStatusParams::ProductType::OrSymbol,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Which product's ToS to check. Defaults to `branded_calling`; pass
        # `number_reputation` to check the Number Reputation Terms of Service.
        product_type: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            product_type:
              Telnyx::TermsOfServiceStatusParams::ProductType::OrSymbol,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Which product's ToS to check. Defaults to `branded_calling`; pass
      # `number_reputation` to check the Number Reputation Terms of Service.
      module ProductType
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Telnyx::TermsOfServiceStatusParams::ProductType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        BRANDED_CALLING =
          T.let(
            :branded_calling,
            Telnyx::TermsOfServiceStatusParams::ProductType::TaggedSymbol
          )
        NUMBER_REPUTATION =
          T.let(
            :number_reputation,
            Telnyx::TermsOfServiceStatusParams::ProductType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::TermsOfServiceStatusParams::ProductType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end

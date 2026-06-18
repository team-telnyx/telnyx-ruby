# typed: strong

module Telnyx
  module Models
    module TermsOfService
      class AgreementListParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::TermsOfService::AgreementListParams,
              Telnyx::Internal::AnyHash
            )
          end

        # 1-based page number. Out-of-range values return an empty page with correct meta.
        sig { returns(T.nilable(Integer)) }
        attr_reader :page_number

        sig { params(page_number: Integer).void }
        attr_writer :page_number

        # Items per page. Maximum 250; values above are clamped to 250.
        sig { returns(T.nilable(Integer)) }
        attr_reader :page_size

        sig { params(page_size: Integer).void }
        attr_writer :page_size

        # Optional filter. Omit to list the user's agreements for **every** product
        # (branded_calling and number_reputation); pass a value to return only that
        # product's agreements.
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
            page_number: Integer,
            page_size: Integer,
            product_type: Telnyx::TermsOfService::TosProductType::OrSymbol,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # 1-based page number. Out-of-range values return an empty page with correct meta.
          page_number: nil,
          # Items per page. Maximum 250; values above are clamped to 250.
          page_size: nil,
          # Optional filter. Omit to list the user's agreements for **every** product
          # (branded_calling and number_reputation); pass a value to return only that
          # product's agreements.
          product_type: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              page_number: Integer,
              page_size: Integer,
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
end

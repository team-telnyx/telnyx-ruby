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
          returns(
            T.nilable(
              Telnyx::TermsOfService::AgreementListParams::ProductType::OrSymbol
            )
          )
        end
        attr_reader :product_type

        sig do
          params(
            product_type:
              Telnyx::TermsOfService::AgreementListParams::ProductType::OrSymbol
          ).void
        end
        attr_writer :product_type

        sig do
          params(
            page_number: Integer,
            page_size: Integer,
            product_type:
              Telnyx::TermsOfService::AgreementListParams::ProductType::OrSymbol,
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
              product_type:
                Telnyx::TermsOfService::AgreementListParams::ProductType::OrSymbol,
              request_options: Telnyx::RequestOptions
            }
          )
        end
        def to_hash
        end

        # Optional filter. Omit to list the user's agreements for **every** product
        # (branded_calling and number_reputation); pass a value to return only that
        # product's agreements.
        module ProductType
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::TermsOfService::AgreementListParams::ProductType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          BRANDED_CALLING =
            T.let(
              :branded_calling,
              Telnyx::TermsOfService::AgreementListParams::ProductType::TaggedSymbol
            )
          NUMBER_REPUTATION =
            T.let(
              :number_reputation,
              Telnyx::TermsOfService::AgreementListParams::ProductType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::TermsOfService::AgreementListParams::ProductType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end

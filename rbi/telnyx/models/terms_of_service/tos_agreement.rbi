# typed: strong

module Telnyx
  module Models
    module TermsOfService
      class TosAgreement < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::TermsOfService::TosAgreement,
              Telnyx::Internal::AnyHash
            )
          end

        # Telnyx product the Terms of Service apply to.
        sig do
          returns(
            T.nilable(Telnyx::TermsOfService::TosProductType::TaggedSymbol)
          )
        end
        attr_reader :product_type

        sig do
          params(
            product_type: Telnyx::TermsOfService::TosProductType::OrSymbol
          ).void
        end
        attr_writer :product_type

        # The version of the terms you accepted.
        sig { returns(T.nilable(String)) }
        attr_reader :terms_version

        sig { params(terms_version: String).void }
        attr_writer :terms_version

        # The unique identifier of this recorded agreement.
        sig { returns(T.nilable(String)) }
        attr_reader :id

        sig { params(id: String).void }
        attr_writer :id

        # When you accepted this version of the terms.
        sig { returns(T.nilable(Time)) }
        attr_reader :agreed_at

        sig { params(agreed_at: Time).void }
        attr_writer :agreed_at

        # When this agreement record was created.
        sig { returns(T.nilable(Time)) }
        attr_reader :created_at

        sig { params(created_at: Time).void }
        attr_writer :created_at

        # Convenience alias of `terms_version`. Both keys are present on every response.
        sig { returns(T.nilable(String)) }
        attr_reader :version

        sig { params(version: String).void }
        attr_writer :version

        # A recorded user agreement to a product's Terms of Service. The `user_id` is
        # intentionally NOT echoed back on this public surface - the caller already knows
        # their own identity.
        sig do
          params(
            id: String,
            agreed_at: Time,
            created_at: Time,
            product_type: Telnyx::TermsOfService::TosProductType::OrSymbol,
            terms_version: String,
            version: String
          ).returns(T.attached_class)
        end
        def self.new(
          # The unique identifier of this recorded agreement.
          id: nil,
          # When you accepted this version of the terms.
          agreed_at: nil,
          # When this agreement record was created.
          created_at: nil,
          # Telnyx product the Terms of Service apply to.
          product_type: nil,
          # The version of the terms you accepted.
          terms_version: nil,
          # Convenience alias of `terms_version`. Both keys are present on every response.
          version: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              agreed_at: Time,
              created_at: Time,
              product_type:
                Telnyx::TermsOfService::TosProductType::TaggedSymbol,
              terms_version: String,
              version: String
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end

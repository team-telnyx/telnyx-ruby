# typed: strong

module Telnyx
  module Models
    class TermsOfServiceRetrieveStatusResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::TermsOfServiceRetrieveStatusResponse,
            Telnyx::Internal::AnyHash
          )
        end

      # Whether the calling user has agreed to a product's current Terms of Service. The
      # `user_id` is intentionally omitted on this public surface.
      sig do
        returns(Telnyx::Models::TermsOfServiceRetrieveStatusResponse::Data)
      end
      attr_reader :data

      sig do
        params(
          data:
            Telnyx::Models::TermsOfServiceRetrieveStatusResponse::Data::OrHash
        ).void
      end
      attr_writer :data

      sig do
        params(
          data:
            Telnyx::Models::TermsOfServiceRetrieveStatusResponse::Data::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Whether the calling user has agreed to a product's current Terms of Service. The
        # `user_id` is intentionally omitted on this public surface.
        data:
      )
      end

      sig do
        override.returns(
          { data: Telnyx::Models::TermsOfServiceRetrieveStatusResponse::Data }
        )
      end
      def to_hash
      end

      class Data < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::TermsOfServiceRetrieveStatusResponse::Data,
              Telnyx::Internal::AnyHash
            )
          end

        # `true` when the user must agree to the latest version before using the product.
        # Equivalent to `!has_agreed`.
        sig { returns(T::Boolean) }
        attr_accessor :agreement_required

        # Latest published version of the ToS for this product.
        sig { returns(String) }
        attr_accessor :current_terms_version

        # `true` if the user has agreed to the latest version.
        sig { returns(T::Boolean) }
        attr_accessor :has_agreed

        # Telnyx product the Terms of Service apply to.
        sig { returns(Telnyx::TermsOfService::TosProductType::TaggedSymbol) }
        attr_accessor :product_type

        sig { returns(T.nilable(Time)) }
        attr_accessor :agreed_at

        # Version the user previously agreed to (may be older than
        # `current_terms_version`). `null` if the user has never agreed.
        sig { returns(T.nilable(String)) }
        attr_accessor :agreed_version

        # Whether the calling user has agreed to a product's current Terms of Service. The
        # `user_id` is intentionally omitted on this public surface.
        sig do
          params(
            agreement_required: T::Boolean,
            current_terms_version: String,
            has_agreed: T::Boolean,
            product_type: Telnyx::TermsOfService::TosProductType::OrSymbol,
            agreed_at: T.nilable(Time),
            agreed_version: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          # `true` when the user must agree to the latest version before using the product.
          # Equivalent to `!has_agreed`.
          agreement_required:,
          # Latest published version of the ToS for this product.
          current_terms_version:,
          # `true` if the user has agreed to the latest version.
          has_agreed:,
          # Telnyx product the Terms of Service apply to.
          product_type:,
          agreed_at: nil,
          # Version the user previously agreed to (may be older than
          # `current_terms_version`). `null` if the user has never agreed.
          agreed_version: nil
        )
        end

        sig do
          override.returns(
            {
              agreement_required: T::Boolean,
              current_terms_version: String,
              has_agreed: T::Boolean,
              product_type:
                Telnyx::TermsOfService::TosProductType::TaggedSymbol,
              agreed_at: T.nilable(Time),
              agreed_version: T.nilable(String)
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end

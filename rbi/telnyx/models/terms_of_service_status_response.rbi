# typed: strong

module Telnyx
  module Models
    class TermsOfServiceStatusResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::TermsOfServiceStatusResponse,
            Telnyx::Internal::AnyHash
          )
        end

      # Whether the calling user has agreed to a product's current Terms of Service. The
      # `user_id` is intentionally omitted on this public surface.
      sig { returns(Telnyx::Models::TermsOfServiceStatusResponse::Data) }
      attr_reader :data

      sig do
        params(
          data: Telnyx::Models::TermsOfServiceStatusResponse::Data::OrHash
        ).void
      end
      attr_writer :data

      sig do
        params(
          data: Telnyx::Models::TermsOfServiceStatusResponse::Data::OrHash
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
          { data: Telnyx::Models::TermsOfServiceStatusResponse::Data }
        )
      end
      def to_hash
      end

      class Data < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::TermsOfServiceStatusResponse::Data,
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
        sig do
          returns(
            Telnyx::Models::TermsOfServiceStatusResponse::Data::ProductType::TaggedSymbol
          )
        end
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
            product_type:
              Telnyx::Models::TermsOfServiceStatusResponse::Data::ProductType::OrSymbol,
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
                Telnyx::Models::TermsOfServiceStatusResponse::Data::ProductType::TaggedSymbol,
              agreed_at: T.nilable(Time),
              agreed_version: T.nilable(String)
            }
          )
        end
        def to_hash
        end

        # Telnyx product the Terms of Service apply to.
        module ProductType
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::Models::TermsOfServiceStatusResponse::Data::ProductType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          BRANDED_CALLING =
            T.let(
              :branded_calling,
              Telnyx::Models::TermsOfServiceStatusResponse::Data::ProductType::TaggedSymbol
            )
          NUMBER_REPUTATION =
            T.let(
              :number_reputation,
              Telnyx::Models::TermsOfServiceStatusResponse::Data::ProductType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Models::TermsOfServiceStatusResponse::Data::ProductType::TaggedSymbol
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

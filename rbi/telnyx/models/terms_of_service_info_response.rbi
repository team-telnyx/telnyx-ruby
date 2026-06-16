# typed: strong

module Telnyx
  module Models
    class TermsOfServiceInfoResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::TermsOfServiceInfoResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig do
        returns(
          T.nilable(
            T::Array[Telnyx::Models::TermsOfServiceInfoResponse::Agreement]
          )
        )
      end
      attr_reader :agreements

      sig do
        params(
          agreements:
            T::Array[
              Telnyx::Models::TermsOfServiceInfoResponse::Agreement::OrHash
            ]
        ).void
      end
      attr_writer :agreements

      sig do
        params(
          agreements:
            T::Array[
              Telnyx::Models::TermsOfServiceInfoResponse::Agreement::OrHash
            ]
        ).returns(T.attached_class)
      end
      def self.new(agreements: nil)
      end

      sig do
        override.returns(
          {
            agreements:
              T::Array[Telnyx::Models::TermsOfServiceInfoResponse::Agreement]
          }
        )
      end
      def to_hash
      end

      class Agreement < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::TermsOfServiceInfoResponse::Agreement,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(String)) }
        attr_reader :current_version

        sig { params(current_version: String).void }
        attr_writer :current_version

        sig { returns(T.nilable(String)) }
        attr_reader :description

        sig { params(description: String).void }
        attr_writer :description

        sig { returns(T.nilable(Date)) }
        attr_reader :effective_date

        sig { params(effective_date: Date).void }
        attr_writer :effective_date

        # Telnyx product the Terms of Service apply to.
        sig do
          returns(
            T.nilable(
              Telnyx::Models::TermsOfServiceInfoResponse::Agreement::ProductType::TaggedSymbol
            )
          )
        end
        attr_reader :product_type

        sig do
          params(
            product_type:
              Telnyx::Models::TermsOfServiceInfoResponse::Agreement::ProductType::OrSymbol
          ).void
        end
        attr_writer :product_type

        sig { returns(T.nilable(String)) }
        attr_reader :terms_url

        sig { params(terms_url: String).void }
        attr_writer :terms_url

        sig do
          params(
            current_version: String,
            description: String,
            effective_date: Date,
            product_type:
              Telnyx::Models::TermsOfServiceInfoResponse::Agreement::ProductType::OrSymbol,
            terms_url: String
          ).returns(T.attached_class)
        end
        def self.new(
          current_version: nil,
          description: nil,
          effective_date: nil,
          # Telnyx product the Terms of Service apply to.
          product_type: nil,
          terms_url: nil
        )
        end

        sig do
          override.returns(
            {
              current_version: String,
              description: String,
              effective_date: Date,
              product_type:
                Telnyx::Models::TermsOfServiceInfoResponse::Agreement::ProductType::TaggedSymbol,
              terms_url: String
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
                Telnyx::Models::TermsOfServiceInfoResponse::Agreement::ProductType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          BRANDED_CALLING =
            T.let(
              :branded_calling,
              Telnyx::Models::TermsOfServiceInfoResponse::Agreement::ProductType::TaggedSymbol
            )
          NUMBER_REPUTATION =
            T.let(
              :number_reputation,
              Telnyx::Models::TermsOfServiceInfoResponse::Agreement::ProductType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Models::TermsOfServiceInfoResponse::Agreement::ProductType::TaggedSymbol
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

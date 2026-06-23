# typed: strong

module Telnyx
  module Models
    class TermsOfServiceRetrieveInfoResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::TermsOfServiceRetrieveInfoResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig do
        returns(
          T.nilable(
            T::Array[
              Telnyx::Models::TermsOfServiceRetrieveInfoResponse::Agreement
            ]
          )
        )
      end
      attr_reader :agreements

      sig do
        params(
          agreements:
            T::Array[
              Telnyx::Models::TermsOfServiceRetrieveInfoResponse::Agreement::OrHash
            ]
        ).void
      end
      attr_writer :agreements

      sig do
        params(
          agreements:
            T::Array[
              Telnyx::Models::TermsOfServiceRetrieveInfoResponse::Agreement::OrHash
            ]
        ).returns(T.attached_class)
      end
      def self.new(agreements: nil)
      end

      sig do
        override.returns(
          {
            agreements:
              T::Array[
                Telnyx::Models::TermsOfServiceRetrieveInfoResponse::Agreement
              ]
          }
        )
      end
      def to_hash
      end

      class Agreement < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::TermsOfServiceRetrieveInfoResponse::Agreement,
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

        sig { returns(T.nilable(String)) }
        attr_reader :terms_url

        sig { params(terms_url: String).void }
        attr_writer :terms_url

        sig do
          params(
            current_version: String,
            description: String,
            effective_date: Date,
            product_type: Telnyx::TermsOfService::TosProductType::OrSymbol,
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
                Telnyx::TermsOfService::TosProductType::TaggedSymbol,
              terms_url: String
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end

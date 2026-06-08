# typed: strong

module Telnyx
  module Models
    module TermsOfService
      class BrandedCallingAgreeResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::TermsOfService::BrandedCallingAgreeResponse,
              Telnyx::Internal::AnyHash
            )
          end

        # A recorded user agreement to a product's Terms of Service. The `user_id` is
        # intentionally NOT echoed back on this public surface - the caller already knows
        # their own identity.
        sig do
          returns(
            Telnyx::Models::TermsOfService::BrandedCallingAgreeResponse::Data
          )
        end
        attr_reader :data

        sig do
          params(
            data:
              Telnyx::Models::TermsOfService::BrandedCallingAgreeResponse::Data::OrHash
          ).void
        end
        attr_writer :data

        sig do
          params(
            data:
              Telnyx::Models::TermsOfService::BrandedCallingAgreeResponse::Data::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # A recorded user agreement to a product's Terms of Service. The `user_id` is
          # intentionally NOT echoed back on this public surface - the caller already knows
          # their own identity.
          data:
        )
        end

        sig do
          override.returns(
            {
              data:
                Telnyx::Models::TermsOfService::BrandedCallingAgreeResponse::Data
            }
          )
        end
        def to_hash
        end

        class Data < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::TermsOfService::BrandedCallingAgreeResponse::Data,
                Telnyx::Internal::AnyHash
              )
            end

          # Telnyx product the Terms of Service apply to.
          sig do
            returns(
              T.nilable(
                Telnyx::Models::TermsOfService::BrandedCallingAgreeResponse::Data::ProductType::TaggedSymbol
              )
            )
          end
          attr_reader :product_type

          sig do
            params(
              product_type:
                Telnyx::Models::TermsOfService::BrandedCallingAgreeResponse::Data::ProductType::OrSymbol
            ).void
          end
          attr_writer :product_type

          sig { returns(T.nilable(String)) }
          attr_reader :terms_version

          sig { params(terms_version: String).void }
          attr_writer :terms_version

          sig { returns(T.nilable(String)) }
          attr_reader :id

          sig { params(id: String).void }
          attr_writer :id

          sig { returns(T.nilable(Time)) }
          attr_reader :agreed_at

          sig { params(agreed_at: Time).void }
          attr_writer :agreed_at

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
              product_type:
                Telnyx::Models::TermsOfService::BrandedCallingAgreeResponse::Data::ProductType::OrSymbol,
              terms_version: String,
              version: String
            ).returns(T.attached_class)
          end
          def self.new(
            id: nil,
            agreed_at: nil,
            created_at: nil,
            # Telnyx product the Terms of Service apply to.
            product_type: nil,
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
                  Telnyx::Models::TermsOfService::BrandedCallingAgreeResponse::Data::ProductType::TaggedSymbol,
                terms_version: String,
                version: String
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
                  Telnyx::Models::TermsOfService::BrandedCallingAgreeResponse::Data::ProductType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            BRANDED_CALLING =
              T.let(
                :branded_calling,
                Telnyx::Models::TermsOfService::BrandedCallingAgreeResponse::Data::ProductType::TaggedSymbol
              )
            NUMBER_REPUTATION =
              T.let(
                :number_reputation,
                Telnyx::Models::TermsOfService::BrandedCallingAgreeResponse::Data::ProductType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::Models::TermsOfService::BrandedCallingAgreeResponse::Data::ProductType::TaggedSymbol
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
end

# typed: strong

module Telnyx
  module Models
    module Dir
      class VerifyEmailConfirmResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::Dir::VerifyEmailConfirmResponse,
              Telnyx::Internal::AnyHash
            )
          end

        # Verification state for a DIR's authorizer email.
        sig { returns(Telnyx::Models::Dir::VerifyEmailConfirmResponse::Data) }
        attr_reader :data

        sig do
          params(
            data: Telnyx::Models::Dir::VerifyEmailConfirmResponse::Data::OrHash
          ).void
        end
        attr_writer :data

        sig do
          params(
            data: Telnyx::Models::Dir::VerifyEmailConfirmResponse::Data::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Verification state for a DIR's authorizer email.
          data:
        )
        end

        sig do
          override.returns(
            { data: Telnyx::Models::Dir::VerifyEmailConfirmResponse::Data }
          )
        end
        def to_hash
        end

        class Data < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::Dir::VerifyEmailConfirmResponse::Data,
                Telnyx::Internal::AnyHash
              )
            end

          # Whether the DIR's authorizer email has been confirmed.
          sig { returns(T::Boolean) }
          attr_accessor :email_verified

          # `sent` after a code is emailed; `verified` after a successful confirm;
          # `unverified` when no verification is in progress.
          sig do
            returns(
              Telnyx::Models::Dir::VerifyEmailConfirmResponse::Data::Status::TaggedSymbol
            )
          end
          attr_accessor :status

          # Always `email_verification`.
          sig do
            returns(
              Telnyx::Models::Dir::VerifyEmailConfirmResponse::Data::RecordType::TaggedSymbol
            )
          end
          attr_accessor :record_type

          # Verification state for a DIR's authorizer email.
          sig do
            params(
              email_verified: T::Boolean,
              record_type:
                Telnyx::Models::Dir::VerifyEmailConfirmResponse::Data::RecordType::OrSymbol,
              status:
                Telnyx::Models::Dir::VerifyEmailConfirmResponse::Data::Status::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(
            # Whether the DIR's authorizer email has been confirmed.
            email_verified:,
            # Always `email_verification`.
            record_type:,
            # `sent` after a code is emailed; `verified` after a successful confirm;
            # `unverified` when no verification is in progress.
            status:
          )
          end

          sig do
            override.returns(
              {
                email_verified: T::Boolean,
                record_type:
                  Telnyx::Models::Dir::VerifyEmailConfirmResponse::Data::RecordType::TaggedSymbol,
                status:
                  Telnyx::Models::Dir::VerifyEmailConfirmResponse::Data::Status::TaggedSymbol
              }
            )
          end
          def to_hash
          end

          # Always `email_verification`.
          module RecordType
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::Models::Dir::VerifyEmailConfirmResponse::Data::RecordType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            EMAIL_VERIFICATION =
              T.let(
                :email_verification,
                Telnyx::Models::Dir::VerifyEmailConfirmResponse::Data::RecordType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::Models::Dir::VerifyEmailConfirmResponse::Data::RecordType::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # `sent` after a code is emailed; `verified` after a successful confirm;
          # `unverified` when no verification is in progress.
          module Status
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::Models::Dir::VerifyEmailConfirmResponse::Data::Status
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            SENT =
              T.let(
                :sent,
                Telnyx::Models::Dir::VerifyEmailConfirmResponse::Data::Status::TaggedSymbol
              )
            VERIFIED =
              T.let(
                :verified,
                Telnyx::Models::Dir::VerifyEmailConfirmResponse::Data::Status::TaggedSymbol
              )
            UNVERIFIED =
              T.let(
                :unverified,
                Telnyx::Models::Dir::VerifyEmailConfirmResponse::Data::Status::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::Models::Dir::VerifyEmailConfirmResponse::Data::Status::TaggedSymbol
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

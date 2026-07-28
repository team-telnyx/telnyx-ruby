# typed: strong

module Telnyx
  module Models
    class EmailValidationCreateResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::EmailValidationCreateResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(Telnyx::Models::EmailValidationCreateResponse::Data) }
      attr_reader :data

      sig do
        params(
          data: Telnyx::Models::EmailValidationCreateResponse::Data::OrHash
        ).void
      end
      attr_writer :data

      sig do
        params(
          data: Telnyx::Models::EmailValidationCreateResponse::Data::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data:)
      end

      sig do
        override.returns(
          { data: Telnyx::Models::EmailValidationCreateResponse::Data }
        )
      end
      def to_hash
      end

      class Data < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::EmailValidationCreateResponse::Data,
              Telnyx::Internal::AnyHash
            )
          end

        sig do
          returns(Telnyx::Models::EmailValidationCreateResponse::Data::Checks)
        end
        attr_reader :checks

        sig do
          params(
            checks:
              Telnyx::Models::EmailValidationCreateResponse::Data::Checks::OrHash
          ).void
        end
        attr_writer :checks

        sig { returns(String) }
        attr_accessor :email

        sig do
          returns(
            Telnyx::Models::EmailValidationCreateResponse::Data::RecordType::TaggedSymbol
          )
        end
        attr_accessor :record_type

        sig { returns(Float) }
        attr_accessor :risk_score

        sig { returns(T::Boolean) }
        attr_accessor :valid

        # Suggested correction for typo. Omitted when nil.
        sig { returns(T.nilable(String)) }
        attr_reader :did_you_mean

        sig { params(did_you_mean: String).void }
        attr_writer :did_you_mean

        sig do
          params(
            checks:
              Telnyx::Models::EmailValidationCreateResponse::Data::Checks::OrHash,
            email: String,
            record_type:
              Telnyx::Models::EmailValidationCreateResponse::Data::RecordType::OrSymbol,
            risk_score: Float,
            valid: T::Boolean,
            did_you_mean: String
          ).returns(T.attached_class)
        end
        def self.new(
          checks:,
          email:,
          record_type:,
          risk_score:,
          valid:,
          # Suggested correction for typo. Omitted when nil.
          did_you_mean: nil
        )
        end

        sig do
          override.returns(
            {
              checks:
                Telnyx::Models::EmailValidationCreateResponse::Data::Checks,
              email: String,
              record_type:
                Telnyx::Models::EmailValidationCreateResponse::Data::RecordType::TaggedSymbol,
              risk_score: Float,
              valid: T::Boolean,
              did_you_mean: String
            }
          )
        end
        def to_hash
        end

        class Checks < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::EmailValidationCreateResponse::Data::Checks,
                Telnyx::Internal::AnyHash
              )
            end

          sig { returns(Telnyx::EmailValidationCheck) }
          attr_reader :disposable

          sig { params(disposable: Telnyx::EmailValidationCheck::OrHash).void }
          attr_writer :disposable

          sig { returns(Telnyx::EmailValidationCheck) }
          attr_reader :mx

          sig { params(mx: Telnyx::EmailValidationCheck::OrHash).void }
          attr_writer :mx

          sig { returns(Telnyx::EmailValidationCheck) }
          attr_reader :role_based

          sig { params(role_based: Telnyx::EmailValidationCheck::OrHash).void }
          attr_writer :role_based

          sig { returns(Telnyx::EmailValidationCheck) }
          attr_reader :syntax

          sig { params(syntax: Telnyx::EmailValidationCheck::OrHash).void }
          attr_writer :syntax

          sig do
            returns(
              Telnyx::Models::EmailValidationCreateResponse::Data::Checks::Typo
            )
          end
          attr_reader :typo

          sig do
            params(
              typo:
                Telnyx::Models::EmailValidationCreateResponse::Data::Checks::Typo::OrHash
            ).void
          end
          attr_writer :typo

          sig do
            params(
              disposable: Telnyx::EmailValidationCheck::OrHash,
              mx: Telnyx::EmailValidationCheck::OrHash,
              role_based: Telnyx::EmailValidationCheck::OrHash,
              syntax: Telnyx::EmailValidationCheck::OrHash,
              typo:
                Telnyx::Models::EmailValidationCreateResponse::Data::Checks::Typo::OrHash
            ).returns(T.attached_class)
          end
          def self.new(disposable:, mx:, role_based:, syntax:, typo:)
          end

          sig do
            override.returns(
              {
                disposable: Telnyx::EmailValidationCheck,
                mx: Telnyx::EmailValidationCheck,
                role_based: Telnyx::EmailValidationCheck,
                syntax: Telnyx::EmailValidationCheck,
                typo:
                  Telnyx::Models::EmailValidationCreateResponse::Data::Checks::Typo
              }
            )
          end
          def to_hash
          end

          class Typo < Telnyx::Models::EmailValidationCheck
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Models::EmailValidationCreateResponse::Data::Checks::Typo,
                  Telnyx::Internal::AnyHash
                )
              end

            # Suggested correction for common typos. Omitted when nil.
            sig { returns(T.nilable(String)) }
            attr_reader :suggestion

            sig { params(suggestion: String).void }
            attr_writer :suggestion

            sig { params(suggestion: String).returns(T.attached_class) }
            def self.new(
              # Suggested correction for common typos. Omitted when nil.
              suggestion: nil
            )
            end

            sig { override.returns({ suggestion: String }) }
            def to_hash
            end
          end
        end

        module RecordType
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::Models::EmailValidationCreateResponse::Data::RecordType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          EMAIL_VALIDATION =
            T.let(
              :email_validation,
              Telnyx::Models::EmailValidationCreateResponse::Data::RecordType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Models::EmailValidationCreateResponse::Data::RecordType::TaggedSymbol
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

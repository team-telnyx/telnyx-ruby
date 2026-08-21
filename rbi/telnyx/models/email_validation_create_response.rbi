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

        sig { returns(Telnyx::EmailValidationChecks) }
        attr_reader :checks

        sig { params(checks: Telnyx::EmailValidationChecks::OrHash).void }
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
            checks: Telnyx::EmailValidationChecks::OrHash,
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
              checks: Telnyx::EmailValidationChecks,
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

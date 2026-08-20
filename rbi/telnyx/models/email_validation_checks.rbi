# typed: strong

module Telnyx
  module Models
    class EmailValidationChecks < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::EmailValidationChecks, Telnyx::Internal::AnyHash)
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

      sig { returns(Telnyx::EmailValidationChecks::Typo) }
      attr_reader :typo

      sig { params(typo: Telnyx::EmailValidationChecks::Typo::OrHash).void }
      attr_writer :typo

      sig do
        params(
          disposable: Telnyx::EmailValidationCheck::OrHash,
          mx: Telnyx::EmailValidationCheck::OrHash,
          role_based: Telnyx::EmailValidationCheck::OrHash,
          syntax: Telnyx::EmailValidationCheck::OrHash,
          typo: Telnyx::EmailValidationChecks::Typo::OrHash
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
            typo: Telnyx::EmailValidationChecks::Typo
          }
        )
      end
      def to_hash
      end

      class Typo < Telnyx::Models::EmailValidationCheck
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::EmailValidationChecks::Typo,
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
  end
end

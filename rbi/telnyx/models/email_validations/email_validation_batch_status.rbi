# typed: strong

module Telnyx
  module Models
    EmailValidationBatchStatus = EmailValidations::EmailValidationBatchStatus

    module EmailValidations
      module EmailValidationBatchStatus
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Telnyx::EmailValidations::EmailValidationBatchStatus)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PENDING =
          T.let(
            :pending,
            Telnyx::EmailValidations::EmailValidationBatchStatus::TaggedSymbol
          )
        PROCESSING =
          T.let(
            :processing,
            Telnyx::EmailValidations::EmailValidationBatchStatus::TaggedSymbol
          )
        COMPLETED =
          T.let(
            :completed,
            Telnyx::EmailValidations::EmailValidationBatchStatus::TaggedSymbol
          )
        FAILED =
          T.let(
            :failed,
            Telnyx::EmailValidations::EmailValidationBatchStatus::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::EmailValidations::EmailValidationBatchStatus::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end

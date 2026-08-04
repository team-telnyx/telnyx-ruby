# frozen_string_literal: true

module Telnyx
  module Models
    module EmailValidations
      module EmailValidationBatchStatus
        extend Telnyx::Internal::Type::Enum

        PENDING = :pending
        PROCESSING = :processing
        COMPLETED = :completed
        FAILED = :failed

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end

    EmailValidationBatchStatus = EmailValidations::EmailValidationBatchStatus
  end
end

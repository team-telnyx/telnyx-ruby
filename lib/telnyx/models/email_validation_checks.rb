# frozen_string_literal: true

module Telnyx
  module Models
    class EmailValidationChecks < Telnyx::Internal::Type::BaseModel
      # @!attribute disposable
      #
      #   @return [Telnyx::Models::EmailValidationCheck]
      required :disposable, -> { Telnyx::EmailValidationCheck }

      # @!attribute mx
      #
      #   @return [Telnyx::Models::EmailValidationCheck]
      required :mx, -> { Telnyx::EmailValidationCheck }

      # @!attribute role_based
      #
      #   @return [Telnyx::Models::EmailValidationCheck]
      required :role_based, -> { Telnyx::EmailValidationCheck }

      # @!attribute syntax
      #
      #   @return [Telnyx::Models::EmailValidationCheck]
      required :syntax, -> { Telnyx::EmailValidationCheck }

      # @!attribute typo
      #
      #   @return [Telnyx::Models::EmailValidationChecks::Typo]
      required :typo, -> { Telnyx::EmailValidationChecks::Typo }

      # @!method initialize(disposable:, mx:, role_based:, syntax:, typo:)
      #   @param disposable [Telnyx::Models::EmailValidationCheck]
      #   @param mx [Telnyx::Models::EmailValidationCheck]
      #   @param role_based [Telnyx::Models::EmailValidationCheck]
      #   @param syntax [Telnyx::Models::EmailValidationCheck]
      #   @param typo [Telnyx::Models::EmailValidationChecks::Typo]

      # @see Telnyx::Models::EmailValidationChecks#typo
      class Typo < Telnyx::Models::EmailValidationCheck
        # @!attribute suggestion
        #   Suggested correction for common typos. Omitted when nil.
        #
        #   @return [String, nil]
        optional :suggestion, String

        # @!method initialize(suggestion: nil)
        #   @param suggestion [String] Suggested correction for common typos. Omitted when nil.
      end
    end
  end
end

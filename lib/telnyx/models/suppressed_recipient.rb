# frozen_string_literal: true

module Telnyx
  module Models
    class SuppressedRecipient < Telnyx::Internal::Type::BaseModel
      # @!attribute override_allowed
      #   Whether an authorized send may override this suppression.
      #
      #   @return [Boolean]
      required :override_allowed, Telnyx::Internal::Type::Boolean

      # @!attribute reason
      #   Suppression reason returned by the recipient suppression service.
      #
      #   @return [String]
      required :reason, String

      # @!attribute scope
      #   Scope at which the suppression applies.
      #
      #   @return [String]
      required :scope, String

      # @!attribute to
      #   Suppressed recipient email address.
      #
      #   @return [String]
      required :to, String

      # @!method initialize(override_allowed:, reason:, scope:, to:)
      #   @param override_allowed [Boolean] Whether an authorized send may override this suppression.
      #
      #   @param reason [String] Suppression reason returned by the recipient suppression service.
      #
      #   @param scope [String] Scope at which the suppression applies.
      #
      #   @param to [String] Suppressed recipient email address.
    end
  end
end

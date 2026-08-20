# typed: strong

module Telnyx
  module Models
    class SuppressedRecipient < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::SuppressedRecipient, Telnyx::Internal::AnyHash)
        end

      # Whether an authorized send may override this suppression.
      sig { returns(T::Boolean) }
      attr_accessor :override_allowed

      # Suppression reason returned by the recipient suppression service.
      sig { returns(String) }
      attr_accessor :reason

      # Scope at which the suppression applies.
      sig { returns(String) }
      attr_accessor :scope

      # Suppressed recipient email address.
      sig { returns(String) }
      attr_accessor :to

      sig do
        params(
          override_allowed: T::Boolean,
          reason: String,
          scope: String,
          to: String
        ).returns(T.attached_class)
      end
      def self.new(
        # Whether an authorized send may override this suppression.
        override_allowed:,
        # Suppression reason returned by the recipient suppression service.
        reason:,
        # Scope at which the suppression applies.
        scope:,
        # Suppressed recipient email address.
        to:
      )
      end

      sig do
        override.returns(
          {
            override_allowed: T::Boolean,
            reason: String,
            scope: String,
            to: String
          }
        )
      end
      def to_hash
      end
    end
  end
end

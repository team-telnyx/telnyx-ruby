# frozen_string_literal: true

module Telnyx
  module Models
    class EmailDomainVerification < Telnyx::Internal::Type::BaseModel
      # @!attribute dkim
      #
      #   @return [Symbol, Telnyx::Models::EmailDomainVerification::Dkim]
      required :dkim, enum: -> { Telnyx::EmailDomainVerification::Dkim }

      # @!attribute dmarc
      #
      #   @return [Symbol, Telnyx::Models::EmailDomainVerification::Dmarc]
      required :dmarc, enum: -> { Telnyx::EmailDomainVerification::Dmarc }

      # @!attribute mx
      #
      #   @return [Symbol, Telnyx::Models::EmailDomainVerification::Mx]
      required :mx, enum: -> { Telnyx::EmailDomainVerification::Mx }

      # @!attribute ownership
      #
      #   @return [Symbol, Telnyx::Models::EmailDomainVerification::Ownership]
      required :ownership, enum: -> { Telnyx::EmailDomainVerification::Ownership }

      # @!attribute spf
      #
      #   @return [Symbol, Telnyx::Models::EmailDomainVerification::Spf]
      required :spf, enum: -> { Telnyx::EmailDomainVerification::Spf }

      # @!method initialize(dkim:, dmarc:, mx:, ownership:, spf:)
      #   @param dkim [Symbol, Telnyx::Models::EmailDomainVerification::Dkim]
      #   @param dmarc [Symbol, Telnyx::Models::EmailDomainVerification::Dmarc]
      #   @param mx [Symbol, Telnyx::Models::EmailDomainVerification::Mx]
      #   @param ownership [Symbol, Telnyx::Models::EmailDomainVerification::Ownership]
      #   @param spf [Symbol, Telnyx::Models::EmailDomainVerification::Spf]

      # @see Telnyx::Models::EmailDomainVerification#dkim
      module Dkim
        extend Telnyx::Internal::Type::Enum

        PENDING = :pending
        VERIFIED = :verified
        FAILED = :failed

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see Telnyx::Models::EmailDomainVerification#dmarc
      module Dmarc
        extend Telnyx::Internal::Type::Enum

        MISSING_OPTIONAL = :missing_optional
        VERIFIED = :verified
        FAILED = :failed

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see Telnyx::Models::EmailDomainVerification#mx
      module Mx
        extend Telnyx::Internal::Type::Enum

        NOT_REQUIRED = :not_required
        PENDING = :pending
        VERIFIED = :verified
        FAILED = :failed

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see Telnyx::Models::EmailDomainVerification#ownership
      module Ownership
        extend Telnyx::Internal::Type::Enum

        PENDING = :pending
        VERIFIED = :verified
        NOT_REQUIRED = :not_required

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see Telnyx::Models::EmailDomainVerification#spf
      module Spf
        extend Telnyx::Internal::Type::Enum

        MISSING_OPTIONAL = :missing_optional
        VERIFIED = :verified
        FAILED = :failed
        NOT_REQUIRED = :not_required

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end

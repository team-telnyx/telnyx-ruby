# typed: strong

module Telnyx
  module Models
    module EmailDomainStatus
      extend Telnyx::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, Telnyx::EmailDomainStatus) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      PENDING = T.let(:pending, Telnyx::EmailDomainStatus::TaggedSymbol)
      VERIFYING = T.let(:verifying, Telnyx::EmailDomainStatus::TaggedSymbol)
      VERIFIED = T.let(:verified, Telnyx::EmailDomainStatus::TaggedSymbol)
      FAILED = T.let(:failed, Telnyx::EmailDomainStatus::TaggedSymbol)
      DEGRADED = T.let(:degraded, Telnyx::EmailDomainStatus::TaggedSymbol)
      SUSPENDED = T.let(:suspended, Telnyx::EmailDomainStatus::TaggedSymbol)

      sig do
        override.returns(T::Array[Telnyx::EmailDomainStatus::TaggedSymbol])
      end
      def self.values
      end
    end
  end
end

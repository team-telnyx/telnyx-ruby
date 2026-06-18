# typed: strong

module Telnyx
  module Models
    # DIR lifecycle status.
    #
    # - `draft` - newly created; editable; not yet submitted.
    # - `submitted` / `in_review` - Telnyx is reviewing.
    # - `verified` - approved; phone numbers may be attached.
    # - `rejected` - Telnyx rejected this submission; `rejection_reasons` is
    #   populated; customer can edit and resubmit.
    # - `unsuccessful` - system-side error during processing; customer can edit and
    #   resubmit.
    # - `suspended` - temporarily disabled (e.g. by an active infringement claim).
    # - `expired` - verification expired; customer must resubmit.
    # - `infringement_claimed` - a trademark/impersonation claim is open against this
    #   DIR.
    # - `permanently_rejected` - terminal; cannot be resubmitted.
    module DirStatus
      extend Telnyx::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, Telnyx::DirStatus) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      DRAFT = T.let(:draft, Telnyx::DirStatus::TaggedSymbol)
      SUBMITTED = T.let(:submitted, Telnyx::DirStatus::TaggedSymbol)
      IN_REVIEW = T.let(:in_review, Telnyx::DirStatus::TaggedSymbol)
      VERIFIED = T.let(:verified, Telnyx::DirStatus::TaggedSymbol)
      REJECTED = T.let(:rejected, Telnyx::DirStatus::TaggedSymbol)
      UNSUCCESSFUL = T.let(:unsuccessful, Telnyx::DirStatus::TaggedSymbol)
      SUSPENDED = T.let(:suspended, Telnyx::DirStatus::TaggedSymbol)
      EXPIRED = T.let(:expired, Telnyx::DirStatus::TaggedSymbol)
      INFRINGEMENT_CLAIMED =
        T.let(:infringement_claimed, Telnyx::DirStatus::TaggedSymbol)
      PERMANENTLY_REJECTED =
        T.let(:permanently_rejected, Telnyx::DirStatus::TaggedSymbol)

      sig { override.returns(T::Array[Telnyx::DirStatus::TaggedSymbol]) }
      def self.values
      end
    end
  end
end

# frozen_string_literal: true

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
    # - `delete_requested` - you have requested deletion; the DIR still exists and
    #   Telnyx is completing the removal (de-registration and cleanup). A verified DIR
    #   keeps serving its branded identity, and keeps billing, until the removal
    #   finishes.
    module DirStatus
      extend Telnyx::Internal::Type::Enum

      DRAFT = :draft
      SUBMITTED = :submitted
      IN_REVIEW = :in_review
      VERIFIED = :verified
      REJECTED = :rejected
      UNSUCCESSFUL = :unsuccessful
      SUSPENDED = :suspended
      EXPIRED = :expired
      INFRINGEMENT_CLAIMED = :infringement_claimed
      PERMANENTLY_REJECTED = :permanently_rejected
      DELETE_REQUESTED = :delete_requested

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end

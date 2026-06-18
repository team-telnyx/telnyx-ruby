# frozen_string_literal: true

module Telnyx
  module Models
    module Dir
      # Phone-number lifecycle status.
      #
      # - `submitted` / `in_review` - Telnyx is reviewing the batch this number belongs
      #   to.
      # - `verified` - approved; the DIR's display identity will be shown on outbound
      #   calls from this number.
      # - `unsuccessful` - Telnyx rejected this submission; the customer may re-add to
      #   retry.
      # - `suspended` - temporarily disabled (e.g. by an active infringement claim on
      #   the DIR).
      # - `expired` - verification expired; re-add to renew.
      # - `permanently_rejected` - terminal; cannot be re-added on this or any other DIR
      #   you own.
      module DirPhoneNumberStatus
        extend Telnyx::Internal::Type::Enum

        SUBMITTED = :submitted
        IN_REVIEW = :in_review
        VERIFIED = :verified
        UNSUCCESSFUL = :unsuccessful
        SUSPENDED = :suspended
        EXPIRED = :expired
        PERMANENTLY_REJECTED = :permanently_rejected

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end

    DirPhoneNumberStatus = Dir::DirPhoneNumberStatus
  end
end

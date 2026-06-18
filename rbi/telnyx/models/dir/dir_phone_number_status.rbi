# typed: strong

module Telnyx
  module Models
    DirPhoneNumberStatus = Dir::DirPhoneNumberStatus

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

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::Dir::DirPhoneNumberStatus) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        SUBMITTED =
          T.let(:submitted, Telnyx::Dir::DirPhoneNumberStatus::TaggedSymbol)
        IN_REVIEW =
          T.let(:in_review, Telnyx::Dir::DirPhoneNumberStatus::TaggedSymbol)
        VERIFIED =
          T.let(:verified, Telnyx::Dir::DirPhoneNumberStatus::TaggedSymbol)
        UNSUCCESSFUL =
          T.let(:unsuccessful, Telnyx::Dir::DirPhoneNumberStatus::TaggedSymbol)
        SUSPENDED =
          T.let(:suspended, Telnyx::Dir::DirPhoneNumberStatus::TaggedSymbol)
        EXPIRED =
          T.let(:expired, Telnyx::Dir::DirPhoneNumberStatus::TaggedSymbol)
        PERMANENTLY_REJECTED =
          T.let(
            :permanently_rejected,
            Telnyx::Dir::DirPhoneNumberStatus::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Telnyx::Dir::DirPhoneNumberStatus::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end

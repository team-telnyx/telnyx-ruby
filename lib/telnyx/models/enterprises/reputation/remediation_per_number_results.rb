# frozen_string_literal: true

module Telnyx
  module Models
    module Enterprises
      module Reputation
        class RemediationPerNumberResults < Telnyx::Internal::Type::BaseModel
          # @!attribute ineligible
          #   Numbers the reputation partner did not re-review because it had already reviewed
          #   them within the previous 60 days (already reviewed). The cooldown is measured
          #   from the partner's most recent review, not the API submission date. This array
          #   identifies the numbers but does not include their last-review or re-eligibility
          #   dates.
          #
          #   @return [Array<String>, nil]
          optional :ineligible, Telnyx::Internal::Type::ArrayOf[String]

          # @!attribute not_flagged
          #   The reputation partner reported no prior spam label for the number (no prior
          #   spam label).
          #
          #   @return [Array<String>, nil]
          optional :not_flagged, Telnyx::Internal::Type::ArrayOf[String]

          # @!attribute refused
          #   The reputation partner reviewed the number and declined the redress request
          #   (redress declined); the number remains flagged.
          #
          #   @return [Array<String>, nil]
          optional :refused, Telnyx::Internal::Type::ArrayOf[String]

          # @!attribute remediated
          #   The reputation partner approved redress (redress approved) or reported that the
          #   number had already been redressed recently (already recently redressed). This
          #   does not guarantee removal from every spam list.
          #
          #   @return [Array<String>, nil]
          optional :remediated, Telnyx::Internal::Type::ArrayOf[String]

          # @!attribute requires_review
          #   The number needs further review, or the partner response did not match a
          #   recognized outcome.
          #
          #   @return [Array<String>, nil]
          optional :requires_review, Telnyx::Internal::Type::ArrayOf[String]

          # @!method initialize(ineligible: nil, not_flagged: nil, refused: nil, remediated: nil, requires_review: nil)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::Enterprises::Reputation::RemediationPerNumberResults} for more
          #   details.
          #
          #   Per-category buckets of phone numbers, populated once results are available.
          #   Empty lists are kept (not omitted) so consumers can iterate without
          #   null-checking each key.
          #
          #   @param ineligible [Array<String>] Numbers the reputation partner did not re-review because it had already reviewed
          #
          #   @param not_flagged [Array<String>] The reputation partner reported no prior spam label for the number (no prior spa
          #
          #   @param refused [Array<String>] The reputation partner reviewed the number and declined the redress request (red
          #
          #   @param remediated [Array<String>] The reputation partner approved redress (redress approved) or reported that the
          #
          #   @param requires_review [Array<String>] The number needs further review, or the partner response did not match a recogni
        end
      end
    end
  end
end

# frozen_string_literal: true

module Telnyx
  module Models
    module Enterprises
      module Reputation
        class RemediationPerNumberResults < Telnyx::Internal::Type::BaseModel
          # @!attribute ineligible
          #
          #   @return [Array<String>, nil]
          optional :ineligible, Telnyx::Internal::Type::ArrayOf[String]

          # @!attribute not_flagged
          #
          #   @return [Array<String>, nil]
          optional :not_flagged, Telnyx::Internal::Type::ArrayOf[String]

          # @!attribute refused
          #
          #   @return [Array<String>, nil]
          optional :refused, Telnyx::Internal::Type::ArrayOf[String]

          # @!attribute remediated
          #
          #   @return [Array<String>, nil]
          optional :remediated, Telnyx::Internal::Type::ArrayOf[String]

          # @!attribute requires_review
          #
          #   @return [Array<String>, nil]
          optional :requires_review, Telnyx::Internal::Type::ArrayOf[String]

          # @!method initialize(ineligible: nil, not_flagged: nil, refused: nil, remediated: nil, requires_review: nil)
          #   Per-category buckets of phone numbers, populated once results are available.
          #   Empty lists are kept (not omitted) so consumers can iterate without
          #   null-checking each key.
          #
          #   @param ineligible [Array<String>]
          #   @param not_flagged [Array<String>]
          #   @param refused [Array<String>]
          #   @param remediated [Array<String>]
          #   @param requires_review [Array<String>]
        end
      end
    end
  end
end

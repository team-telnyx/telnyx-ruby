# typed: strong

module Telnyx
  module Models
    module Enterprises
      module Reputation
        class RemediationPerNumberResults < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Enterprises::Reputation::RemediationPerNumberResults,
                Telnyx::Internal::AnyHash
              )
            end

          # Numbers the reputation partner did not re-review because it had already reviewed
          # them within the previous 60 days (already reviewed). The cooldown is measured
          # from the partner's most recent review, not the API submission date. This array
          # identifies the numbers but does not include their last-review or re-eligibility
          # dates.
          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :ineligible

          sig { params(ineligible: T::Array[String]).void }
          attr_writer :ineligible

          # The reputation partner reported no prior spam label for the number (no prior
          # spam label).
          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :not_flagged

          sig { params(not_flagged: T::Array[String]).void }
          attr_writer :not_flagged

          # The reputation partner reviewed the number and declined the redress request
          # (redress declined); the number remains flagged.
          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :refused

          sig { params(refused: T::Array[String]).void }
          attr_writer :refused

          # The reputation partner approved redress (redress approved) or reported that the
          # number had already been redressed recently (already recently redressed). This
          # does not guarantee removal from every spam list.
          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :remediated

          sig { params(remediated: T::Array[String]).void }
          attr_writer :remediated

          # The number needs further review, or the partner response did not match a
          # recognized outcome.
          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :requires_review

          sig { params(requires_review: T::Array[String]).void }
          attr_writer :requires_review

          # Per-category buckets of phone numbers, populated once results are available.
          # Empty lists are kept (not omitted) so consumers can iterate without
          # null-checking each key.
          sig do
            params(
              ineligible: T::Array[String],
              not_flagged: T::Array[String],
              refused: T::Array[String],
              remediated: T::Array[String],
              requires_review: T::Array[String]
            ).returns(T.attached_class)
          end
          def self.new(
            # Numbers the reputation partner did not re-review because it had already reviewed
            # them within the previous 60 days (already reviewed). The cooldown is measured
            # from the partner's most recent review, not the API submission date. This array
            # identifies the numbers but does not include their last-review or re-eligibility
            # dates.
            ineligible: nil,
            # The reputation partner reported no prior spam label for the number (no prior
            # spam label).
            not_flagged: nil,
            # The reputation partner reviewed the number and declined the redress request
            # (redress declined); the number remains flagged.
            refused: nil,
            # The reputation partner approved redress (redress approved) or reported that the
            # number had already been redressed recently (already recently redressed). This
            # does not guarantee removal from every spam list.
            remediated: nil,
            # The number needs further review, or the partner response did not match a
            # recognized outcome.
            requires_review: nil
          )
          end

          sig do
            override.returns(
              {
                ineligible: T::Array[String],
                not_flagged: T::Array[String],
                refused: T::Array[String],
                remediated: T::Array[String],
                requires_review: T::Array[String]
              }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end

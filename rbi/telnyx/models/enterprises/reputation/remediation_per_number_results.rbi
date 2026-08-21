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

          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :ineligible

          sig { params(ineligible: T::Array[String]).void }
          attr_writer :ineligible

          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :not_flagged

          sig { params(not_flagged: T::Array[String]).void }
          attr_writer :not_flagged

          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :refused

          sig { params(refused: T::Array[String]).void }
          attr_writer :refused

          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :remediated

          sig { params(remediated: T::Array[String]).void }
          attr_writer :remediated

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
            ineligible: nil,
            not_flagged: nil,
            refused: nil,
            remediated: nil,
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

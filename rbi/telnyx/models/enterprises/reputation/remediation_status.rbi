# typed: strong

module Telnyx
  module Models
    module Enterprises
      module Reputation
        # Customer-facing status of a remediation request.
        module RemediationStatus
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::Enterprises::Reputation::RemediationStatus)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PENDING =
            T.let(
              :pending,
              Telnyx::Enterprises::Reputation::RemediationStatus::TaggedSymbol
            )
          IN_PROGRESS =
            T.let(
              :in_progress,
              Telnyx::Enterprises::Reputation::RemediationStatus::TaggedSymbol
            )
          COMPLETED =
            T.let(
              :completed,
              Telnyx::Enterprises::Reputation::RemediationStatus::TaggedSymbol
            )
          FAILED =
            T.let(
              :failed,
              Telnyx::Enterprises::Reputation::RemediationStatus::TaggedSymbol
            )
          CANCELLED =
            T.let(
              :cancelled,
              Telnyx::Enterprises::Reputation::RemediationStatus::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Enterprises::Reputation::RemediationStatus::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end

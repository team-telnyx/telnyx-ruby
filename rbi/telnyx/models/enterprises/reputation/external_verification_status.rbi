# typed: strong

module Telnyx
  module Models
    module Enterprises
      module Reputation
        # Review state of the ownership proof that allows adding phone numbers hosted with
        # another provider.
        module ExternalVerificationStatus
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::Enterprises::Reputation::ExternalVerificationStatus
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PENDING =
            T.let(
              :pending,
              Telnyx::Enterprises::Reputation::ExternalVerificationStatus::TaggedSymbol
            )
          APPROVED =
            T.let(
              :approved,
              Telnyx::Enterprises::Reputation::ExternalVerificationStatus::TaggedSymbol
            )
          REJECTED =
            T.let(
              :rejected,
              Telnyx::Enterprises::Reputation::ExternalVerificationStatus::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Enterprises::Reputation::ExternalVerificationStatus::TaggedSymbol
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

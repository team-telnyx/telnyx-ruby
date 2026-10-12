# typed: strong

module Telnyx
  module Models
    module Enterprises
      ReputationNumberSource = Reputation::ReputationNumberSource

      module Reputation
        # Where the phone number is hosted. `telnyx`: in your Telnyx inventory.
        # `external`: a number you own that is hosted with another provider.
        module ReputationNumberSource
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::Enterprises::Reputation::ReputationNumberSource
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          TELNYX =
            T.let(
              :telnyx,
              Telnyx::Enterprises::Reputation::ReputationNumberSource::TaggedSymbol
            )
          EXTERNAL =
            T.let(
              :external,
              Telnyx::Enterprises::Reputation::ReputationNumberSource::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Enterprises::Reputation::ReputationNumberSource::TaggedSymbol
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

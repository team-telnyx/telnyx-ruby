# typed: strong

module Telnyx
  module Models
    module Enterprises
      # How often Telnyx refreshes the stored reputation data for this enterprise's
      # registered numbers.
      module ReputationCheckFrequency
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Telnyx::Enterprises::ReputationCheckFrequency)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        BUSINESS_DAILY =
          T.let(
            :business_daily,
            Telnyx::Enterprises::ReputationCheckFrequency::TaggedSymbol
          )
        DAILY =
          T.let(
            :daily,
            Telnyx::Enterprises::ReputationCheckFrequency::TaggedSymbol
          )
        WEEKLY =
          T.let(
            :weekly,
            Telnyx::Enterprises::ReputationCheckFrequency::TaggedSymbol
          )
        BIWEEKLY =
          T.let(
            :biweekly,
            Telnyx::Enterprises::ReputationCheckFrequency::TaggedSymbol
          )
        MONTHLY =
          T.let(
            :monthly,
            Telnyx::Enterprises::ReputationCheckFrequency::TaggedSymbol
          )
        NEVER =
          T.let(
            :never,
            Telnyx::Enterprises::ReputationCheckFrequency::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::Enterprises::ReputationCheckFrequency::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end

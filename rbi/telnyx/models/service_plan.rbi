# typed: strong

module Telnyx
  module Models
    # Indicates the coverage of the termination regions.
    module ServicePlan
      extend Telnyx::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, Telnyx::ServicePlan) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      GLOBAL = T.let(:global, Telnyx::ServicePlan::TaggedSymbol)

      sig { override.returns(T::Array[Telnyx::ServicePlan::TaggedSymbol]) }
      def self.values
      end
    end
  end
end

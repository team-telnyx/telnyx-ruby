# typed: strong

module Telnyx
  module Models
    # `private`: only your organization can use the engine. `public`: any organization
    # can, once it is `active`.
    module CommunityTtsEngineVisibility
      extend Telnyx::Internal::Type::Enum

      TaggedSymbol =
        T.type_alias { T.all(Symbol, Telnyx::CommunityTtsEngineVisibility) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      PRIVATE =
        T.let(:private, Telnyx::CommunityTtsEngineVisibility::TaggedSymbol)
      PUBLIC =
        T.let(:public, Telnyx::CommunityTtsEngineVisibility::TaggedSymbol)

      sig do
        override.returns(
          T::Array[Telnyx::CommunityTtsEngineVisibility::TaggedSymbol]
        )
      end
      def self.values
      end
    end
  end
end

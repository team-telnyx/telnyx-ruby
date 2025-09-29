# typed: strong

module Telnyx
  module Models
    # Specifies the type of traffic allowed in this profile.
    module TrafficType
      extend Telnyx::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, Telnyx::TrafficType) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      CONVERSATIONAL = T.let(:conversational, Telnyx::TrafficType::TaggedSymbol)

      sig { override.returns(T::Array[Telnyx::TrafficType::TaggedSymbol]) }
      def self.values
      end
    end
  end
end

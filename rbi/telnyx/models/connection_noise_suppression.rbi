# typed: strong

module Telnyx
  module Models
    # Controls when noise suppression is applied to calls. When set to 'inbound',
    # noise suppression is applied to incoming audio. When set to 'outbound', it's
    # applied to outgoing audio. When set to 'both', it's applied in both directions.
    # When set to 'disabled', noise suppression is turned off.
    module ConnectionNoiseSuppression
      extend Telnyx::Internal::Type::Enum

      TaggedSymbol =
        T.type_alias { T.all(Symbol, Telnyx::ConnectionNoiseSuppression) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      INBOUND =
        T.let(:inbound, Telnyx::ConnectionNoiseSuppression::TaggedSymbol)
      OUTBOUND =
        T.let(:outbound, Telnyx::ConnectionNoiseSuppression::TaggedSymbol)
      BOTH = T.let(:both, Telnyx::ConnectionNoiseSuppression::TaggedSymbol)
      DISABLED =
        T.let(:disabled, Telnyx::ConnectionNoiseSuppression::TaggedSymbol)

      sig do
        override.returns(
          T::Array[Telnyx::ConnectionNoiseSuppression::TaggedSymbol]
        )
      end
      def self.values
      end
    end
  end
end

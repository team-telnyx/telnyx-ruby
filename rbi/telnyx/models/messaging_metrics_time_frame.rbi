# typed: strong

module Telnyx
  module Models
    # The time frame for metrics aggregation.
    module MessagingMetricsTimeFrame
      extend Telnyx::Internal::Type::Enum

      TaggedSymbol =
        T.type_alias { T.all(Symbol, Telnyx::MessagingMetricsTimeFrame) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      TIME_FRAME_1_H =
        T.let(:"1h", Telnyx::MessagingMetricsTimeFrame::TaggedSymbol)
      TIME_FRAME_3_H =
        T.let(:"3h", Telnyx::MessagingMetricsTimeFrame::TaggedSymbol)
      TIME_FRAME_24_H =
        T.let(:"24h", Telnyx::MessagingMetricsTimeFrame::TaggedSymbol)
      TIME_FRAME_3_D =
        T.let(:"3d", Telnyx::MessagingMetricsTimeFrame::TaggedSymbol)
      TIME_FRAME_7_D =
        T.let(:"7d", Telnyx::MessagingMetricsTimeFrame::TaggedSymbol)
      TIME_FRAME_30_D =
        T.let(:"30d", Telnyx::MessagingMetricsTimeFrame::TaggedSymbol)

      sig do
        override.returns(
          T::Array[Telnyx::MessagingMetricsTimeFrame::TaggedSymbol]
        )
      end
      def self.values
      end
    end
  end
end

# typed: strong

module Telnyx
  module Models
    # Audio sampling rate.
    module StreamBidirectionalSamplingRate
      extend Telnyx::Internal::Type::Enum

      TaggedInteger =
        T.type_alias { T.all(Integer, Telnyx::StreamBidirectionalSamplingRate) }
      OrInteger = T.type_alias { Integer }

      STREAM_BIDIRECTIONAL_SAMPLING_RATE_8000 =
        T.let(8000, Telnyx::StreamBidirectionalSamplingRate::TaggedInteger)
      STREAM_BIDIRECTIONAL_SAMPLING_RATE_16000 =
        T.let(16_000, Telnyx::StreamBidirectionalSamplingRate::TaggedInteger)
      STREAM_BIDIRECTIONAL_SAMPLING_RATE_22050 =
        T.let(22_050, Telnyx::StreamBidirectionalSamplingRate::TaggedInteger)
      STREAM_BIDIRECTIONAL_SAMPLING_RATE_24000 =
        T.let(24_000, Telnyx::StreamBidirectionalSamplingRate::TaggedInteger)
      STREAM_BIDIRECTIONAL_SAMPLING_RATE_48000 =
        T.let(48_000, Telnyx::StreamBidirectionalSamplingRate::TaggedInteger)

      sig do
        override.returns(
          T::Array[Telnyx::StreamBidirectionalSamplingRate::TaggedInteger]
        )
      end
      def self.values
      end
    end
  end
end

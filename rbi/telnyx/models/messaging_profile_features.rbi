# typed: strong

module Telnyx
  module Models
    class MessagingProfileFeatures < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::MessagingProfileFeatures, Telnyx::Internal::AnyHash)
        end

      # Enables AI detection of inbound opt-out messages that do not follow the standard
      # STOP/UNSTOP/HELP opt-out keyword pattern. When enabled, the messaging platform
      # applies an AI model to identify non-standard opt-out requests (e.g.
      # natural-language phrases) and treats them as opt-outs.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :ai_opt_out_detection_enabled

      sig { params(ai_opt_out_detection_enabled: T::Boolean).void }
      attr_writer :ai_opt_out_detection_enabled

      # Enables server-side chunking of outbound SMS. When enabled, an outbound message
      # that exceeds the maximum number of segments allowed for its destination (10
      # segments by default; some aggregators accept up to 25) is automatically split
      # into multiple child messages, each within the segment limit, and sent
      # sequentially in order. Splitting is encoding-aware: GSM-7 bodies split at
      # 153-character boundaries and UCS-2 bodies at 134-byte (67-character) boundaries.
      # When disabled (the default), messages exceeding the segment limit are rejected
      # with an error.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :auto_chunk_long_messages

      sig { params(auto_chunk_long_messages: T::Boolean).void }
      attr_writer :auto_chunk_long_messages

      # Telnyx product features the messaging customer can enable on the messaging
      # profile. Keys map to individual feature flags; unknown keys are accepted and
      # preserved for forward compatibility with rolling deployments.
      sig do
        params(
          ai_opt_out_detection_enabled: T::Boolean,
          auto_chunk_long_messages: T::Boolean
        ).returns(T.attached_class)
      end
      def self.new(
        # Enables AI detection of inbound opt-out messages that do not follow the standard
        # STOP/UNSTOP/HELP opt-out keyword pattern. When enabled, the messaging platform
        # applies an AI model to identify non-standard opt-out requests (e.g.
        # natural-language phrases) and treats them as opt-outs.
        ai_opt_out_detection_enabled: nil,
        # Enables server-side chunking of outbound SMS. When enabled, an outbound message
        # that exceeds the maximum number of segments allowed for its destination (10
        # segments by default; some aggregators accept up to 25) is automatically split
        # into multiple child messages, each within the segment limit, and sent
        # sequentially in order. Splitting is encoding-aware: GSM-7 bodies split at
        # 153-character boundaries and UCS-2 bodies at 134-byte (67-character) boundaries.
        # When disabled (the default), messages exceeding the segment limit are rejected
        # with an error.
        auto_chunk_long_messages: nil
      )
      end

      sig do
        override.returns(
          {
            ai_opt_out_detection_enabled: T::Boolean,
            auto_chunk_long_messages: T::Boolean
          }
        )
      end
      def to_hash
      end
    end
  end
end

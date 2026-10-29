# frozen_string_literal: true

module Telnyx
  module Models
    class MessagingProfileFeatures < Telnyx::Internal::Type::BaseModel
      # @!attribute ai_opt_out_detection_enabled
      #   Enables AI detection of inbound opt-out messages that do not follow the standard
      #   STOP/UNSTOP/HELP opt-out keyword pattern. When enabled, the messaging platform
      #   applies an AI model to identify non-standard opt-out requests (e.g.
      #   natural-language phrases) and treats them as opt-outs.
      #
      #   @return [Boolean, nil]
      optional :ai_opt_out_detection_enabled, Telnyx::Internal::Type::Boolean

      # @!attribute auto_chunk_long_messages
      #   Enables server-side chunking of outbound SMS. When enabled, an outbound message
      #   that exceeds the maximum number of segments allowed for its destination (10
      #   segments by default; some aggregators accept up to 25) is automatically split
      #   into multiple child messages, each within the segment limit, and sent
      #   sequentially in order. Splitting is encoding-aware: GSM-7 bodies split at
      #   153-character boundaries and UCS-2 bodies at 134-byte (67-character) boundaries.
      #   When disabled (the default), messages exceeding the segment limit are rejected
      #   with an error.
      #
      #   @return [Boolean, nil]
      optional :auto_chunk_long_messages, Telnyx::Internal::Type::Boolean

      # @!method initialize(ai_opt_out_detection_enabled: nil, auto_chunk_long_messages: nil)
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::MessagingProfileFeatures} for more details.
      #
      #   Telnyx product features the messaging customer can enable on the messaging
      #   profile. Keys map to individual feature flags; unknown keys are accepted and
      #   preserved for forward compatibility with rolling deployments.
      #
      #   @param ai_opt_out_detection_enabled [Boolean] Enables AI detection of inbound opt-out messages that do not follow the standard
      #
      #   @param auto_chunk_long_messages [Boolean] Enables server-side chunking of outbound SMS. When enabled, an outbound message
    end
  end
end

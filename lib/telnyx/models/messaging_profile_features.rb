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

      # @!method initialize(ai_opt_out_detection_enabled: nil)
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::MessagingProfileFeatures} for more details.
      #
      #   Telnyx product features the messaging customer can enable on the messaging
      #   profile. Keys map to individual feature flags; unknown keys are accepted and
      #   preserved for forward compatibility with rolling deployments.
      #
      #   @param ai_opt_out_detection_enabled [Boolean] Enables AI detection of inbound opt-out messages that do not follow the standard
    end
  end
end

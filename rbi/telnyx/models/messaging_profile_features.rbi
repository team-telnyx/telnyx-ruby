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

      # Telnyx product features the messaging customer can enable on the messaging
      # profile. Keys map to individual feature flags; unknown keys are accepted and
      # preserved for forward compatibility with rolling deployments.
      sig do
        params(ai_opt_out_detection_enabled: T::Boolean).returns(
          T.attached_class
        )
      end
      def self.new(
        # Enables AI detection of inbound opt-out messages that do not follow the standard
        # STOP/UNSTOP/HELP opt-out keyword pattern. When enabled, the messaging platform
        # applies an AI model to identify non-standard opt-out requests (e.g.
        # natural-language phrases) and treats them as opt-outs.
        ai_opt_out_detection_enabled: nil
      )
      end

      sig { override.returns({ ai_opt_out_detection_enabled: T::Boolean }) }
      def to_hash
      end
    end
  end
end

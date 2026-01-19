# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      class TelephonySettings < Telnyx::Internal::Type::BaseModel
        # @!attribute default_texml_app_id
        #   Default Texml App used for voice calls with your assistant. This will be created
        #   automatically on assistant creation.
        #
        #   @return [String, nil]
        optional :default_texml_app_id, String

        # @!attribute noise_suppression
        #   The noise suppression engine to use. Use 'disabled' to turn off noise
        #   suppression.
        #
        #   @return [Symbol, Telnyx::Models::AI::TelephonySettings::NoiseSuppression, nil]
        optional :noise_suppression, enum: -> { Telnyx::AI::TelephonySettings::NoiseSuppression }

        # @!attribute noise_suppression_config
        #   Configuration for noise suppression. Only applicable when noise_suppression is
        #   'deepfilternet'.
        #
        #   @return [Telnyx::Models::AI::TelephonySettings::NoiseSuppressionConfig, nil]
        optional :noise_suppression_config, -> { Telnyx::AI::TelephonySettings::NoiseSuppressionConfig }

        # @!attribute supports_unauthenticated_web_calls
        #   When enabled, allows users to interact with your AI assistant directly from your
        #   website without requiring authentication. This is required for FE widgets that
        #   work with assistants that have telephony enabled.
        #
        #   @return [Boolean, nil]
        optional :supports_unauthenticated_web_calls, Telnyx::Internal::Type::Boolean

        # @!attribute time_limit_secs
        #   Maximum duration in seconds for the AI assistant to participate on the call.
        #   When this limit is reached the assistant will be stopped. This limit does not
        #   apply to portions of a call without an active assistant (for instance, a call
        #   transferred to a human representative).
        #
        #   @return [Integer, nil]
        optional :time_limit_secs, Integer

        # @!attribute user_idle_timeout_secs
        #   Maximum duration in seconds of end user silence on the call. When this limit is
        #   reached the assistant will be stopped. This limit does not apply to portions of
        #   a call without an active assistant (for instance, a call transferred to a human
        #   representative).
        #
        #   @return [Integer, nil]
        optional :user_idle_timeout_secs, Integer

        # @!attribute voicemail_detection
        #   Configuration for voicemail detection (AMD - Answering Machine Detection) on
        #   outgoing calls.
        #
        #   @return [Telnyx::Models::AI::TelephonySettings::VoicemailDetection, nil]
        optional :voicemail_detection, -> { Telnyx::AI::TelephonySettings::VoicemailDetection }

        # @!method initialize(default_texml_app_id: nil, noise_suppression: nil, noise_suppression_config: nil, supports_unauthenticated_web_calls: nil, time_limit_secs: nil, user_idle_timeout_secs: nil, voicemail_detection: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::AI::TelephonySettings} for more details.
        #
        #   @param default_texml_app_id [String] Default Texml App used for voice calls with your assistant. This will be created
        #
        #   @param noise_suppression [Symbol, Telnyx::Models::AI::TelephonySettings::NoiseSuppression] The noise suppression engine to use. Use 'disabled' to turn off noise suppressio
        #
        #   @param noise_suppression_config [Telnyx::Models::AI::TelephonySettings::NoiseSuppressionConfig] Configuration for noise suppression. Only applicable when noise_suppression is '
        #
        #   @param supports_unauthenticated_web_calls [Boolean] When enabled, allows users to interact with your AI assistant directly from your
        #
        #   @param time_limit_secs [Integer] Maximum duration in seconds for the AI assistant to participate on the call. Whe
        #
        #   @param user_idle_timeout_secs [Integer] Maximum duration in seconds of end user silence on the call. When this limit is
        #
        #   @param voicemail_detection [Telnyx::Models::AI::TelephonySettings::VoicemailDetection] Configuration for voicemail detection (AMD - Answering Machine Detection) on out

        # The noise suppression engine to use. Use 'disabled' to turn off noise
        # suppression.
        #
        # @see Telnyx::Models::AI::TelephonySettings#noise_suppression
        module NoiseSuppression
          extend Telnyx::Internal::Type::Enum

          KRISP = :krisp
          DEEPFILTERNET = :deepfilternet
          DISABLED = :disabled

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Telnyx::Models::AI::TelephonySettings#noise_suppression_config
        class NoiseSuppressionConfig < Telnyx::Internal::Type::BaseModel
          # @!attribute attenuation_limit
          #   Attenuation limit for noise suppression. Range: 0-100.
          #
          #   @return [Integer, nil]
          optional :attenuation_limit, Integer

          # @!attribute mode
          #   Mode for noise suppression configuration.
          #
          #   @return [Symbol, Telnyx::Models::AI::TelephonySettings::NoiseSuppressionConfig::Mode, nil]
          optional :mode, enum: -> { Telnyx::AI::TelephonySettings::NoiseSuppressionConfig::Mode }

          # @!method initialize(attenuation_limit: nil, mode: nil)
          #   Configuration for noise suppression. Only applicable when noise_suppression is
          #   'deepfilternet'.
          #
          #   @param attenuation_limit [Integer] Attenuation limit for noise suppression. Range: 0-100.
          #
          #   @param mode [Symbol, Telnyx::Models::AI::TelephonySettings::NoiseSuppressionConfig::Mode] Mode for noise suppression configuration.

          # Mode for noise suppression configuration.
          #
          # @see Telnyx::Models::AI::TelephonySettings::NoiseSuppressionConfig#mode
          module Mode
            extend Telnyx::Internal::Type::Enum

            ADVANCED = :advanced

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Telnyx::Models::AI::TelephonySettings#voicemail_detection
        class VoicemailDetection < Telnyx::Internal::Type::BaseModel
          # @!attribute on_voicemail_detected
          #   Action to take when voicemail is detected.
          #
          #   @return [Telnyx::Models::AI::TelephonySettings::VoicemailDetection::OnVoicemailDetected, nil]
          optional :on_voicemail_detected,
                   -> { Telnyx::AI::TelephonySettings::VoicemailDetection::OnVoicemailDetected }

          # @!method initialize(on_voicemail_detected: nil)
          #   Configuration for voicemail detection (AMD - Answering Machine Detection) on
          #   outgoing calls.
          #
          #   @param on_voicemail_detected [Telnyx::Models::AI::TelephonySettings::VoicemailDetection::OnVoicemailDetected] Action to take when voicemail is detected.

          # @see Telnyx::Models::AI::TelephonySettings::VoicemailDetection#on_voicemail_detected
          class OnVoicemailDetected < Telnyx::Internal::Type::BaseModel
            # @!attribute action
            #   The action to take when voicemail is detected.
            #
            #   @return [Symbol, Telnyx::Models::AI::TelephonySettings::VoicemailDetection::OnVoicemailDetected::Action, nil]
            optional :action,
                     enum: -> { Telnyx::AI::TelephonySettings::VoicemailDetection::OnVoicemailDetected::Action }

            # @!attribute voicemail_message
            #   Configuration for the voicemail message to leave. Only applicable when action is
            #   'leave_message_and_stop_assistant'.
            #
            #   @return [Telnyx::Models::AI::TelephonySettings::VoicemailDetection::OnVoicemailDetected::VoicemailMessage, nil]
            optional :voicemail_message,
                     -> { Telnyx::AI::TelephonySettings::VoicemailDetection::OnVoicemailDetected::VoicemailMessage }

            # @!method initialize(action: nil, voicemail_message: nil)
            #   Some parameter documentations has been truncated, see
            #   {Telnyx::Models::AI::TelephonySettings::VoicemailDetection::OnVoicemailDetected}
            #   for more details.
            #
            #   Action to take when voicemail is detected.
            #
            #   @param action [Symbol, Telnyx::Models::AI::TelephonySettings::VoicemailDetection::OnVoicemailDetected::Action] The action to take when voicemail is detected.
            #
            #   @param voicemail_message [Telnyx::Models::AI::TelephonySettings::VoicemailDetection::OnVoicemailDetected::VoicemailMessage] Configuration for the voicemail message to leave. Only applicable when action is

            # The action to take when voicemail is detected.
            #
            # @see Telnyx::Models::AI::TelephonySettings::VoicemailDetection::OnVoicemailDetected#action
            module Action
              extend Telnyx::Internal::Type::Enum

              STOP_ASSISTANT = :stop_assistant
              LEAVE_MESSAGE_AND_STOP_ASSISTANT = :leave_message_and_stop_assistant
              CONTINUE_ASSISTANT = :continue_assistant

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see Telnyx::Models::AI::TelephonySettings::VoicemailDetection::OnVoicemailDetected#voicemail_message
            class VoicemailMessage < Telnyx::Internal::Type::BaseModel
              # @!attribute message
              #   The specific message to leave as voicemail. Only applicable when type is
              #   'message'.
              #
              #   @return [String, nil]
              optional :message, String

              # @!attribute prompt
              #   The prompt to use for generating the voicemail message. Only applicable when
              #   type is 'prompt'.
              #
              #   @return [String, nil]
              optional :prompt, String

              # @!attribute type
              #   The type of voicemail message. Use 'prompt' to have the assistant generate a
              #   message based on a prompt, or 'message' to leave a specific message.
              #
              #   @return [Symbol, Telnyx::Models::AI::TelephonySettings::VoicemailDetection::OnVoicemailDetected::VoicemailMessage::Type, nil]
              optional :type,
                       enum: -> { Telnyx::AI::TelephonySettings::VoicemailDetection::OnVoicemailDetected::VoicemailMessage::Type }

              # @!method initialize(message: nil, prompt: nil, type: nil)
              #   Some parameter documentations has been truncated, see
              #   {Telnyx::Models::AI::TelephonySettings::VoicemailDetection::OnVoicemailDetected::VoicemailMessage}
              #   for more details.
              #
              #   Configuration for the voicemail message to leave. Only applicable when action is
              #   'leave_message_and_stop_assistant'.
              #
              #   @param message [String] The specific message to leave as voicemail. Only applicable when type is 'messag
              #
              #   @param prompt [String] The prompt to use for generating the voicemail message. Only applicable when typ
              #
              #   @param type [Symbol, Telnyx::Models::AI::TelephonySettings::VoicemailDetection::OnVoicemailDetected::VoicemailMessage::Type] The type of voicemail message. Use 'prompt' to have the assistant generate a mes

              # The type of voicemail message. Use 'prompt' to have the assistant generate a
              # message based on a prompt, or 'message' to leave a specific message.
              #
              # @see Telnyx::Models::AI::TelephonySettings::VoicemailDetection::OnVoicemailDetected::VoicemailMessage#type
              module Type
                extend Telnyx::Internal::Type::Enum

                PROMPT = :prompt
                MESSAGE = :message

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end
        end
      end
    end
  end
end

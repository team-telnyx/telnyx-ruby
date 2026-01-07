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

        # @!method initialize(default_texml_app_id: nil, noise_suppression: nil, noise_suppression_config: nil, supports_unauthenticated_web_calls: nil, time_limit_secs: nil)
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

        # The noise suppression engine to use. Use 'disabled' to turn off noise
        # suppression.
        #
        # @see Telnyx::Models::AI::TelephonySettings#noise_suppression
        module NoiseSuppression
          extend Telnyx::Internal::Type::Enum

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
      end
    end
  end
end

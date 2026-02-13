# frozen_string_literal: true

module Telnyx
  module Models
    class ConnectionNoiseSuppressionDetails < Telnyx::Internal::Type::BaseModel
      # @!attribute attenuation_limit
      #   The attenuation limit value for the selected engine. Default values vary by
      #   engine: 0 for 'denoiser', 80 for 'deep_filter_net', 'deep_filter_net_large', and
      #   all Krisp engines ('krisp_viva_tel', 'krisp_viva_tel_lite',
      #   'krisp_viva_promodel', 'krisp_viva_ss'), 100 for 'quail_voice_focus'.
      #
      #   @return [Integer, nil]
      optional :attenuation_limit, Integer

      # @!attribute engine
      #   The noise suppression engine to use. 'denoiser' is the default engine.
      #   'deep_filter_net' and 'deep_filter_net_large' are alternative engines with
      #   different performance characteristics. Krisp engines ('krisp_viva_tel',
      #   'krisp_viva_tel_lite', 'krisp_viva_promodel', 'krisp_viva_ss') provide advanced
      #   noise suppression capabilities. 'quail_voice_focus' provides Quail-based voice
      #   focus noise suppression.
      #
      #   @return [Symbol, Telnyx::Models::ConnectionNoiseSuppressionDetails::Engine, nil]
      optional :engine, enum: -> { Telnyx::ConnectionNoiseSuppressionDetails::Engine }

      # @!method initialize(attenuation_limit: nil, engine: nil)
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::ConnectionNoiseSuppressionDetails} for more details.
      #
      #   Configuration options for noise suppression. These settings are stored
      #   regardless of the noise_suppression value, but only take effect when
      #   noise_suppression is not 'disabled'. If you disable noise suppression and later
      #   re-enable it, the previously configured settings will be used.
      #
      #   @param attenuation_limit [Integer] The attenuation limit value for the selected engine. Default values vary by engi
      #
      #   @param engine [Symbol, Telnyx::Models::ConnectionNoiseSuppressionDetails::Engine] The noise suppression engine to use. 'denoiser' is the default engine. 'deep_fil

      # The noise suppression engine to use. 'denoiser' is the default engine.
      # 'deep_filter_net' and 'deep_filter_net_large' are alternative engines with
      # different performance characteristics. Krisp engines ('krisp_viva_tel',
      # 'krisp_viva_tel_lite', 'krisp_viva_promodel', 'krisp_viva_ss') provide advanced
      # noise suppression capabilities. 'quail_voice_focus' provides Quail-based voice
      # focus noise suppression.
      #
      # @see Telnyx::Models::ConnectionNoiseSuppressionDetails#engine
      module Engine
        extend Telnyx::Internal::Type::Enum

        DENOISER = :denoiser
        DEEP_FILTER_NET = :deep_filter_net
        DEEP_FILTER_NET_LARGE = :deep_filter_net_large
        KRISP_VIVA_TEL = :krisp_viva_tel
        KRISP_VIVA_TEL_LITE = :krisp_viva_tel_lite
        KRISP_VIVA_PROMODEL = :krisp_viva_promodel
        KRISP_VIVA_SS = :krisp_viva_ss
        QUAIL_VOICE_FOCUS = :quail_voice_focus

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end

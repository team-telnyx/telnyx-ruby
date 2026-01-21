# typed: strong

module Telnyx
  module Models
    class ConnectionNoiseSuppressionDetails < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::ConnectionNoiseSuppressionDetails,
            Telnyx::Internal::AnyHash
          )
        end

      # The attenuation limit value for the selected engine. Default values vary by
      # engine: 0 for 'denoiser', 80 for 'deep_filter_net', 'deep_filter_net_large', and
      # all Krisp engines ('krisp_viva_tel', 'krisp_viva_tel_lite',
      # 'krisp_viva_promodel', 'krisp_viva_ss').
      sig { returns(T.nilable(Integer)) }
      attr_reader :attenuation_limit

      sig { params(attenuation_limit: Integer).void }
      attr_writer :attenuation_limit

      # The noise suppression engine to use. 'denoiser' is the default engine.
      # 'deep_filter_net' and 'deep_filter_net_large' are alternative engines with
      # different performance characteristics. Krisp engines ('krisp_viva_tel',
      # 'krisp_viva_tel_lite', 'krisp_viva_promodel', 'krisp_viva_ss') provide advanced
      # noise suppression capabilities.
      sig do
        returns(
          T.nilable(Telnyx::ConnectionNoiseSuppressionDetails::Engine::OrSymbol)
        )
      end
      attr_reader :engine

      sig do
        params(
          engine: Telnyx::ConnectionNoiseSuppressionDetails::Engine::OrSymbol
        ).void
      end
      attr_writer :engine

      # Configuration options for noise suppression. These settings are stored
      # regardless of the noise_suppression value, but only take effect when
      # noise_suppression is not 'disabled'. If you disable noise suppression and later
      # re-enable it, the previously configured settings will be used.
      sig do
        params(
          attenuation_limit: Integer,
          engine: Telnyx::ConnectionNoiseSuppressionDetails::Engine::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # The attenuation limit value for the selected engine. Default values vary by
        # engine: 0 for 'denoiser', 80 for 'deep_filter_net', 'deep_filter_net_large', and
        # all Krisp engines ('krisp_viva_tel', 'krisp_viva_tel_lite',
        # 'krisp_viva_promodel', 'krisp_viva_ss').
        attenuation_limit: nil,
        # The noise suppression engine to use. 'denoiser' is the default engine.
        # 'deep_filter_net' and 'deep_filter_net_large' are alternative engines with
        # different performance characteristics. Krisp engines ('krisp_viva_tel',
        # 'krisp_viva_tel_lite', 'krisp_viva_promodel', 'krisp_viva_ss') provide advanced
        # noise suppression capabilities.
        engine: nil
      )
      end

      sig do
        override.returns(
          {
            attenuation_limit: Integer,
            engine: Telnyx::ConnectionNoiseSuppressionDetails::Engine::OrSymbol
          }
        )
      end
      def to_hash
      end

      # The noise suppression engine to use. 'denoiser' is the default engine.
      # 'deep_filter_net' and 'deep_filter_net_large' are alternative engines with
      # different performance characteristics. Krisp engines ('krisp_viva_tel',
      # 'krisp_viva_tel_lite', 'krisp_viva_promodel', 'krisp_viva_ss') provide advanced
      # noise suppression capabilities.
      module Engine
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Telnyx::ConnectionNoiseSuppressionDetails::Engine)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        DENOISER =
          T.let(
            :denoiser,
            Telnyx::ConnectionNoiseSuppressionDetails::Engine::TaggedSymbol
          )
        DEEP_FILTER_NET =
          T.let(
            :deep_filter_net,
            Telnyx::ConnectionNoiseSuppressionDetails::Engine::TaggedSymbol
          )
        DEEP_FILTER_NET_LARGE =
          T.let(
            :deep_filter_net_large,
            Telnyx::ConnectionNoiseSuppressionDetails::Engine::TaggedSymbol
          )
        KRISP_VIVA_TEL =
          T.let(
            :krisp_viva_tel,
            Telnyx::ConnectionNoiseSuppressionDetails::Engine::TaggedSymbol
          )
        KRISP_VIVA_TEL_LITE =
          T.let(
            :krisp_viva_tel_lite,
            Telnyx::ConnectionNoiseSuppressionDetails::Engine::TaggedSymbol
          )
        KRISP_VIVA_PROMODEL =
          T.let(
            :krisp_viva_promodel,
            Telnyx::ConnectionNoiseSuppressionDetails::Engine::TaggedSymbol
          )
        KRISP_VIVA_SS =
          T.let(
            :krisp_viva_ss,
            Telnyx::ConnectionNoiseSuppressionDetails::Engine::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::ConnectionNoiseSuppressionDetails::Engine::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end

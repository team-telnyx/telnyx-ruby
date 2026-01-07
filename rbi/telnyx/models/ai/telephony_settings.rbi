# typed: strong

module Telnyx
  module Models
    module AI
      class TelephonySettings < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Telnyx::AI::TelephonySettings, Telnyx::Internal::AnyHash)
          end

        # Default Texml App used for voice calls with your assistant. This will be created
        # automatically on assistant creation.
        sig { returns(T.nilable(String)) }
        attr_reader :default_texml_app_id

        sig { params(default_texml_app_id: String).void }
        attr_writer :default_texml_app_id

        # The noise suppression engine to use. Use 'disabled' to turn off noise
        # suppression.
        sig do
          returns(
            T.nilable(Telnyx::AI::TelephonySettings::NoiseSuppression::OrSymbol)
          )
        end
        attr_reader :noise_suppression

        sig do
          params(
            noise_suppression:
              Telnyx::AI::TelephonySettings::NoiseSuppression::OrSymbol
          ).void
        end
        attr_writer :noise_suppression

        # Configuration for noise suppression. Only applicable when noise_suppression is
        # 'deepfilternet'.
        sig do
          returns(
            T.nilable(Telnyx::AI::TelephonySettings::NoiseSuppressionConfig)
          )
        end
        attr_reader :noise_suppression_config

        sig do
          params(
            noise_suppression_config:
              Telnyx::AI::TelephonySettings::NoiseSuppressionConfig::OrHash
          ).void
        end
        attr_writer :noise_suppression_config

        # When enabled, allows users to interact with your AI assistant directly from your
        # website without requiring authentication. This is required for FE widgets that
        # work with assistants that have telephony enabled.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :supports_unauthenticated_web_calls

        sig { params(supports_unauthenticated_web_calls: T::Boolean).void }
        attr_writer :supports_unauthenticated_web_calls

        # Maximum duration in seconds for the AI assistant to participate on the call.
        # When this limit is reached the assistant will be stopped. This limit does not
        # apply to portions of a call without an active assistant (for instance, a call
        # transferred to a human representative).
        sig { returns(T.nilable(Integer)) }
        attr_reader :time_limit_secs

        sig { params(time_limit_secs: Integer).void }
        attr_writer :time_limit_secs

        sig do
          params(
            default_texml_app_id: String,
            noise_suppression:
              Telnyx::AI::TelephonySettings::NoiseSuppression::OrSymbol,
            noise_suppression_config:
              Telnyx::AI::TelephonySettings::NoiseSuppressionConfig::OrHash,
            supports_unauthenticated_web_calls: T::Boolean,
            time_limit_secs: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          # Default Texml App used for voice calls with your assistant. This will be created
          # automatically on assistant creation.
          default_texml_app_id: nil,
          # The noise suppression engine to use. Use 'disabled' to turn off noise
          # suppression.
          noise_suppression: nil,
          # Configuration for noise suppression. Only applicable when noise_suppression is
          # 'deepfilternet'.
          noise_suppression_config: nil,
          # When enabled, allows users to interact with your AI assistant directly from your
          # website without requiring authentication. This is required for FE widgets that
          # work with assistants that have telephony enabled.
          supports_unauthenticated_web_calls: nil,
          # Maximum duration in seconds for the AI assistant to participate on the call.
          # When this limit is reached the assistant will be stopped. This limit does not
          # apply to portions of a call without an active assistant (for instance, a call
          # transferred to a human representative).
          time_limit_secs: nil
        )
        end

        sig do
          override.returns(
            {
              default_texml_app_id: String,
              noise_suppression:
                Telnyx::AI::TelephonySettings::NoiseSuppression::OrSymbol,
              noise_suppression_config:
                Telnyx::AI::TelephonySettings::NoiseSuppressionConfig,
              supports_unauthenticated_web_calls: T::Boolean,
              time_limit_secs: Integer
            }
          )
        end
        def to_hash
        end

        # The noise suppression engine to use. Use 'disabled' to turn off noise
        # suppression.
        module NoiseSuppression
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::AI::TelephonySettings::NoiseSuppression)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          DEEPFILTERNET =
            T.let(
              :deepfilternet,
              Telnyx::AI::TelephonySettings::NoiseSuppression::TaggedSymbol
            )
          DISABLED =
            T.let(
              :disabled,
              Telnyx::AI::TelephonySettings::NoiseSuppression::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::AI::TelephonySettings::NoiseSuppression::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        class NoiseSuppressionConfig < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::AI::TelephonySettings::NoiseSuppressionConfig,
                Telnyx::Internal::AnyHash
              )
            end

          # Attenuation limit for noise suppression. Range: 0-100.
          sig { returns(T.nilable(Integer)) }
          attr_reader :attenuation_limit

          sig { params(attenuation_limit: Integer).void }
          attr_writer :attenuation_limit

          # Mode for noise suppression configuration.
          sig do
            returns(
              T.nilable(
                Telnyx::AI::TelephonySettings::NoiseSuppressionConfig::Mode::OrSymbol
              )
            )
          end
          attr_reader :mode

          sig do
            params(
              mode:
                Telnyx::AI::TelephonySettings::NoiseSuppressionConfig::Mode::OrSymbol
            ).void
          end
          attr_writer :mode

          # Configuration for noise suppression. Only applicable when noise_suppression is
          # 'deepfilternet'.
          sig do
            params(
              attenuation_limit: Integer,
              mode:
                Telnyx::AI::TelephonySettings::NoiseSuppressionConfig::Mode::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(
            # Attenuation limit for noise suppression. Range: 0-100.
            attenuation_limit: nil,
            # Mode for noise suppression configuration.
            mode: nil
          )
          end

          sig do
            override.returns(
              {
                attenuation_limit: Integer,
                mode:
                  Telnyx::AI::TelephonySettings::NoiseSuppressionConfig::Mode::OrSymbol
              }
            )
          end
          def to_hash
          end

          # Mode for noise suppression configuration.
          module Mode
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::AI::TelephonySettings::NoiseSuppressionConfig::Mode
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            ADVANCED =
              T.let(
                :advanced,
                Telnyx::AI::TelephonySettings::NoiseSuppressionConfig::Mode::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::AI::TelephonySettings::NoiseSuppressionConfig::Mode::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end
      end
    end
  end
end

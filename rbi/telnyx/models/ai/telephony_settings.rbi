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

        # Maximum duration in seconds of end user silence on the call. When this limit is
        # reached the assistant will be stopped. This limit does not apply to portions of
        # a call without an active assistant (for instance, a call transferred to a human
        # representative).
        sig { returns(T.nilable(Integer)) }
        attr_reader :user_idle_timeout_secs

        sig { params(user_idle_timeout_secs: Integer).void }
        attr_writer :user_idle_timeout_secs

        # Configuration for voicemail detection (AMD - Answering Machine Detection) on
        # outgoing calls. These settings only apply if AMD is enabled on the Dial command.
        # See
        # [TeXML Dial documentation](https://developers.telnyx.com/api-reference/texml-rest-commands/initiate-an-outbound-call)
        # for enabling AMD. Recommended settings: MachineDetection=Enable, AsyncAmd=true,
        # DetectionMode=Premium.
        sig do
          returns(T.nilable(Telnyx::AI::TelephonySettings::VoicemailDetection))
        end
        attr_reader :voicemail_detection

        sig do
          params(
            voicemail_detection:
              Telnyx::AI::TelephonySettings::VoicemailDetection::OrHash
          ).void
        end
        attr_writer :voicemail_detection

        sig do
          params(
            default_texml_app_id: String,
            noise_suppression:
              Telnyx::AI::TelephonySettings::NoiseSuppression::OrSymbol,
            noise_suppression_config:
              Telnyx::AI::TelephonySettings::NoiseSuppressionConfig::OrHash,
            supports_unauthenticated_web_calls: T::Boolean,
            time_limit_secs: Integer,
            user_idle_timeout_secs: Integer,
            voicemail_detection:
              Telnyx::AI::TelephonySettings::VoicemailDetection::OrHash
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
          time_limit_secs: nil,
          # Maximum duration in seconds of end user silence on the call. When this limit is
          # reached the assistant will be stopped. This limit does not apply to portions of
          # a call without an active assistant (for instance, a call transferred to a human
          # representative).
          user_idle_timeout_secs: nil,
          # Configuration for voicemail detection (AMD - Answering Machine Detection) on
          # outgoing calls. These settings only apply if AMD is enabled on the Dial command.
          # See
          # [TeXML Dial documentation](https://developers.telnyx.com/api-reference/texml-rest-commands/initiate-an-outbound-call)
          # for enabling AMD. Recommended settings: MachineDetection=Enable, AsyncAmd=true,
          # DetectionMode=Premium.
          voicemail_detection: nil
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
              time_limit_secs: Integer,
              user_idle_timeout_secs: Integer,
              voicemail_detection:
                Telnyx::AI::TelephonySettings::VoicemailDetection
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

          KRISP =
            T.let(
              :krisp,
              Telnyx::AI::TelephonySettings::NoiseSuppression::TaggedSymbol
            )
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

        class VoicemailDetection < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::AI::TelephonySettings::VoicemailDetection,
                Telnyx::Internal::AnyHash
              )
            end

          # Action to take when voicemail is detected.
          sig do
            returns(
              T.nilable(
                Telnyx::AI::TelephonySettings::VoicemailDetection::OnVoicemailDetected
              )
            )
          end
          attr_reader :on_voicemail_detected

          sig do
            params(
              on_voicemail_detected:
                Telnyx::AI::TelephonySettings::VoicemailDetection::OnVoicemailDetected::OrHash
            ).void
          end
          attr_writer :on_voicemail_detected

          # Configuration for voicemail detection (AMD - Answering Machine Detection) on
          # outgoing calls. These settings only apply if AMD is enabled on the Dial command.
          # See
          # [TeXML Dial documentation](https://developers.telnyx.com/api-reference/texml-rest-commands/initiate-an-outbound-call)
          # for enabling AMD. Recommended settings: MachineDetection=Enable, AsyncAmd=true,
          # DetectionMode=Premium.
          sig do
            params(
              on_voicemail_detected:
                Telnyx::AI::TelephonySettings::VoicemailDetection::OnVoicemailDetected::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # Action to take when voicemail is detected.
            on_voicemail_detected: nil
          )
          end

          sig do
            override.returns(
              {
                on_voicemail_detected:
                  Telnyx::AI::TelephonySettings::VoicemailDetection::OnVoicemailDetected
              }
            )
          end
          def to_hash
          end

          class OnVoicemailDetected < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::AI::TelephonySettings::VoicemailDetection::OnVoicemailDetected,
                  Telnyx::Internal::AnyHash
                )
              end

            # The action to take when voicemail is detected.
            sig do
              returns(
                T.nilable(
                  Telnyx::AI::TelephonySettings::VoicemailDetection::OnVoicemailDetected::Action::OrSymbol
                )
              )
            end
            attr_reader :action

            sig do
              params(
                action:
                  Telnyx::AI::TelephonySettings::VoicemailDetection::OnVoicemailDetected::Action::OrSymbol
              ).void
            end
            attr_writer :action

            # Configuration for the voicemail message to leave. Only applicable when action is
            # 'leave_message_and_stop_assistant'.
            sig do
              returns(
                T.nilable(
                  Telnyx::AI::TelephonySettings::VoicemailDetection::OnVoicemailDetected::VoicemailMessage
                )
              )
            end
            attr_reader :voicemail_message

            sig do
              params(
                voicemail_message:
                  Telnyx::AI::TelephonySettings::VoicemailDetection::OnVoicemailDetected::VoicemailMessage::OrHash
              ).void
            end
            attr_writer :voicemail_message

            # Action to take when voicemail is detected.
            sig do
              params(
                action:
                  Telnyx::AI::TelephonySettings::VoicemailDetection::OnVoicemailDetected::Action::OrSymbol,
                voicemail_message:
                  Telnyx::AI::TelephonySettings::VoicemailDetection::OnVoicemailDetected::VoicemailMessage::OrHash
              ).returns(T.attached_class)
            end
            def self.new(
              # The action to take when voicemail is detected.
              action: nil,
              # Configuration for the voicemail message to leave. Only applicable when action is
              # 'leave_message_and_stop_assistant'.
              voicemail_message: nil
            )
            end

            sig do
              override.returns(
                {
                  action:
                    Telnyx::AI::TelephonySettings::VoicemailDetection::OnVoicemailDetected::Action::OrSymbol,
                  voicemail_message:
                    Telnyx::AI::TelephonySettings::VoicemailDetection::OnVoicemailDetected::VoicemailMessage
                }
              )
            end
            def to_hash
            end

            # The action to take when voicemail is detected.
            module Action
              extend Telnyx::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Telnyx::AI::TelephonySettings::VoicemailDetection::OnVoicemailDetected::Action
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              STOP_ASSISTANT =
                T.let(
                  :stop_assistant,
                  Telnyx::AI::TelephonySettings::VoicemailDetection::OnVoicemailDetected::Action::TaggedSymbol
                )
              LEAVE_MESSAGE_AND_STOP_ASSISTANT =
                T.let(
                  :leave_message_and_stop_assistant,
                  Telnyx::AI::TelephonySettings::VoicemailDetection::OnVoicemailDetected::Action::TaggedSymbol
                )
              CONTINUE_ASSISTANT =
                T.let(
                  :continue_assistant,
                  Telnyx::AI::TelephonySettings::VoicemailDetection::OnVoicemailDetected::Action::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Telnyx::AI::TelephonySettings::VoicemailDetection::OnVoicemailDetected::Action::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            class VoicemailMessage < Telnyx::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Telnyx::AI::TelephonySettings::VoicemailDetection::OnVoicemailDetected::VoicemailMessage,
                    Telnyx::Internal::AnyHash
                  )
                end

              # The specific message to leave as voicemail. Only applicable when type is
              # 'message'.
              sig { returns(T.nilable(String)) }
              attr_reader :message

              sig { params(message: String).void }
              attr_writer :message

              # The prompt to use for generating the voicemail message. Only applicable when
              # type is 'prompt'.
              sig { returns(T.nilable(String)) }
              attr_reader :prompt

              sig { params(prompt: String).void }
              attr_writer :prompt

              # The type of voicemail message. Use 'prompt' to have the assistant generate a
              # message based on a prompt, or 'message' to leave a specific message.
              sig do
                returns(
                  T.nilable(
                    Telnyx::AI::TelephonySettings::VoicemailDetection::OnVoicemailDetected::VoicemailMessage::Type::OrSymbol
                  )
                )
              end
              attr_reader :type

              sig do
                params(
                  type:
                    Telnyx::AI::TelephonySettings::VoicemailDetection::OnVoicemailDetected::VoicemailMessage::Type::OrSymbol
                ).void
              end
              attr_writer :type

              # Configuration for the voicemail message to leave. Only applicable when action is
              # 'leave_message_and_stop_assistant'.
              sig do
                params(
                  message: String,
                  prompt: String,
                  type:
                    Telnyx::AI::TelephonySettings::VoicemailDetection::OnVoicemailDetected::VoicemailMessage::Type::OrSymbol
                ).returns(T.attached_class)
              end
              def self.new(
                # The specific message to leave as voicemail. Only applicable when type is
                # 'message'.
                message: nil,
                # The prompt to use for generating the voicemail message. Only applicable when
                # type is 'prompt'.
                prompt: nil,
                # The type of voicemail message. Use 'prompt' to have the assistant generate a
                # message based on a prompt, or 'message' to leave a specific message.
                type: nil
              )
              end

              sig do
                override.returns(
                  {
                    message: String,
                    prompt: String,
                    type:
                      Telnyx::AI::TelephonySettings::VoicemailDetection::OnVoicemailDetected::VoicemailMessage::Type::OrSymbol
                  }
                )
              end
              def to_hash
              end

              # The type of voicemail message. Use 'prompt' to have the assistant generate a
              # message based on a prompt, or 'message' to leave a specific message.
              module Type
                extend Telnyx::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      Telnyx::AI::TelephonySettings::VoicemailDetection::OnVoicemailDetected::VoicemailMessage::Type
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                PROMPT =
                  T.let(
                    :prompt,
                    Telnyx::AI::TelephonySettings::VoicemailDetection::OnVoicemailDetected::VoicemailMessage::Type::TaggedSymbol
                  )
                MESSAGE =
                  T.let(
                    :message,
                    Telnyx::AI::TelephonySettings::VoicemailDetection::OnVoicemailDetected::VoicemailMessage::Type::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Telnyx::AI::TelephonySettings::VoicemailDetection::OnVoicemailDetected::VoicemailMessage::Type::TaggedSymbol
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
  end
end

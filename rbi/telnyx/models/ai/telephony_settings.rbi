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

        # Disable inbound DTMF for the entire call. Must be set to true if a 'pay' tool is
        # configured anywhere on the assistant — on the main tool array or on any workflow
        # node — enforced at write time.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :disable_dtmf

        sig { params(disable_dtmf: T::Boolean).void }
        attr_writer :disable_dtmf

        # Destination number or SIP URI to transfer the caller to when the AI conversation
        # ends abnormally, for example because of an assistant-side error, so the caller
        # is not left in dead air. This only fires for abnormal ends: it does not fire
        # when the conversation ends on purpose (the caller hung up, the assistant
        # completed normally, the caller hung up after a relay handoff, or voicemail was
        # detected), and it does not fire when the assistant already transferred or
        # bridged the call.
        sig { returns(T.nilable(String)) }
        attr_reader :fallback_destination

        sig { params(fallback_destination: String).void }
        attr_writer :fallback_destination

        # The noise suppression engine to use. 'aicoustics' is STT-optimized and
        # recommended for AI assistants (configure through noise_suppression_config). Use
        # 'disabled' to turn off noise suppression.
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

        # Configuration for noise suppression. Applicable fields depend on the engine:
        # 'attenuation_limit' and 'mode' only when noise_suppression is 'deepfilternet';
        # 'family', 'size' and 'enhancement_level' only when noise_suppression is
        # 'aicoustics'.
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

        # Configuration for call recording format and channel settings.
        sig do
          returns(T.nilable(Telnyx::AI::TelephonySettings::RecordingSettings))
        end
        attr_reader :recording_settings

        sig do
          params(
            recording_settings:
              Telnyx::AI::TelephonySettings::RecordingSettings::OrHash
          ).void
        end
        attr_writer :recording_settings

        # Whether the assistant sends a `call.ai_gather.message_history_updated` webhook
        # with the full message history every time the conversation history changes. Leave
        # unset to inherit the `send_message_history_updates` value from the
        # `ai_assistant_start` or `gather_using_ai` command that started the conversation.
        # Setting it here is authoritative: `true` turns the webhooks on even when the
        # start command did not request them, and `false` turns them off even when it did.
        # Messages exchanged during a private warm transfer acceptance phase are never
        # included.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :send_message_history_updates

        sig { params(send_message_history_updates: T::Boolean).void }
        attr_writer :send_message_history_updates

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

        # Duration in seconds of end user silence before the assistant checks in on the
        # user. When this limit is reached the assistant will prompt the user to respond.
        # This is distinct from user_idle_timeout_secs which stops the assistant entirely.
        sig { returns(T.nilable(Integer)) }
        attr_reader :user_idle_reply_secs

        sig { params(user_idle_reply_secs: Integer).void }
        attr_writer :user_idle_reply_secs

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
            disable_dtmf: T::Boolean,
            fallback_destination: String,
            noise_suppression:
              Telnyx::AI::TelephonySettings::NoiseSuppression::OrSymbol,
            noise_suppression_config:
              Telnyx::AI::TelephonySettings::NoiseSuppressionConfig::OrHash,
            recording_settings:
              Telnyx::AI::TelephonySettings::RecordingSettings::OrHash,
            send_message_history_updates: T::Boolean,
            supports_unauthenticated_web_calls: T::Boolean,
            time_limit_secs: Integer,
            user_idle_reply_secs: Integer,
            user_idle_timeout_secs: Integer,
            voicemail_detection:
              Telnyx::AI::TelephonySettings::VoicemailDetection::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Default Texml App used for voice calls with your assistant. This will be created
          # automatically on assistant creation.
          default_texml_app_id: nil,
          # Disable inbound DTMF for the entire call. Must be set to true if a 'pay' tool is
          # configured anywhere on the assistant — on the main tool array or on any workflow
          # node — enforced at write time.
          disable_dtmf: nil,
          # Destination number or SIP URI to transfer the caller to when the AI conversation
          # ends abnormally, for example because of an assistant-side error, so the caller
          # is not left in dead air. This only fires for abnormal ends: it does not fire
          # when the conversation ends on purpose (the caller hung up, the assistant
          # completed normally, the caller hung up after a relay handoff, or voicemail was
          # detected), and it does not fire when the assistant already transferred or
          # bridged the call.
          fallback_destination: nil,
          # The noise suppression engine to use. 'aicoustics' is STT-optimized and
          # recommended for AI assistants (configure through noise_suppression_config). Use
          # 'disabled' to turn off noise suppression.
          noise_suppression: nil,
          # Configuration for noise suppression. Applicable fields depend on the engine:
          # 'attenuation_limit' and 'mode' only when noise_suppression is 'deepfilternet';
          # 'family', 'size' and 'enhancement_level' only when noise_suppression is
          # 'aicoustics'.
          noise_suppression_config: nil,
          # Configuration for call recording format and channel settings.
          recording_settings: nil,
          # Whether the assistant sends a `call.ai_gather.message_history_updated` webhook
          # with the full message history every time the conversation history changes. Leave
          # unset to inherit the `send_message_history_updates` value from the
          # `ai_assistant_start` or `gather_using_ai` command that started the conversation.
          # Setting it here is authoritative: `true` turns the webhooks on even when the
          # start command did not request them, and `false` turns them off even when it did.
          # Messages exchanged during a private warm transfer acceptance phase are never
          # included.
          send_message_history_updates: nil,
          # When enabled, allows users to interact with your AI assistant directly from your
          # website without requiring authentication. This is required for FE widgets that
          # work with assistants that have telephony enabled.
          supports_unauthenticated_web_calls: nil,
          # Maximum duration in seconds for the AI assistant to participate on the call.
          # When this limit is reached the assistant will be stopped. This limit does not
          # apply to portions of a call without an active assistant (for instance, a call
          # transferred to a human representative).
          time_limit_secs: nil,
          # Duration in seconds of end user silence before the assistant checks in on the
          # user. When this limit is reached the assistant will prompt the user to respond.
          # This is distinct from user_idle_timeout_secs which stops the assistant entirely.
          user_idle_reply_secs: nil,
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
              disable_dtmf: T::Boolean,
              fallback_destination: String,
              noise_suppression:
                Telnyx::AI::TelephonySettings::NoiseSuppression::OrSymbol,
              noise_suppression_config:
                Telnyx::AI::TelephonySettings::NoiseSuppressionConfig,
              recording_settings:
                Telnyx::AI::TelephonySettings::RecordingSettings,
              send_message_history_updates: T::Boolean,
              supports_unauthenticated_web_calls: T::Boolean,
              time_limit_secs: Integer,
              user_idle_reply_secs: Integer,
              user_idle_timeout_secs: Integer,
              voicemail_detection:
                Telnyx::AI::TelephonySettings::VoicemailDetection
            }
          )
        end
        def to_hash
        end

        # The noise suppression engine to use. 'aicoustics' is STT-optimized and
        # recommended for AI assistants (configure through noise_suppression_config). Use
        # 'disabled' to turn off noise suppression.
        module NoiseSuppression
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::AI::TelephonySettings::NoiseSuppression)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          AICOUSTICS =
            T.let(
              :aicoustics,
              Telnyx::AI::TelephonySettings::NoiseSuppression::TaggedSymbol
            )
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

          # Attenuation limit for noise suppression. Range: 0-100. Only applicable when
          # noise_suppression is 'deepfilternet'.
          sig { returns(T.nilable(Integer)) }
          attr_reader :attenuation_limit

          sig { params(attenuation_limit: Integer).void }
          attr_writer :attenuation_limit

          # AiCoustics enhancement intensity. Range: 0-1. Only applicable when
          # noise_suppression is 'aicoustics'.
          sig { returns(T.nilable(Float)) }
          attr_reader :enhancement_level

          sig { params(enhancement_level: Float).void }
          attr_writer :enhancement_level

          # AiCoustics model family optimized for Voice AI and STT. Only applicable when
          # noise_suppression is 'aicoustics'.
          sig do
            returns(
              T.nilable(
                Telnyx::AI::TelephonySettings::NoiseSuppressionConfig::Family::OrSymbol
              )
            )
          end
          attr_reader :family

          sig do
            params(
              family:
                Telnyx::AI::TelephonySettings::NoiseSuppressionConfig::Family::OrSymbol
            ).void
          end
          attr_writer :family

          # Mode for noise suppression configuration. Only applicable when noise_suppression
          # is 'deepfilternet'.
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

          # AiCoustics model size. 'vf' tracks the latest model release; 'vf_2_0_l' is
          # pinned to version 2.0 for consistent, predictable behavior. Only applicable when
          # noise_suppression is 'aicoustics'.
          sig do
            returns(
              T.nilable(
                Telnyx::AI::TelephonySettings::NoiseSuppressionConfig::Size::OrSymbol
              )
            )
          end
          attr_reader :size

          sig do
            params(
              size:
                Telnyx::AI::TelephonySettings::NoiseSuppressionConfig::Size::OrSymbol
            ).void
          end
          attr_writer :size

          # Configuration for noise suppression. Applicable fields depend on the engine:
          # 'attenuation_limit' and 'mode' only when noise_suppression is 'deepfilternet';
          # 'family', 'size' and 'enhancement_level' only when noise_suppression is
          # 'aicoustics'.
          sig do
            params(
              attenuation_limit: Integer,
              enhancement_level: Float,
              family:
                Telnyx::AI::TelephonySettings::NoiseSuppressionConfig::Family::OrSymbol,
              mode:
                Telnyx::AI::TelephonySettings::NoiseSuppressionConfig::Mode::OrSymbol,
              size:
                Telnyx::AI::TelephonySettings::NoiseSuppressionConfig::Size::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(
            # Attenuation limit for noise suppression. Range: 0-100. Only applicable when
            # noise_suppression is 'deepfilternet'.
            attenuation_limit: nil,
            # AiCoustics enhancement intensity. Range: 0-1. Only applicable when
            # noise_suppression is 'aicoustics'.
            enhancement_level: nil,
            # AiCoustics model family optimized for Voice AI and STT. Only applicable when
            # noise_suppression is 'aicoustics'.
            family: nil,
            # Mode for noise suppression configuration. Only applicable when noise_suppression
            # is 'deepfilternet'.
            mode: nil,
            # AiCoustics model size. 'vf' tracks the latest model release; 'vf_2_0_l' is
            # pinned to version 2.0 for consistent, predictable behavior. Only applicable when
            # noise_suppression is 'aicoustics'.
            size: nil
          )
          end

          sig do
            override.returns(
              {
                attenuation_limit: Integer,
                enhancement_level: Float,
                family:
                  Telnyx::AI::TelephonySettings::NoiseSuppressionConfig::Family::OrSymbol,
                mode:
                  Telnyx::AI::TelephonySettings::NoiseSuppressionConfig::Mode::OrSymbol,
                size:
                  Telnyx::AI::TelephonySettings::NoiseSuppressionConfig::Size::OrSymbol
              }
            )
          end
          def to_hash
          end

          # AiCoustics model family optimized for Voice AI and STT. Only applicable when
          # noise_suppression is 'aicoustics'.
          module Family
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::AI::TelephonySettings::NoiseSuppressionConfig::Family
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            QUAIL =
              T.let(
                :quail,
                Telnyx::AI::TelephonySettings::NoiseSuppressionConfig::Family::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::AI::TelephonySettings::NoiseSuppressionConfig::Family::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # Mode for noise suppression configuration. Only applicable when noise_suppression
          # is 'deepfilternet'.
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

          # AiCoustics model size. 'vf' tracks the latest model release; 'vf_2_0_l' is
          # pinned to version 2.0 for consistent, predictable behavior. Only applicable when
          # noise_suppression is 'aicoustics'.
          module Size
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::AI::TelephonySettings::NoiseSuppressionConfig::Size
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            VF =
              T.let(
                :vf,
                Telnyx::AI::TelephonySettings::NoiseSuppressionConfig::Size::TaggedSymbol
              )
            VF_2_0_L =
              T.let(
                :vf_2_0_l,
                Telnyx::AI::TelephonySettings::NoiseSuppressionConfig::Size::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::AI::TelephonySettings::NoiseSuppressionConfig::Size::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class RecordingSettings < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::AI::TelephonySettings::RecordingSettings,
                Telnyx::Internal::AnyHash
              )
            end

          # The number of channels for the recording. 'single' for mono, 'dual' for stereo.
          sig do
            returns(
              T.nilable(
                Telnyx::AI::TelephonySettings::RecordingSettings::Channels::OrSymbol
              )
            )
          end
          attr_reader :channels

          sig do
            params(
              channels:
                Telnyx::AI::TelephonySettings::RecordingSettings::Channels::OrSymbol
            ).void
          end
          attr_writer :channels

          # Whether call recording is enabled. When set to false, calls will not be recorded
          # regardless of other recording configuration.
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :enabled

          sig { params(enabled: T::Boolean).void }
          attr_writer :enabled

          # The format of the recording file.
          sig do
            returns(
              T.nilable(
                Telnyx::AI::TelephonySettings::RecordingSettings::Format::OrSymbol
              )
            )
          end
          attr_reader :file_format

          sig do
            params(
              file_format:
                Telnyx::AI::TelephonySettings::RecordingSettings::Format::OrSymbol
            ).void
          end
          attr_writer :file_format

          # When enabled, the call recording will stop when the conversation ends (for
          # example, when the assistant hangs up or the call is transferred). When disabled,
          # recording continues until the call itself ends.
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :stop_on_conversation_end

          sig { params(stop_on_conversation_end: T::Boolean).void }
          attr_writer :stop_on_conversation_end

          # Configuration for call recording format and channel settings.
          sig do
            params(
              channels:
                Telnyx::AI::TelephonySettings::RecordingSettings::Channels::OrSymbol,
              enabled: T::Boolean,
              file_format:
                Telnyx::AI::TelephonySettings::RecordingSettings::Format::OrSymbol,
              stop_on_conversation_end: T::Boolean
            ).returns(T.attached_class)
          end
          def self.new(
            # The number of channels for the recording. 'single' for mono, 'dual' for stereo.
            channels: nil,
            # Whether call recording is enabled. When set to false, calls will not be recorded
            # regardless of other recording configuration.
            enabled: nil,
            # The format of the recording file.
            file_format: nil,
            # When enabled, the call recording will stop when the conversation ends (for
            # example, when the assistant hangs up or the call is transferred). When disabled,
            # recording continues until the call itself ends.
            stop_on_conversation_end: nil
          )
          end

          sig do
            override.returns(
              {
                channels:
                  Telnyx::AI::TelephonySettings::RecordingSettings::Channels::OrSymbol,
                enabled: T::Boolean,
                file_format:
                  Telnyx::AI::TelephonySettings::RecordingSettings::Format::OrSymbol,
                stop_on_conversation_end: T::Boolean
              }
            )
          end
          def to_hash
          end

          # The number of channels for the recording. 'single' for mono, 'dual' for stereo.
          module Channels
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::AI::TelephonySettings::RecordingSettings::Channels
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            SINGLE =
              T.let(
                :single,
                Telnyx::AI::TelephonySettings::RecordingSettings::Channels::TaggedSymbol
              )
            DUAL =
              T.let(
                :dual,
                Telnyx::AI::TelephonySettings::RecordingSettings::Channels::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::AI::TelephonySettings::RecordingSettings::Channels::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # The format of the recording file.
          module Format
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::AI::TelephonySettings::RecordingSettings::Format
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            WAV =
              T.let(
                :wav,
                Telnyx::AI::TelephonySettings::RecordingSettings::Format::TaggedSymbol
              )
            MP3 =
              T.let(
                :mp3,
                Telnyx::AI::TelephonySettings::RecordingSettings::Format::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::AI::TelephonySettings::RecordingSettings::Format::TaggedSymbol
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

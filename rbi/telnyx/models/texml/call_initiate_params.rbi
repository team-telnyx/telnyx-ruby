# typed: strong

module Telnyx
  module Models
    module Texml
      class CallInitiateParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(Telnyx::Texml::CallInitiateParams, Telnyx::Internal::AnyHash)
          end

        # The phone number of the party that initiated the call. Phone numbers are
        # formatted with a `+` and country code.
        sig { returns(String) }
        attr_accessor :from

        # The phone number of the called party. Phone numbers are formatted with a `+` and
        # country code.
        sig { returns(String) }
        attr_accessor :to

        # Select whether to perform answering machine detection in the background. By
        # default execution is blocked until Answering Machine Detection is completed.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :async_amd

        sig { params(async_amd: T::Boolean).void }
        attr_writer :async_amd

        # URL destination for Telnyx to send AMD callback events to for the call.
        sig { returns(T.nilable(String)) }
        attr_reader :async_amd_status_callback

        sig { params(async_amd_status_callback: String).void }
        attr_writer :async_amd_status_callback

        # HTTP request type used for `AsyncAmdStatusCallback`. The default value is
        # inherited from TeXML Application setting.
        sig do
          returns(
            T.nilable(
              Telnyx::Texml::CallInitiateParams::AsyncAmdStatusCallbackMethod::OrSymbol
            )
          )
        end
        attr_reader :async_amd_status_callback_method

        sig do
          params(
            async_amd_status_callback_method:
              Telnyx::Texml::CallInitiateParams::AsyncAmdStatusCallbackMethod::OrSymbol
          ).void
        end
        attr_writer :async_amd_status_callback_method

        # To be used as the caller id name (SIP From Display Name) presented to the
        # destination (`To` number). The string should have a maximum of 128 characters,
        # containing only letters, numbers, spaces, and `-_~!.+` special characters. If
        # ommited, the display name will be the same as the number in the `From` field.
        sig { returns(T.nilable(String)) }
        attr_reader :caller_id

        sig { params(caller_id: String).void }
        attr_writer :caller_id

        # Whether to cancel ongoing playback on `greeting ended` detection. Defaults to
        # `true`.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :cancel_playback_on_detect_message_end

        sig { params(cancel_playback_on_detect_message_end: T::Boolean).void }
        attr_writer :cancel_playback_on_detect_message_end

        # Whether to cancel ongoing playback on `machine` detection. Defaults to `true`.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :cancel_playback_on_machine_detection

        sig { params(cancel_playback_on_machine_detection: T::Boolean).void }
        attr_writer :cancel_playback_on_machine_detection

        # Allows you to chose between Premium and Standard detections.
        sig do
          returns(
            T.nilable(
              Telnyx::Texml::CallInitiateParams::DetectionMode::OrSymbol
            )
          )
        end
        attr_reader :detection_mode

        sig do
          params(
            detection_mode:
              Telnyx::Texml::CallInitiateParams::DetectionMode::OrSymbol
          ).void
        end
        attr_writer :detection_mode

        # A failover URL for which Telnyx will retrieve the TeXML call instructions if the
        # `Url` is not responding.
        sig { returns(T.nilable(String)) }
        attr_reader :fallback_url

        sig { params(fallback_url: String).void }
        attr_writer :fallback_url

        # Enables Answering Machine Detection.
        sig do
          returns(
            T.nilable(
              Telnyx::Texml::CallInitiateParams::MachineDetection::OrSymbol
            )
          )
        end
        attr_reader :machine_detection

        sig do
          params(
            machine_detection:
              Telnyx::Texml::CallInitiateParams::MachineDetection::OrSymbol
          ).void
        end
        attr_writer :machine_detection

        # If initial silence duration is greater than this value, consider it a machine.
        # Ignored when `premium` detection is used.
        sig { returns(T.nilable(Integer)) }
        attr_reader :machine_detection_silence_timeout

        sig { params(machine_detection_silence_timeout: Integer).void }
        attr_writer :machine_detection_silence_timeout

        # Silence duration threshold after a greeting message or voice for it be
        # considered human. Ignored when `premium` detection is used.
        sig { returns(T.nilable(Integer)) }
        attr_reader :machine_detection_speech_end_threshold

        sig { params(machine_detection_speech_end_threshold: Integer).void }
        attr_writer :machine_detection_speech_end_threshold

        # Maximum threshold of a human greeting. If greeting longer than this value,
        # considered machine. Ignored when `premium` detection is used.
        sig { returns(T.nilable(Integer)) }
        attr_reader :machine_detection_speech_threshold

        sig { params(machine_detection_speech_threshold: Integer).void }
        attr_writer :machine_detection_speech_threshold

        # Maximum timeout threshold in milliseconds for overall detection.
        sig { returns(T.nilable(Integer)) }
        attr_reader :machine_detection_timeout

        sig { params(machine_detection_timeout: Integer).void }
        attr_writer :machine_detection_timeout

        # The list of comma-separated codecs to be offered on a call.
        sig { returns(T.nilable(String)) }
        attr_reader :preferred_codecs

        sig { params(preferred_codecs: String).void }
        attr_writer :preferred_codecs

        # Whether to record the entire participant's call leg. Defaults to `false`.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :record

        sig { params(record: T::Boolean).void }
        attr_writer :record

        # The number of channels in the final recording. Defaults to `mono`.
        sig do
          returns(
            T.nilable(
              Telnyx::Texml::CallInitiateParams::RecordingChannels::OrSymbol
            )
          )
        end
        attr_reader :recording_channels

        sig do
          params(
            recording_channels:
              Telnyx::Texml::CallInitiateParams::RecordingChannels::OrSymbol
          ).void
        end
        attr_writer :recording_channels

        # The URL the recording callbacks will be sent to.
        sig { returns(T.nilable(String)) }
        attr_reader :recording_status_callback

        sig { params(recording_status_callback: String).void }
        attr_writer :recording_status_callback

        # The changes to the recording's state that should generate a call to
        # `RecoridngStatusCallback`. Can be: `in-progress`, `completed` and `absent`.
        # Separate multiple values with a space. Defaults to `completed`.
        sig { returns(T.nilable(String)) }
        attr_reader :recording_status_callback_event

        sig { params(recording_status_callback_event: String).void }
        attr_writer :recording_status_callback_event

        # HTTP request type used for `RecordingStatusCallback`. Defaults to `POST`.
        sig do
          returns(
            T.nilable(
              Telnyx::Texml::CallInitiateParams::RecordingStatusCallbackMethod::OrSymbol
            )
          )
        end
        attr_reader :recording_status_callback_method

        sig do
          params(
            recording_status_callback_method:
              Telnyx::Texml::CallInitiateParams::RecordingStatusCallbackMethod::OrSymbol
          ).void
        end
        attr_writer :recording_status_callback_method

        # The number of seconds that Telnyx will wait for the recording to be stopped if
        # silence is detected. The timer only starts when the speech is detected. Please
        # note that the transcription is used to detect silence and the related charge
        # will be applied. The minimum value is 0. The default value is 0 (infinite)
        sig { returns(T.nilable(Integer)) }
        attr_reader :recording_timeout

        sig { params(recording_timeout: Integer).void }
        attr_writer :recording_timeout

        # The audio track to record for the call. The default is `both`.
        sig do
          returns(
            T.nilable(
              Telnyx::Texml::CallInitiateParams::RecordingTrack::OrSymbol
            )
          )
        end
        attr_reader :recording_track

        sig do
          params(
            recording_track:
              Telnyx::Texml::CallInitiateParams::RecordingTrack::OrSymbol
          ).void
        end
        attr_writer :recording_track

        # The password to use for SIP authentication.
        sig { returns(T.nilable(String)) }
        attr_reader :sip_auth_password

        sig { params(sip_auth_password: String).void }
        attr_writer :sip_auth_password

        # The username to use for SIP authentication.
        sig { returns(T.nilable(String)) }
        attr_reader :sip_auth_username

        sig { params(sip_auth_username: String).void }
        attr_writer :sip_auth_username

        # URL destination for Telnyx to send status callback events to for the call.
        sig { returns(T.nilable(String)) }
        attr_reader :status_callback

        sig { params(status_callback: String).void }
        attr_writer :status_callback

        # The call events for which Telnyx should send a webhook. Multiple events can be
        # defined when separated by a space.
        sig do
          returns(
            T.nilable(
              Telnyx::Texml::CallInitiateParams::StatusCallbackEvent::OrSymbol
            )
          )
        end
        attr_reader :status_callback_event

        sig do
          params(
            status_callback_event:
              Telnyx::Texml::CallInitiateParams::StatusCallbackEvent::OrSymbol
          ).void
        end
        attr_writer :status_callback_event

        # HTTP request type used for `StatusCallback`.
        sig do
          returns(
            T.nilable(
              Telnyx::Texml::CallInitiateParams::StatusCallbackMethod::OrSymbol
            )
          )
        end
        attr_reader :status_callback_method

        sig do
          params(
            status_callback_method:
              Telnyx::Texml::CallInitiateParams::StatusCallbackMethod::OrSymbol
          ).void
        end
        attr_writer :status_callback_method

        # Whether to trim any leading and trailing silence from the recording. Defaults to
        # `trim-silence`.
        sig do
          returns(T.nilable(Telnyx::Texml::CallInitiateParams::Trim::OrSymbol))
        end
        attr_reader :trim

        sig do
          params(trim: Telnyx::Texml::CallInitiateParams::Trim::OrSymbol).void
        end
        attr_writer :trim

        # The URL from which Telnyx will retrieve the TeXML call instructions.
        sig { returns(T.nilable(String)) }
        attr_reader :url

        sig { params(url: String).void }
        attr_writer :url

        # HTTP request type used for `Url`. The default value is inherited from TeXML
        # Application setting.
        sig do
          returns(
            T.nilable(Telnyx::Texml::CallInitiateParams::URLMethod::OrSymbol)
          )
        end
        attr_reader :url_method

        sig do
          params(
            url_method: Telnyx::Texml::CallInitiateParams::URLMethod::OrSymbol
          ).void
        end
        attr_writer :url_method

        sig do
          params(
            from: String,
            to: String,
            async_amd: T::Boolean,
            async_amd_status_callback: String,
            async_amd_status_callback_method:
              Telnyx::Texml::CallInitiateParams::AsyncAmdStatusCallbackMethod::OrSymbol,
            caller_id: String,
            cancel_playback_on_detect_message_end: T::Boolean,
            cancel_playback_on_machine_detection: T::Boolean,
            detection_mode:
              Telnyx::Texml::CallInitiateParams::DetectionMode::OrSymbol,
            fallback_url: String,
            machine_detection:
              Telnyx::Texml::CallInitiateParams::MachineDetection::OrSymbol,
            machine_detection_silence_timeout: Integer,
            machine_detection_speech_end_threshold: Integer,
            machine_detection_speech_threshold: Integer,
            machine_detection_timeout: Integer,
            preferred_codecs: String,
            record: T::Boolean,
            recording_channels:
              Telnyx::Texml::CallInitiateParams::RecordingChannels::OrSymbol,
            recording_status_callback: String,
            recording_status_callback_event: String,
            recording_status_callback_method:
              Telnyx::Texml::CallInitiateParams::RecordingStatusCallbackMethod::OrSymbol,
            recording_timeout: Integer,
            recording_track:
              Telnyx::Texml::CallInitiateParams::RecordingTrack::OrSymbol,
            sip_auth_password: String,
            sip_auth_username: String,
            status_callback: String,
            status_callback_event:
              Telnyx::Texml::CallInitiateParams::StatusCallbackEvent::OrSymbol,
            status_callback_method:
              Telnyx::Texml::CallInitiateParams::StatusCallbackMethod::OrSymbol,
            trim: Telnyx::Texml::CallInitiateParams::Trim::OrSymbol,
            url: String,
            url_method: Telnyx::Texml::CallInitiateParams::URLMethod::OrSymbol,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # The phone number of the party that initiated the call. Phone numbers are
          # formatted with a `+` and country code.
          from:,
          # The phone number of the called party. Phone numbers are formatted with a `+` and
          # country code.
          to:,
          # Select whether to perform answering machine detection in the background. By
          # default execution is blocked until Answering Machine Detection is completed.
          async_amd: nil,
          # URL destination for Telnyx to send AMD callback events to for the call.
          async_amd_status_callback: nil,
          # HTTP request type used for `AsyncAmdStatusCallback`. The default value is
          # inherited from TeXML Application setting.
          async_amd_status_callback_method: nil,
          # To be used as the caller id name (SIP From Display Name) presented to the
          # destination (`To` number). The string should have a maximum of 128 characters,
          # containing only letters, numbers, spaces, and `-_~!.+` special characters. If
          # ommited, the display name will be the same as the number in the `From` field.
          caller_id: nil,
          # Whether to cancel ongoing playback on `greeting ended` detection. Defaults to
          # `true`.
          cancel_playback_on_detect_message_end: nil,
          # Whether to cancel ongoing playback on `machine` detection. Defaults to `true`.
          cancel_playback_on_machine_detection: nil,
          # Allows you to chose between Premium and Standard detections.
          detection_mode: nil,
          # A failover URL for which Telnyx will retrieve the TeXML call instructions if the
          # `Url` is not responding.
          fallback_url: nil,
          # Enables Answering Machine Detection.
          machine_detection: nil,
          # If initial silence duration is greater than this value, consider it a machine.
          # Ignored when `premium` detection is used.
          machine_detection_silence_timeout: nil,
          # Silence duration threshold after a greeting message or voice for it be
          # considered human. Ignored when `premium` detection is used.
          machine_detection_speech_end_threshold: nil,
          # Maximum threshold of a human greeting. If greeting longer than this value,
          # considered machine. Ignored when `premium` detection is used.
          machine_detection_speech_threshold: nil,
          # Maximum timeout threshold in milliseconds for overall detection.
          machine_detection_timeout: nil,
          # The list of comma-separated codecs to be offered on a call.
          preferred_codecs: nil,
          # Whether to record the entire participant's call leg. Defaults to `false`.
          record: nil,
          # The number of channels in the final recording. Defaults to `mono`.
          recording_channels: nil,
          # The URL the recording callbacks will be sent to.
          recording_status_callback: nil,
          # The changes to the recording's state that should generate a call to
          # `RecoridngStatusCallback`. Can be: `in-progress`, `completed` and `absent`.
          # Separate multiple values with a space. Defaults to `completed`.
          recording_status_callback_event: nil,
          # HTTP request type used for `RecordingStatusCallback`. Defaults to `POST`.
          recording_status_callback_method: nil,
          # The number of seconds that Telnyx will wait for the recording to be stopped if
          # silence is detected. The timer only starts when the speech is detected. Please
          # note that the transcription is used to detect silence and the related charge
          # will be applied. The minimum value is 0. The default value is 0 (infinite)
          recording_timeout: nil,
          # The audio track to record for the call. The default is `both`.
          recording_track: nil,
          # The password to use for SIP authentication.
          sip_auth_password: nil,
          # The username to use for SIP authentication.
          sip_auth_username: nil,
          # URL destination for Telnyx to send status callback events to for the call.
          status_callback: nil,
          # The call events for which Telnyx should send a webhook. Multiple events can be
          # defined when separated by a space.
          status_callback_event: nil,
          # HTTP request type used for `StatusCallback`.
          status_callback_method: nil,
          # Whether to trim any leading and trailing silence from the recording. Defaults to
          # `trim-silence`.
          trim: nil,
          # The URL from which Telnyx will retrieve the TeXML call instructions.
          url: nil,
          # HTTP request type used for `Url`. The default value is inherited from TeXML
          # Application setting.
          url_method: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              from: String,
              to: String,
              async_amd: T::Boolean,
              async_amd_status_callback: String,
              async_amd_status_callback_method:
                Telnyx::Texml::CallInitiateParams::AsyncAmdStatusCallbackMethod::OrSymbol,
              caller_id: String,
              cancel_playback_on_detect_message_end: T::Boolean,
              cancel_playback_on_machine_detection: T::Boolean,
              detection_mode:
                Telnyx::Texml::CallInitiateParams::DetectionMode::OrSymbol,
              fallback_url: String,
              machine_detection:
                Telnyx::Texml::CallInitiateParams::MachineDetection::OrSymbol,
              machine_detection_silence_timeout: Integer,
              machine_detection_speech_end_threshold: Integer,
              machine_detection_speech_threshold: Integer,
              machine_detection_timeout: Integer,
              preferred_codecs: String,
              record: T::Boolean,
              recording_channels:
                Telnyx::Texml::CallInitiateParams::RecordingChannels::OrSymbol,
              recording_status_callback: String,
              recording_status_callback_event: String,
              recording_status_callback_method:
                Telnyx::Texml::CallInitiateParams::RecordingStatusCallbackMethod::OrSymbol,
              recording_timeout: Integer,
              recording_track:
                Telnyx::Texml::CallInitiateParams::RecordingTrack::OrSymbol,
              sip_auth_password: String,
              sip_auth_username: String,
              status_callback: String,
              status_callback_event:
                Telnyx::Texml::CallInitiateParams::StatusCallbackEvent::OrSymbol,
              status_callback_method:
                Telnyx::Texml::CallInitiateParams::StatusCallbackMethod::OrSymbol,
              trim: Telnyx::Texml::CallInitiateParams::Trim::OrSymbol,
              url: String,
              url_method:
                Telnyx::Texml::CallInitiateParams::URLMethod::OrSymbol,
              request_options: Telnyx::RequestOptions
            }
          )
        end
        def to_hash
        end

        # HTTP request type used for `AsyncAmdStatusCallback`. The default value is
        # inherited from TeXML Application setting.
        module AsyncAmdStatusCallbackMethod
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::Texml::CallInitiateParams::AsyncAmdStatusCallbackMethod
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          GET =
            T.let(
              :GET,
              Telnyx::Texml::CallInitiateParams::AsyncAmdStatusCallbackMethod::TaggedSymbol
            )
          POST =
            T.let(
              :POST,
              Telnyx::Texml::CallInitiateParams::AsyncAmdStatusCallbackMethod::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Texml::CallInitiateParams::AsyncAmdStatusCallbackMethod::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Allows you to chose between Premium and Standard detections.
        module DetectionMode
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::Texml::CallInitiateParams::DetectionMode)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PREMIUM =
            T.let(
              :Premium,
              Telnyx::Texml::CallInitiateParams::DetectionMode::TaggedSymbol
            )
          REGULAR =
            T.let(
              :Regular,
              Telnyx::Texml::CallInitiateParams::DetectionMode::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Texml::CallInitiateParams::DetectionMode::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Enables Answering Machine Detection.
        module MachineDetection
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::Texml::CallInitiateParams::MachineDetection)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ENABLE =
            T.let(
              :Enable,
              Telnyx::Texml::CallInitiateParams::MachineDetection::TaggedSymbol
            )
          DISABLE =
            T.let(
              :Disable,
              Telnyx::Texml::CallInitiateParams::MachineDetection::TaggedSymbol
            )
          DETECT_MESSAGE_END =
            T.let(
              :DetectMessageEnd,
              Telnyx::Texml::CallInitiateParams::MachineDetection::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Texml::CallInitiateParams::MachineDetection::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # The number of channels in the final recording. Defaults to `mono`.
        module RecordingChannels
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::Texml::CallInitiateParams::RecordingChannels
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          MONO =
            T.let(
              :mono,
              Telnyx::Texml::CallInitiateParams::RecordingChannels::TaggedSymbol
            )
          DUAL =
            T.let(
              :dual,
              Telnyx::Texml::CallInitiateParams::RecordingChannels::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Texml::CallInitiateParams::RecordingChannels::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # HTTP request type used for `RecordingStatusCallback`. Defaults to `POST`.
        module RecordingStatusCallbackMethod
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::Texml::CallInitiateParams::RecordingStatusCallbackMethod
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          GET =
            T.let(
              :GET,
              Telnyx::Texml::CallInitiateParams::RecordingStatusCallbackMethod::TaggedSymbol
            )
          POST =
            T.let(
              :POST,
              Telnyx::Texml::CallInitiateParams::RecordingStatusCallbackMethod::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Texml::CallInitiateParams::RecordingStatusCallbackMethod::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # The audio track to record for the call. The default is `both`.
        module RecordingTrack
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::Texml::CallInitiateParams::RecordingTrack)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          INBOUND =
            T.let(
              :inbound,
              Telnyx::Texml::CallInitiateParams::RecordingTrack::TaggedSymbol
            )
          OUTBOUND =
            T.let(
              :outbound,
              Telnyx::Texml::CallInitiateParams::RecordingTrack::TaggedSymbol
            )
          BOTH =
            T.let(
              :both,
              Telnyx::Texml::CallInitiateParams::RecordingTrack::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Texml::CallInitiateParams::RecordingTrack::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # The call events for which Telnyx should send a webhook. Multiple events can be
        # defined when separated by a space.
        module StatusCallbackEvent
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::Texml::CallInitiateParams::StatusCallbackEvent
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          INITIATED =
            T.let(
              :initiated,
              Telnyx::Texml::CallInitiateParams::StatusCallbackEvent::TaggedSymbol
            )
          RINGING =
            T.let(
              :ringing,
              Telnyx::Texml::CallInitiateParams::StatusCallbackEvent::TaggedSymbol
            )
          ANSWERED =
            T.let(
              :answered,
              Telnyx::Texml::CallInitiateParams::StatusCallbackEvent::TaggedSymbol
            )
          COMPLETED =
            T.let(
              :completed,
              Telnyx::Texml::CallInitiateParams::StatusCallbackEvent::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Texml::CallInitiateParams::StatusCallbackEvent::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # HTTP request type used for `StatusCallback`.
        module StatusCallbackMethod
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::Texml::CallInitiateParams::StatusCallbackMethod
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          GET =
            T.let(
              :GET,
              Telnyx::Texml::CallInitiateParams::StatusCallbackMethod::TaggedSymbol
            )
          POST =
            T.let(
              :POST,
              Telnyx::Texml::CallInitiateParams::StatusCallbackMethod::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Texml::CallInitiateParams::StatusCallbackMethod::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Whether to trim any leading and trailing silence from the recording. Defaults to
        # `trim-silence`.
        module Trim
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::Texml::CallInitiateParams::Trim)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          TRIM_SILENCE =
            T.let(
              :"trim-silence",
              Telnyx::Texml::CallInitiateParams::Trim::TaggedSymbol
            )
          DO_NOT_TRIM =
            T.let(
              :"do-not-trim",
              Telnyx::Texml::CallInitiateParams::Trim::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[Telnyx::Texml::CallInitiateParams::Trim::TaggedSymbol]
            )
          end
          def self.values
          end
        end

        # HTTP request type used for `Url`. The default value is inherited from TeXML
        # Application setting.
        module URLMethod
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::Texml::CallInitiateParams::URLMethod)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          GET =
            T.let(
              :GET,
              Telnyx::Texml::CallInitiateParams::URLMethod::TaggedSymbol
            )
          POST =
            T.let(
              :POST,
              Telnyx::Texml::CallInitiateParams::URLMethod::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Texml::CallInitiateParams::URLMethod::TaggedSymbol
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

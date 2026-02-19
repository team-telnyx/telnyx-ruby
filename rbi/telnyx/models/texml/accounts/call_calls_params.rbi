# typed: strong

module Telnyx
  module Models
    module Texml
      module Accounts
        class CallCallsParams < Telnyx::Internal::Type::BaseModel
          extend Telnyx::Internal::Type::RequestParameters::Converter
          include Telnyx::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Texml::Accounts::CallCallsParams,
                Telnyx::Internal::AnyHash
              )
            end

          # The ID of the TeXML Application.
          sig { returns(String) }
          attr_accessor :application_sid

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
                Telnyx::Texml::Accounts::CallCallsParams::AsyncAmdStatusCallbackMethod::OrSymbol
              )
            )
          end
          attr_reader :async_amd_status_callback_method

          sig do
            params(
              async_amd_status_callback_method:
                Telnyx::Texml::Accounts::CallCallsParams::AsyncAmdStatusCallbackMethod::OrSymbol
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

          # Custom HTTP headers to be sent with the call. Each header should be an object
          # with 'name' and 'value' properties.
          sig do
            returns(
              T.nilable(
                T::Array[Telnyx::Texml::Accounts::CallCallsParams::CustomHeader]
              )
            )
          end
          attr_reader :custom_headers

          sig do
            params(
              custom_headers:
                T::Array[
                  Telnyx::Texml::Accounts::CallCallsParams::CustomHeader::OrHash
                ]
            ).void
          end
          attr_writer :custom_headers

          # Allows you to chose between Premium and Standard detections.
          sig do
            returns(
              T.nilable(
                Telnyx::Texml::Accounts::CallCallsParams::DetectionMode::OrSymbol
              )
            )
          end
          attr_reader :detection_mode

          sig do
            params(
              detection_mode:
                Telnyx::Texml::Accounts::CallCallsParams::DetectionMode::OrSymbol
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
                Telnyx::Texml::Accounts::CallCallsParams::MachineDetection::OrSymbol
              )
            )
          end
          attr_reader :machine_detection

          sig do
            params(
              machine_detection:
                Telnyx::Texml::Accounts::CallCallsParams::MachineDetection::OrSymbol
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
                Telnyx::Texml::Accounts::CallCallsParams::RecordingChannels::OrSymbol
              )
            )
          end
          attr_reader :recording_channels

          sig do
            params(
              recording_channels:
                Telnyx::Texml::Accounts::CallCallsParams::RecordingChannels::OrSymbol
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
                Telnyx::Texml::Accounts::CallCallsParams::RecordingStatusCallbackMethod::OrSymbol
              )
            )
          end
          attr_reader :recording_status_callback_method

          sig do
            params(
              recording_status_callback_method:
                Telnyx::Texml::Accounts::CallCallsParams::RecordingStatusCallbackMethod::OrSymbol
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
                Telnyx::Texml::Accounts::CallCallsParams::RecordingTrack::OrSymbol
              )
            )
          end
          attr_reader :recording_track

          sig do
            params(
              recording_track:
                Telnyx::Texml::Accounts::CallCallsParams::RecordingTrack::OrSymbol
            ).void
          end
          attr_writer :recording_track

          # Whether to send RecordingUrl in webhooks.
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :send_recording_url

          sig { params(send_recording_url: T::Boolean).void }
          attr_writer :send_recording_url

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

          # Defines the SIP region to be used for the call.
          sig do
            returns(
              T.nilable(
                Telnyx::Texml::Accounts::CallCallsParams::SipRegion::OrSymbol
              )
            )
          end
          attr_reader :sip_region

          sig do
            params(
              sip_region:
                Telnyx::Texml::Accounts::CallCallsParams::SipRegion::OrSymbol
            ).void
          end
          attr_writer :sip_region

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
                Telnyx::Texml::Accounts::CallCallsParams::StatusCallbackEvent::OrSymbol
              )
            )
          end
          attr_reader :status_callback_event

          sig do
            params(
              status_callback_event:
                Telnyx::Texml::Accounts::CallCallsParams::StatusCallbackEvent::OrSymbol
            ).void
          end
          attr_writer :status_callback_event

          # HTTP request type used for `StatusCallback`.
          sig do
            returns(
              T.nilable(
                Telnyx::Texml::Accounts::CallCallsParams::StatusCallbackMethod::OrSymbol
              )
            )
          end
          attr_reader :status_callback_method

          sig do
            params(
              status_callback_method:
                Telnyx::Texml::Accounts::CallCallsParams::StatusCallbackMethod::OrSymbol
            ).void
          end
          attr_writer :status_callback_method

          # The call control ID of the existing call to supervise. When provided, the
          # created leg will be added to the specified call in supervising mode. Status
          # callbacks and action callbacks will NOT be sent for the supervising leg.
          sig { returns(T.nilable(String)) }
          attr_reader :supervise_call_sid

          sig { params(supervise_call_sid: String).void }
          attr_writer :supervise_call_sid

          # The supervising role for the new leg. Determines the audio behavior: barge (hear
          # both sides), whisper (only hear supervisor), monitor (hear both sides but
          # supervisor muted). Default: barge
          sig do
            returns(
              T.nilable(
                Telnyx::Texml::Accounts::CallCallsParams::SupervisingRole::OrSymbol
              )
            )
          end
          attr_reader :supervising_role

          sig do
            params(
              supervising_role:
                Telnyx::Texml::Accounts::CallCallsParams::SupervisingRole::OrSymbol
            ).void
          end
          attr_writer :supervising_role

          # TeXML to be used as instructions for the call. If provided, the call will
          # execute these instructions instead of fetching from the Url.
          sig { returns(T.nilable(String)) }
          attr_reader :texml

          sig { params(texml: String).void }
          attr_writer :texml

          # The maximum duration of the call in seconds. The minimum value is 30 and the
          # maximum value is 14400 (4 hours). Default is 14400 seconds.
          sig { returns(T.nilable(Integer)) }
          attr_reader :time_limit

          sig { params(time_limit: Integer).void }
          attr_writer :time_limit

          # The number of seconds to wait for the called party to answer the call before the
          # call is canceled. The minimum value is 5 and the maximum value is 120. Default
          # is 30 seconds.
          sig { returns(T.nilable(Integer)) }
          attr_reader :timeout

          sig { params(timeout: Integer).void }
          attr_writer :timeout

          # Whether to trim any leading and trailing silence from the recording. Defaults to
          # `trim-silence`.
          sig do
            returns(
              T.nilable(
                Telnyx::Texml::Accounts::CallCallsParams::Trim::OrSymbol
              )
            )
          end
          attr_reader :trim

          sig do
            params(
              trim: Telnyx::Texml::Accounts::CallCallsParams::Trim::OrSymbol
            ).void
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
              T.nilable(
                Telnyx::Texml::Accounts::CallCallsParams::URLMethod::OrSymbol
              )
            )
          end
          attr_reader :url_method

          sig do
            params(
              url_method:
                Telnyx::Texml::Accounts::CallCallsParams::URLMethod::OrSymbol
            ).void
          end
          attr_writer :url_method

          sig do
            params(
              application_sid: String,
              from: String,
              to: String,
              async_amd: T::Boolean,
              async_amd_status_callback: String,
              async_amd_status_callback_method:
                Telnyx::Texml::Accounts::CallCallsParams::AsyncAmdStatusCallbackMethod::OrSymbol,
              caller_id: String,
              cancel_playback_on_detect_message_end: T::Boolean,
              cancel_playback_on_machine_detection: T::Boolean,
              custom_headers:
                T::Array[
                  Telnyx::Texml::Accounts::CallCallsParams::CustomHeader::OrHash
                ],
              detection_mode:
                Telnyx::Texml::Accounts::CallCallsParams::DetectionMode::OrSymbol,
              fallback_url: String,
              machine_detection:
                Telnyx::Texml::Accounts::CallCallsParams::MachineDetection::OrSymbol,
              machine_detection_silence_timeout: Integer,
              machine_detection_speech_end_threshold: Integer,
              machine_detection_speech_threshold: Integer,
              machine_detection_timeout: Integer,
              preferred_codecs: String,
              record: T::Boolean,
              recording_channels:
                Telnyx::Texml::Accounts::CallCallsParams::RecordingChannels::OrSymbol,
              recording_status_callback: String,
              recording_status_callback_event: String,
              recording_status_callback_method:
                Telnyx::Texml::Accounts::CallCallsParams::RecordingStatusCallbackMethod::OrSymbol,
              recording_timeout: Integer,
              recording_track:
                Telnyx::Texml::Accounts::CallCallsParams::RecordingTrack::OrSymbol,
              send_recording_url: T::Boolean,
              sip_auth_password: String,
              sip_auth_username: String,
              sip_region:
                Telnyx::Texml::Accounts::CallCallsParams::SipRegion::OrSymbol,
              status_callback: String,
              status_callback_event:
                Telnyx::Texml::Accounts::CallCallsParams::StatusCallbackEvent::OrSymbol,
              status_callback_method:
                Telnyx::Texml::Accounts::CallCallsParams::StatusCallbackMethod::OrSymbol,
              supervise_call_sid: String,
              supervising_role:
                Telnyx::Texml::Accounts::CallCallsParams::SupervisingRole::OrSymbol,
              texml: String,
              time_limit: Integer,
              timeout: Integer,
              trim: Telnyx::Texml::Accounts::CallCallsParams::Trim::OrSymbol,
              url: String,
              url_method:
                Telnyx::Texml::Accounts::CallCallsParams::URLMethod::OrSymbol,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # The ID of the TeXML Application.
            application_sid:,
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
            # Custom HTTP headers to be sent with the call. Each header should be an object
            # with 'name' and 'value' properties.
            custom_headers: nil,
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
            # Whether to send RecordingUrl in webhooks.
            send_recording_url: nil,
            # The password to use for SIP authentication.
            sip_auth_password: nil,
            # The username to use for SIP authentication.
            sip_auth_username: nil,
            # Defines the SIP region to be used for the call.
            sip_region: nil,
            # URL destination for Telnyx to send status callback events to for the call.
            status_callback: nil,
            # The call events for which Telnyx should send a webhook. Multiple events can be
            # defined when separated by a space.
            status_callback_event: nil,
            # HTTP request type used for `StatusCallback`.
            status_callback_method: nil,
            # The call control ID of the existing call to supervise. When provided, the
            # created leg will be added to the specified call in supervising mode. Status
            # callbacks and action callbacks will NOT be sent for the supervising leg.
            supervise_call_sid: nil,
            # The supervising role for the new leg. Determines the audio behavior: barge (hear
            # both sides), whisper (only hear supervisor), monitor (hear both sides but
            # supervisor muted). Default: barge
            supervising_role: nil,
            # TeXML to be used as instructions for the call. If provided, the call will
            # execute these instructions instead of fetching from the Url.
            texml: nil,
            # The maximum duration of the call in seconds. The minimum value is 30 and the
            # maximum value is 14400 (4 hours). Default is 14400 seconds.
            time_limit: nil,
            # The number of seconds to wait for the called party to answer the call before the
            # call is canceled. The minimum value is 5 and the maximum value is 120. Default
            # is 30 seconds.
            timeout: nil,
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
                application_sid: String,
                from: String,
                to: String,
                async_amd: T::Boolean,
                async_amd_status_callback: String,
                async_amd_status_callback_method:
                  Telnyx::Texml::Accounts::CallCallsParams::AsyncAmdStatusCallbackMethod::OrSymbol,
                caller_id: String,
                cancel_playback_on_detect_message_end: T::Boolean,
                cancel_playback_on_machine_detection: T::Boolean,
                custom_headers:
                  T::Array[
                    Telnyx::Texml::Accounts::CallCallsParams::CustomHeader
                  ],
                detection_mode:
                  Telnyx::Texml::Accounts::CallCallsParams::DetectionMode::OrSymbol,
                fallback_url: String,
                machine_detection:
                  Telnyx::Texml::Accounts::CallCallsParams::MachineDetection::OrSymbol,
                machine_detection_silence_timeout: Integer,
                machine_detection_speech_end_threshold: Integer,
                machine_detection_speech_threshold: Integer,
                machine_detection_timeout: Integer,
                preferred_codecs: String,
                record: T::Boolean,
                recording_channels:
                  Telnyx::Texml::Accounts::CallCallsParams::RecordingChannels::OrSymbol,
                recording_status_callback: String,
                recording_status_callback_event: String,
                recording_status_callback_method:
                  Telnyx::Texml::Accounts::CallCallsParams::RecordingStatusCallbackMethod::OrSymbol,
                recording_timeout: Integer,
                recording_track:
                  Telnyx::Texml::Accounts::CallCallsParams::RecordingTrack::OrSymbol,
                send_recording_url: T::Boolean,
                sip_auth_password: String,
                sip_auth_username: String,
                sip_region:
                  Telnyx::Texml::Accounts::CallCallsParams::SipRegion::OrSymbol,
                status_callback: String,
                status_callback_event:
                  Telnyx::Texml::Accounts::CallCallsParams::StatusCallbackEvent::OrSymbol,
                status_callback_method:
                  Telnyx::Texml::Accounts::CallCallsParams::StatusCallbackMethod::OrSymbol,
                supervise_call_sid: String,
                supervising_role:
                  Telnyx::Texml::Accounts::CallCallsParams::SupervisingRole::OrSymbol,
                texml: String,
                time_limit: Integer,
                timeout: Integer,
                trim: Telnyx::Texml::Accounts::CallCallsParams::Trim::OrSymbol,
                url: String,
                url_method:
                  Telnyx::Texml::Accounts::CallCallsParams::URLMethod::OrSymbol,
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
                  Telnyx::Texml::Accounts::CallCallsParams::AsyncAmdStatusCallbackMethod
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            GET =
              T.let(
                :GET,
                Telnyx::Texml::Accounts::CallCallsParams::AsyncAmdStatusCallbackMethod::TaggedSymbol
              )
            POST =
              T.let(
                :POST,
                Telnyx::Texml::Accounts::CallCallsParams::AsyncAmdStatusCallbackMethod::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::Texml::Accounts::CallCallsParams::AsyncAmdStatusCallbackMethod::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          class CustomHeader < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Texml::Accounts::CallCallsParams::CustomHeader,
                  Telnyx::Internal::AnyHash
                )
              end

            # The name of the custom header
            sig { returns(String) }
            attr_accessor :name

            # The value of the custom header
            sig { returns(String) }
            attr_accessor :value

            sig do
              params(name: String, value: String).returns(T.attached_class)
            end
            def self.new(
              # The name of the custom header
              name:,
              # The value of the custom header
              value:
            )
            end

            sig { override.returns({ name: String, value: String }) }
            def to_hash
            end
          end

          # Allows you to chose between Premium and Standard detections.
          module DetectionMode
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::Texml::Accounts::CallCallsParams::DetectionMode
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            PREMIUM =
              T.let(
                :Premium,
                Telnyx::Texml::Accounts::CallCallsParams::DetectionMode::TaggedSymbol
              )
            REGULAR =
              T.let(
                :Regular,
                Telnyx::Texml::Accounts::CallCallsParams::DetectionMode::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::Texml::Accounts::CallCallsParams::DetectionMode::TaggedSymbol
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
                T.all(
                  Symbol,
                  Telnyx::Texml::Accounts::CallCallsParams::MachineDetection
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            ENABLE =
              T.let(
                :Enable,
                Telnyx::Texml::Accounts::CallCallsParams::MachineDetection::TaggedSymbol
              )
            DISABLE =
              T.let(
                :Disable,
                Telnyx::Texml::Accounts::CallCallsParams::MachineDetection::TaggedSymbol
              )
            DETECT_MESSAGE_END =
              T.let(
                :DetectMessageEnd,
                Telnyx::Texml::Accounts::CallCallsParams::MachineDetection::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::Texml::Accounts::CallCallsParams::MachineDetection::TaggedSymbol
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
                  Telnyx::Texml::Accounts::CallCallsParams::RecordingChannels
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            MONO =
              T.let(
                :mono,
                Telnyx::Texml::Accounts::CallCallsParams::RecordingChannels::TaggedSymbol
              )
            DUAL =
              T.let(
                :dual,
                Telnyx::Texml::Accounts::CallCallsParams::RecordingChannels::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::Texml::Accounts::CallCallsParams::RecordingChannels::TaggedSymbol
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
                  Telnyx::Texml::Accounts::CallCallsParams::RecordingStatusCallbackMethod
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            GET =
              T.let(
                :GET,
                Telnyx::Texml::Accounts::CallCallsParams::RecordingStatusCallbackMethod::TaggedSymbol
              )
            POST =
              T.let(
                :POST,
                Telnyx::Texml::Accounts::CallCallsParams::RecordingStatusCallbackMethod::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::Texml::Accounts::CallCallsParams::RecordingStatusCallbackMethod::TaggedSymbol
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
                T.all(
                  Symbol,
                  Telnyx::Texml::Accounts::CallCallsParams::RecordingTrack
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            INBOUND =
              T.let(
                :inbound,
                Telnyx::Texml::Accounts::CallCallsParams::RecordingTrack::TaggedSymbol
              )
            OUTBOUND =
              T.let(
                :outbound,
                Telnyx::Texml::Accounts::CallCallsParams::RecordingTrack::TaggedSymbol
              )
            BOTH =
              T.let(
                :both,
                Telnyx::Texml::Accounts::CallCallsParams::RecordingTrack::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::Texml::Accounts::CallCallsParams::RecordingTrack::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # Defines the SIP region to be used for the call.
          module SipRegion
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::Texml::Accounts::CallCallsParams::SipRegion
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            US =
              T.let(
                :US,
                Telnyx::Texml::Accounts::CallCallsParams::SipRegion::TaggedSymbol
              )
            EUROPE =
              T.let(
                :Europe,
                Telnyx::Texml::Accounts::CallCallsParams::SipRegion::TaggedSymbol
              )
            CANADA =
              T.let(
                :Canada,
                Telnyx::Texml::Accounts::CallCallsParams::SipRegion::TaggedSymbol
              )
            AUSTRALIA =
              T.let(
                :Australia,
                Telnyx::Texml::Accounts::CallCallsParams::SipRegion::TaggedSymbol
              )
            MIDDLE_EAST =
              T.let(
                :"Middle East",
                Telnyx::Texml::Accounts::CallCallsParams::SipRegion::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::Texml::Accounts::CallCallsParams::SipRegion::TaggedSymbol
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
                  Telnyx::Texml::Accounts::CallCallsParams::StatusCallbackEvent
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            INITIATED =
              T.let(
                :initiated,
                Telnyx::Texml::Accounts::CallCallsParams::StatusCallbackEvent::TaggedSymbol
              )
            RINGING =
              T.let(
                :ringing,
                Telnyx::Texml::Accounts::CallCallsParams::StatusCallbackEvent::TaggedSymbol
              )
            ANSWERED =
              T.let(
                :answered,
                Telnyx::Texml::Accounts::CallCallsParams::StatusCallbackEvent::TaggedSymbol
              )
            COMPLETED =
              T.let(
                :completed,
                Telnyx::Texml::Accounts::CallCallsParams::StatusCallbackEvent::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::Texml::Accounts::CallCallsParams::StatusCallbackEvent::TaggedSymbol
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
                  Telnyx::Texml::Accounts::CallCallsParams::StatusCallbackMethod
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            GET =
              T.let(
                :GET,
                Telnyx::Texml::Accounts::CallCallsParams::StatusCallbackMethod::TaggedSymbol
              )
            POST =
              T.let(
                :POST,
                Telnyx::Texml::Accounts::CallCallsParams::StatusCallbackMethod::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::Texml::Accounts::CallCallsParams::StatusCallbackMethod::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # The supervising role for the new leg. Determines the audio behavior: barge (hear
          # both sides), whisper (only hear supervisor), monitor (hear both sides but
          # supervisor muted). Default: barge
          module SupervisingRole
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::Texml::Accounts::CallCallsParams::SupervisingRole
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            BARGE =
              T.let(
                :barge,
                Telnyx::Texml::Accounts::CallCallsParams::SupervisingRole::TaggedSymbol
              )
            WHISPER =
              T.let(
                :whisper,
                Telnyx::Texml::Accounts::CallCallsParams::SupervisingRole::TaggedSymbol
              )
            MONITOR =
              T.let(
                :monitor,
                Telnyx::Texml::Accounts::CallCallsParams::SupervisingRole::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::Texml::Accounts::CallCallsParams::SupervisingRole::TaggedSymbol
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
                T.all(Symbol, Telnyx::Texml::Accounts::CallCallsParams::Trim)
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            TRIM_SILENCE =
              T.let(
                :"trim-silence",
                Telnyx::Texml::Accounts::CallCallsParams::Trim::TaggedSymbol
              )
            DO_NOT_TRIM =
              T.let(
                :"do-not-trim",
                Telnyx::Texml::Accounts::CallCallsParams::Trim::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::Texml::Accounts::CallCallsParams::Trim::TaggedSymbol
                ]
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
                T.all(
                  Symbol,
                  Telnyx::Texml::Accounts::CallCallsParams::URLMethod
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            GET =
              T.let(
                :GET,
                Telnyx::Texml::Accounts::CallCallsParams::URLMethod::TaggedSymbol
              )
            POST =
              T.let(
                :POST,
                Telnyx::Texml::Accounts::CallCallsParams::URLMethod::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::Texml::Accounts::CallCallsParams::URLMethod::TaggedSymbol
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

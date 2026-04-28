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

          sig { returns(String) }
          attr_accessor :account_sid

          sig do
            returns(
              T.any(
                Telnyx::Texml::Accounts::CallCallsParams::Params::WithURL,
                Telnyx::Texml::Accounts::CallCallsParams::Params::WithTeXml,
                Telnyx::Texml::Accounts::CallCallsParams::Params::ApplicationDefault
              )
            )
          end
          attr_accessor :params

          sig do
            params(
              account_sid: String,
              params:
                T.any(
                  Telnyx::Texml::Accounts::CallCallsParams::Params::WithURL::OrHash,
                  Telnyx::Texml::Accounts::CallCallsParams::Params::WithTeXml::OrHash,
                  Telnyx::Texml::Accounts::CallCallsParams::Params::ApplicationDefault::OrHash
                ),
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(account_sid:, params:, request_options: {})
          end

          sig do
            override.returns(
              {
                account_sid: String,
                params:
                  T.any(
                    Telnyx::Texml::Accounts::CallCallsParams::Params::WithURL,
                    Telnyx::Texml::Accounts::CallCallsParams::Params::WithTeXml,
                    Telnyx::Texml::Accounts::CallCallsParams::Params::ApplicationDefault
                  ),
                request_options: Telnyx::RequestOptions
              }
            )
          end
          def to_hash
          end

          module Params
            extend Telnyx::Internal::Type::Union

            Variants =
              T.type_alias do
                T.any(
                  Telnyx::Texml::Accounts::CallCallsParams::Params::WithURL,
                  Telnyx::Texml::Accounts::CallCallsParams::Params::WithTeXml,
                  Telnyx::Texml::Accounts::CallCallsParams::Params::ApplicationDefault
                )
              end

            class WithURL < Telnyx::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Telnyx::Texml::Accounts::CallCallsParams::Params::WithURL,
                    Telnyx::Internal::AnyHash
                  )
                end

              # The URL from which Telnyx will retrieve the TeXML call instructions.
              sig { returns(String) }
              attr_accessor :url

              # The ID of the TeXML Application.
              sig { returns(T.nilable(String)) }
              attr_reader :application_sid

              sig { params(application_sid: String).void }
              attr_writer :application_sid

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
                    Telnyx::Texml::Accounts::CallCallsParams::Params::WithURL::AsyncAmdStatusCallbackMethod::OrSymbol
                  )
                )
              end
              attr_reader :async_amd_status_callback_method

              sig do
                params(
                  async_amd_status_callback_method:
                    Telnyx::Texml::Accounts::CallCallsParams::Params::WithURL::AsyncAmdStatusCallbackMethod::OrSymbol
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

              sig do
                params(cancel_playback_on_detect_message_end: T::Boolean).void
              end
              attr_writer :cancel_playback_on_detect_message_end

              # Whether to cancel ongoing playback on `machine` detection. Defaults to `true`.
              sig { returns(T.nilable(T::Boolean)) }
              attr_reader :cancel_playback_on_machine_detection

              sig do
                params(cancel_playback_on_machine_detection: T::Boolean).void
              end
              attr_writer :cancel_playback_on_machine_detection

              # Custom HTTP headers to be sent with the call. Each header should be an object
              # with 'name' and 'value' properties.
              sig do
                returns(
                  T.nilable(
                    T::Array[
                      Telnyx::Texml::Accounts::CallCallsParams::Params::WithURL::CustomHeader
                    ]
                  )
                )
              end
              attr_reader :custom_headers

              sig do
                params(
                  custom_headers:
                    T::Array[
                      Telnyx::Texml::Accounts::CallCallsParams::Params::WithURL::CustomHeader::OrHash
                    ]
                ).void
              end
              attr_writer :custom_headers

              # Enables Deepfake Detection on the dialed call. When enabled, audio from the
              # remote party is analyzed to determine whether the voice is AI-generated. Results
              # are delivered asynchronously via a callback.
              sig do
                returns(
                  T.nilable(
                    Telnyx::Texml::Accounts::CallCallsParams::Params::WithURL::DeepfakeDetection::OrSymbol
                  )
                )
              end
              attr_reader :deepfake_detection

              sig do
                params(
                  deepfake_detection:
                    Telnyx::Texml::Accounts::CallCallsParams::Params::WithURL::DeepfakeDetection::OrSymbol
                ).void
              end
              attr_writer :deepfake_detection

              # HTTP request type used for `DeepfakeDetectionCallbackUrl`.
              sig do
                returns(
                  T.nilable(
                    Telnyx::Texml::Accounts::CallCallsParams::Params::WithURL::DeepfakeDetectionCallbackMethod::OrSymbol
                  )
                )
              end
              attr_reader :deepfake_detection_callback_method

              sig do
                params(
                  deepfake_detection_callback_method:
                    Telnyx::Texml::Accounts::CallCallsParams::Params::WithURL::DeepfakeDetectionCallbackMethod::OrSymbol
                ).void
              end
              attr_writer :deepfake_detection_callback_method

              # URL destination for Telnyx to send deepfake detection callback events to for the
              # call.
              sig { returns(T.nilable(String)) }
              attr_reader :deepfake_detection_callback_url

              sig { params(deepfake_detection_callback_url: String).void }
              attr_writer :deepfake_detection_callback_url

              # Allows you to chose between Premium and Standard detections.
              sig do
                returns(
                  T.nilable(
                    Telnyx::Texml::Accounts::CallCallsParams::Params::WithURL::DetectionMode::OrSymbol
                  )
                )
              end
              attr_reader :detection_mode

              sig do
                params(
                  detection_mode:
                    Telnyx::Texml::Accounts::CallCallsParams::Params::WithURL::DetectionMode::OrSymbol
                ).void
              end
              attr_writer :detection_mode

              # A failover URL for which Telnyx will retrieve the TeXML call instructions if the
              # `Url` is not responding.
              sig { returns(T.nilable(String)) }
              attr_reader :fallback_url

              sig { params(fallback_url: String).void }
              attr_writer :fallback_url

              # The phone number of the party that initiated the call. Phone numbers are
              # formatted with a `+` and country code.
              sig { returns(T.nilable(String)) }
              attr_reader :from

              sig { params(from: String).void }
              attr_writer :from

              # Enables Answering Machine Detection.
              sig do
                returns(
                  T.nilable(
                    Telnyx::Texml::Accounts::CallCallsParams::Params::WithURL::MachineDetection::OrSymbol
                  )
                )
              end
              attr_reader :machine_detection

              sig do
                params(
                  machine_detection:
                    Telnyx::Texml::Accounts::CallCallsParams::Params::WithURL::MachineDetection::OrSymbol
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

              sig do
                params(machine_detection_speech_end_threshold: Integer).void
              end
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

              # Defines whether media should be encrypted on the call. When set to `SRTP`, the
              # call will use Secure Real-time Transport Protocol for media encryption. When set
              # to `DTLS`, the call will use DTLS for media encryption. Only supported for SIP
              # destinations.
              sig do
                returns(
                  T.nilable(
                    Telnyx::Texml::Accounts::CallCallsParams::Params::WithURL::MediaEncryption::OrSymbol
                  )
                )
              end
              attr_reader :media_encryption

              sig do
                params(
                  media_encryption:
                    Telnyx::Texml::Accounts::CallCallsParams::Params::WithURL::MediaEncryption::OrSymbol
                ).void
              end
              attr_writer :media_encryption

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
                    Telnyx::Texml::Accounts::CallCallsParams::Params::WithURL::RecordingChannels::OrSymbol
                  )
                )
              end
              attr_reader :recording_channels

              sig do
                params(
                  recording_channels:
                    Telnyx::Texml::Accounts::CallCallsParams::Params::WithURL::RecordingChannels::OrSymbol
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
                    Telnyx::Texml::Accounts::CallCallsParams::Params::WithURL::RecordingStatusCallbackMethod::OrSymbol
                  )
                )
              end
              attr_reader :recording_status_callback_method

              sig do
                params(
                  recording_status_callback_method:
                    Telnyx::Texml::Accounts::CallCallsParams::Params::WithURL::RecordingStatusCallbackMethod::OrSymbol
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
                    Telnyx::Texml::Accounts::CallCallsParams::Params::WithURL::RecordingTrack::OrSymbol
                  )
                )
              end
              attr_reader :recording_track

              sig do
                params(
                  recording_track:
                    Telnyx::Texml::Accounts::CallCallsParams::Params::WithURL::RecordingTrack::OrSymbol
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
                    Telnyx::Texml::Accounts::CallCallsParams::Params::WithURL::SipRegion::OrSymbol
                  )
                )
              end
              attr_reader :sip_region

              sig do
                params(
                  sip_region:
                    Telnyx::Texml::Accounts::CallCallsParams::Params::WithURL::SipRegion::OrSymbol
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
                    Telnyx::Texml::Accounts::CallCallsParams::Params::WithURL::StatusCallbackEvent::OrSymbol
                  )
                )
              end
              attr_reader :status_callback_event

              sig do
                params(
                  status_callback_event:
                    Telnyx::Texml::Accounts::CallCallsParams::Params::WithURL::StatusCallbackEvent::OrSymbol
                ).void
              end
              attr_writer :status_callback_event

              # HTTP request type used for `StatusCallback`.
              sig do
                returns(
                  T.nilable(
                    Telnyx::Texml::Accounts::CallCallsParams::Params::WithURL::StatusCallbackMethod::OrSymbol
                  )
                )
              end
              attr_reader :status_callback_method

              sig do
                params(
                  status_callback_method:
                    Telnyx::Texml::Accounts::CallCallsParams::Params::WithURL::StatusCallbackMethod::OrSymbol
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
                    Telnyx::Texml::Accounts::CallCallsParams::Params::WithURL::SupervisingRole::OrSymbol
                  )
                )
              end
              attr_reader :supervising_role

              sig do
                params(
                  supervising_role:
                    Telnyx::Texml::Accounts::CallCallsParams::Params::WithURL::SupervisingRole::OrSymbol
                ).void
              end
              attr_writer :supervising_role

              sig { returns(T.nilable(String)) }
              attr_accessor :texml

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

              # The phone number of the called party. Phone numbers are formatted with a `+` and
              # country code.
              sig { returns(T.nilable(String)) }
              attr_reader :to

              sig { params(to: String).void }
              attr_writer :to

              # Whether to trim any leading and trailing silence from the recording. Defaults to
              # `trim-silence`.
              sig do
                returns(
                  T.nilable(
                    Telnyx::Texml::Accounts::CallCallsParams::Params::WithURL::Trim::OrSymbol
                  )
                )
              end
              attr_reader :trim

              sig do
                params(
                  trim:
                    Telnyx::Texml::Accounts::CallCallsParams::Params::WithURL::Trim::OrSymbol
                ).void
              end
              attr_writer :trim

              # HTTP request type used for `Url`. The default value is inherited from TeXML
              # Application setting.
              sig do
                returns(
                  T.nilable(
                    Telnyx::Texml::Accounts::CallCallsParams::Params::WithURL::URLMethod::OrSymbol
                  )
                )
              end
              attr_reader :url_method

              sig do
                params(
                  url_method:
                    Telnyx::Texml::Accounts::CallCallsParams::Params::WithURL::URLMethod::OrSymbol
                ).void
              end
              attr_writer :url_method

              sig do
                params(
                  url: String,
                  application_sid: String,
                  async_amd: T::Boolean,
                  async_amd_status_callback: String,
                  async_amd_status_callback_method:
                    Telnyx::Texml::Accounts::CallCallsParams::Params::WithURL::AsyncAmdStatusCallbackMethod::OrSymbol,
                  caller_id: String,
                  cancel_playback_on_detect_message_end: T::Boolean,
                  cancel_playback_on_machine_detection: T::Boolean,
                  custom_headers:
                    T::Array[
                      Telnyx::Texml::Accounts::CallCallsParams::Params::WithURL::CustomHeader::OrHash
                    ],
                  deepfake_detection:
                    Telnyx::Texml::Accounts::CallCallsParams::Params::WithURL::DeepfakeDetection::OrSymbol,
                  deepfake_detection_callback_method:
                    Telnyx::Texml::Accounts::CallCallsParams::Params::WithURL::DeepfakeDetectionCallbackMethod::OrSymbol,
                  deepfake_detection_callback_url: String,
                  detection_mode:
                    Telnyx::Texml::Accounts::CallCallsParams::Params::WithURL::DetectionMode::OrSymbol,
                  fallback_url: String,
                  from: String,
                  machine_detection:
                    Telnyx::Texml::Accounts::CallCallsParams::Params::WithURL::MachineDetection::OrSymbol,
                  machine_detection_silence_timeout: Integer,
                  machine_detection_speech_end_threshold: Integer,
                  machine_detection_speech_threshold: Integer,
                  machine_detection_timeout: Integer,
                  media_encryption:
                    Telnyx::Texml::Accounts::CallCallsParams::Params::WithURL::MediaEncryption::OrSymbol,
                  preferred_codecs: String,
                  record: T::Boolean,
                  recording_channels:
                    Telnyx::Texml::Accounts::CallCallsParams::Params::WithURL::RecordingChannels::OrSymbol,
                  recording_status_callback: String,
                  recording_status_callback_event: String,
                  recording_status_callback_method:
                    Telnyx::Texml::Accounts::CallCallsParams::Params::WithURL::RecordingStatusCallbackMethod::OrSymbol,
                  recording_timeout: Integer,
                  recording_track:
                    Telnyx::Texml::Accounts::CallCallsParams::Params::WithURL::RecordingTrack::OrSymbol,
                  send_recording_url: T::Boolean,
                  sip_auth_password: String,
                  sip_auth_username: String,
                  sip_region:
                    Telnyx::Texml::Accounts::CallCallsParams::Params::WithURL::SipRegion::OrSymbol,
                  status_callback: String,
                  status_callback_event:
                    Telnyx::Texml::Accounts::CallCallsParams::Params::WithURL::StatusCallbackEvent::OrSymbol,
                  status_callback_method:
                    Telnyx::Texml::Accounts::CallCallsParams::Params::WithURL::StatusCallbackMethod::OrSymbol,
                  supervise_call_sid: String,
                  supervising_role:
                    Telnyx::Texml::Accounts::CallCallsParams::Params::WithURL::SupervisingRole::OrSymbol,
                  texml: T.nilable(String),
                  time_limit: Integer,
                  timeout: Integer,
                  to: String,
                  trim:
                    Telnyx::Texml::Accounts::CallCallsParams::Params::WithURL::Trim::OrSymbol,
                  url_method:
                    Telnyx::Texml::Accounts::CallCallsParams::Params::WithURL::URLMethod::OrSymbol
                ).returns(T.attached_class)
              end
              def self.new(
                # The URL from which Telnyx will retrieve the TeXML call instructions.
                url:,
                # The ID of the TeXML Application.
                application_sid: nil,
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
                # Enables Deepfake Detection on the dialed call. When enabled, audio from the
                # remote party is analyzed to determine whether the voice is AI-generated. Results
                # are delivered asynchronously via a callback.
                deepfake_detection: nil,
                # HTTP request type used for `DeepfakeDetectionCallbackUrl`.
                deepfake_detection_callback_method: nil,
                # URL destination for Telnyx to send deepfake detection callback events to for the
                # call.
                deepfake_detection_callback_url: nil,
                # Allows you to chose between Premium and Standard detections.
                detection_mode: nil,
                # A failover URL for which Telnyx will retrieve the TeXML call instructions if the
                # `Url` is not responding.
                fallback_url: nil,
                # The phone number of the party that initiated the call. Phone numbers are
                # formatted with a `+` and country code.
                from: nil,
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
                # Defines whether media should be encrypted on the call. When set to `SRTP`, the
                # call will use Secure Real-time Transport Protocol for media encryption. When set
                # to `DTLS`, the call will use DTLS for media encryption. Only supported for SIP
                # destinations.
                media_encryption: nil,
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
                texml: nil,
                # The maximum duration of the call in seconds. The minimum value is 30 and the
                # maximum value is 14400 (4 hours). Default is 14400 seconds.
                time_limit: nil,
                # The number of seconds to wait for the called party to answer the call before the
                # call is canceled. The minimum value is 5 and the maximum value is 120. Default
                # is 30 seconds.
                timeout: nil,
                # The phone number of the called party. Phone numbers are formatted with a `+` and
                # country code.
                to: nil,
                # Whether to trim any leading and trailing silence from the recording. Defaults to
                # `trim-silence`.
                trim: nil,
                # HTTP request type used for `Url`. The default value is inherited from TeXML
                # Application setting.
                url_method: nil
              )
              end

              sig do
                override.returns(
                  {
                    url: String,
                    application_sid: String,
                    async_amd: T::Boolean,
                    async_amd_status_callback: String,
                    async_amd_status_callback_method:
                      Telnyx::Texml::Accounts::CallCallsParams::Params::WithURL::AsyncAmdStatusCallbackMethod::OrSymbol,
                    caller_id: String,
                    cancel_playback_on_detect_message_end: T::Boolean,
                    cancel_playback_on_machine_detection: T::Boolean,
                    custom_headers:
                      T::Array[
                        Telnyx::Texml::Accounts::CallCallsParams::Params::WithURL::CustomHeader
                      ],
                    deepfake_detection:
                      Telnyx::Texml::Accounts::CallCallsParams::Params::WithURL::DeepfakeDetection::OrSymbol,
                    deepfake_detection_callback_method:
                      Telnyx::Texml::Accounts::CallCallsParams::Params::WithURL::DeepfakeDetectionCallbackMethod::OrSymbol,
                    deepfake_detection_callback_url: String,
                    detection_mode:
                      Telnyx::Texml::Accounts::CallCallsParams::Params::WithURL::DetectionMode::OrSymbol,
                    fallback_url: String,
                    from: String,
                    machine_detection:
                      Telnyx::Texml::Accounts::CallCallsParams::Params::WithURL::MachineDetection::OrSymbol,
                    machine_detection_silence_timeout: Integer,
                    machine_detection_speech_end_threshold: Integer,
                    machine_detection_speech_threshold: Integer,
                    machine_detection_timeout: Integer,
                    media_encryption:
                      Telnyx::Texml::Accounts::CallCallsParams::Params::WithURL::MediaEncryption::OrSymbol,
                    preferred_codecs: String,
                    record: T::Boolean,
                    recording_channels:
                      Telnyx::Texml::Accounts::CallCallsParams::Params::WithURL::RecordingChannels::OrSymbol,
                    recording_status_callback: String,
                    recording_status_callback_event: String,
                    recording_status_callback_method:
                      Telnyx::Texml::Accounts::CallCallsParams::Params::WithURL::RecordingStatusCallbackMethod::OrSymbol,
                    recording_timeout: Integer,
                    recording_track:
                      Telnyx::Texml::Accounts::CallCallsParams::Params::WithURL::RecordingTrack::OrSymbol,
                    send_recording_url: T::Boolean,
                    sip_auth_password: String,
                    sip_auth_username: String,
                    sip_region:
                      Telnyx::Texml::Accounts::CallCallsParams::Params::WithURL::SipRegion::OrSymbol,
                    status_callback: String,
                    status_callback_event:
                      Telnyx::Texml::Accounts::CallCallsParams::Params::WithURL::StatusCallbackEvent::OrSymbol,
                    status_callback_method:
                      Telnyx::Texml::Accounts::CallCallsParams::Params::WithURL::StatusCallbackMethod::OrSymbol,
                    supervise_call_sid: String,
                    supervising_role:
                      Telnyx::Texml::Accounts::CallCallsParams::Params::WithURL::SupervisingRole::OrSymbol,
                    texml: T.nilable(String),
                    time_limit: Integer,
                    timeout: Integer,
                    to: String,
                    trim:
                      Telnyx::Texml::Accounts::CallCallsParams::Params::WithURL::Trim::OrSymbol,
                    url_method:
                      Telnyx::Texml::Accounts::CallCallsParams::Params::WithURL::URLMethod::OrSymbol
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
                      Telnyx::Texml::Accounts::CallCallsParams::Params::WithURL::AsyncAmdStatusCallbackMethod
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                GET =
                  T.let(
                    :GET,
                    Telnyx::Texml::Accounts::CallCallsParams::Params::WithURL::AsyncAmdStatusCallbackMethod::TaggedSymbol
                  )
                POST =
                  T.let(
                    :POST,
                    Telnyx::Texml::Accounts::CallCallsParams::Params::WithURL::AsyncAmdStatusCallbackMethod::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Telnyx::Texml::Accounts::CallCallsParams::Params::WithURL::AsyncAmdStatusCallbackMethod::TaggedSymbol
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
                      Telnyx::Texml::Accounts::CallCallsParams::Params::WithURL::CustomHeader,
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

              # Enables Deepfake Detection on the dialed call. When enabled, audio from the
              # remote party is analyzed to determine whether the voice is AI-generated. Results
              # are delivered asynchronously via a callback.
              module DeepfakeDetection
                extend Telnyx::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      Telnyx::Texml::Accounts::CallCallsParams::Params::WithURL::DeepfakeDetection
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                ENABLE =
                  T.let(
                    :Enable,
                    Telnyx::Texml::Accounts::CallCallsParams::Params::WithURL::DeepfakeDetection::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Telnyx::Texml::Accounts::CallCallsParams::Params::WithURL::DeepfakeDetection::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end

              # HTTP request type used for `DeepfakeDetectionCallbackUrl`.
              module DeepfakeDetectionCallbackMethod
                extend Telnyx::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      Telnyx::Texml::Accounts::CallCallsParams::Params::WithURL::DeepfakeDetectionCallbackMethod
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                GET =
                  T.let(
                    :GET,
                    Telnyx::Texml::Accounts::CallCallsParams::Params::WithURL::DeepfakeDetectionCallbackMethod::TaggedSymbol
                  )
                POST =
                  T.let(
                    :POST,
                    Telnyx::Texml::Accounts::CallCallsParams::Params::WithURL::DeepfakeDetectionCallbackMethod::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Telnyx::Texml::Accounts::CallCallsParams::Params::WithURL::DeepfakeDetectionCallbackMethod::TaggedSymbol
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
                    T.all(
                      Symbol,
                      Telnyx::Texml::Accounts::CallCallsParams::Params::WithURL::DetectionMode
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                PREMIUM =
                  T.let(
                    :Premium,
                    Telnyx::Texml::Accounts::CallCallsParams::Params::WithURL::DetectionMode::TaggedSymbol
                  )
                REGULAR =
                  T.let(
                    :Regular,
                    Telnyx::Texml::Accounts::CallCallsParams::Params::WithURL::DetectionMode::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Telnyx::Texml::Accounts::CallCallsParams::Params::WithURL::DetectionMode::TaggedSymbol
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
                      Telnyx::Texml::Accounts::CallCallsParams::Params::WithURL::MachineDetection
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                ENABLE =
                  T.let(
                    :Enable,
                    Telnyx::Texml::Accounts::CallCallsParams::Params::WithURL::MachineDetection::TaggedSymbol
                  )
                DISABLE =
                  T.let(
                    :Disable,
                    Telnyx::Texml::Accounts::CallCallsParams::Params::WithURL::MachineDetection::TaggedSymbol
                  )
                DETECT_MESSAGE_END =
                  T.let(
                    :DetectMessageEnd,
                    Telnyx::Texml::Accounts::CallCallsParams::Params::WithURL::MachineDetection::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Telnyx::Texml::Accounts::CallCallsParams::Params::WithURL::MachineDetection::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end

              # Defines whether media should be encrypted on the call. When set to `SRTP`, the
              # call will use Secure Real-time Transport Protocol for media encryption. When set
              # to `DTLS`, the call will use DTLS for media encryption. Only supported for SIP
              # destinations.
              module MediaEncryption
                extend Telnyx::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      Telnyx::Texml::Accounts::CallCallsParams::Params::WithURL::MediaEncryption
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DISABLED =
                  T.let(
                    :disabled,
                    Telnyx::Texml::Accounts::CallCallsParams::Params::WithURL::MediaEncryption::TaggedSymbol
                  )
                SRTP =
                  T.let(
                    :SRTP,
                    Telnyx::Texml::Accounts::CallCallsParams::Params::WithURL::MediaEncryption::TaggedSymbol
                  )
                DTLS =
                  T.let(
                    :DTLS,
                    Telnyx::Texml::Accounts::CallCallsParams::Params::WithURL::MediaEncryption::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Telnyx::Texml::Accounts::CallCallsParams::Params::WithURL::MediaEncryption::TaggedSymbol
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
                      Telnyx::Texml::Accounts::CallCallsParams::Params::WithURL::RecordingChannels
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                MONO =
                  T.let(
                    :mono,
                    Telnyx::Texml::Accounts::CallCallsParams::Params::WithURL::RecordingChannels::TaggedSymbol
                  )
                DUAL =
                  T.let(
                    :dual,
                    Telnyx::Texml::Accounts::CallCallsParams::Params::WithURL::RecordingChannels::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Telnyx::Texml::Accounts::CallCallsParams::Params::WithURL::RecordingChannels::TaggedSymbol
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
                      Telnyx::Texml::Accounts::CallCallsParams::Params::WithURL::RecordingStatusCallbackMethod
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                GET =
                  T.let(
                    :GET,
                    Telnyx::Texml::Accounts::CallCallsParams::Params::WithURL::RecordingStatusCallbackMethod::TaggedSymbol
                  )
                POST =
                  T.let(
                    :POST,
                    Telnyx::Texml::Accounts::CallCallsParams::Params::WithURL::RecordingStatusCallbackMethod::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Telnyx::Texml::Accounts::CallCallsParams::Params::WithURL::RecordingStatusCallbackMethod::TaggedSymbol
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
                      Telnyx::Texml::Accounts::CallCallsParams::Params::WithURL::RecordingTrack
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                INBOUND =
                  T.let(
                    :inbound,
                    Telnyx::Texml::Accounts::CallCallsParams::Params::WithURL::RecordingTrack::TaggedSymbol
                  )
                OUTBOUND =
                  T.let(
                    :outbound,
                    Telnyx::Texml::Accounts::CallCallsParams::Params::WithURL::RecordingTrack::TaggedSymbol
                  )
                BOTH =
                  T.let(
                    :both,
                    Telnyx::Texml::Accounts::CallCallsParams::Params::WithURL::RecordingTrack::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Telnyx::Texml::Accounts::CallCallsParams::Params::WithURL::RecordingTrack::TaggedSymbol
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
                      Telnyx::Texml::Accounts::CallCallsParams::Params::WithURL::SipRegion
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                US =
                  T.let(
                    :US,
                    Telnyx::Texml::Accounts::CallCallsParams::Params::WithURL::SipRegion::TaggedSymbol
                  )
                EUROPE =
                  T.let(
                    :Europe,
                    Telnyx::Texml::Accounts::CallCallsParams::Params::WithURL::SipRegion::TaggedSymbol
                  )
                CANADA =
                  T.let(
                    :Canada,
                    Telnyx::Texml::Accounts::CallCallsParams::Params::WithURL::SipRegion::TaggedSymbol
                  )
                AUSTRALIA =
                  T.let(
                    :Australia,
                    Telnyx::Texml::Accounts::CallCallsParams::Params::WithURL::SipRegion::TaggedSymbol
                  )
                MIDDLE_EAST =
                  T.let(
                    :"Middle East",
                    Telnyx::Texml::Accounts::CallCallsParams::Params::WithURL::SipRegion::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Telnyx::Texml::Accounts::CallCallsParams::Params::WithURL::SipRegion::TaggedSymbol
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
                      Telnyx::Texml::Accounts::CallCallsParams::Params::WithURL::StatusCallbackEvent
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                INITIATED =
                  T.let(
                    :initiated,
                    Telnyx::Texml::Accounts::CallCallsParams::Params::WithURL::StatusCallbackEvent::TaggedSymbol
                  )
                RINGING =
                  T.let(
                    :ringing,
                    Telnyx::Texml::Accounts::CallCallsParams::Params::WithURL::StatusCallbackEvent::TaggedSymbol
                  )
                ANSWERED =
                  T.let(
                    :answered,
                    Telnyx::Texml::Accounts::CallCallsParams::Params::WithURL::StatusCallbackEvent::TaggedSymbol
                  )
                COMPLETED =
                  T.let(
                    :completed,
                    Telnyx::Texml::Accounts::CallCallsParams::Params::WithURL::StatusCallbackEvent::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Telnyx::Texml::Accounts::CallCallsParams::Params::WithURL::StatusCallbackEvent::TaggedSymbol
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
                      Telnyx::Texml::Accounts::CallCallsParams::Params::WithURL::StatusCallbackMethod
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                GET =
                  T.let(
                    :GET,
                    Telnyx::Texml::Accounts::CallCallsParams::Params::WithURL::StatusCallbackMethod::TaggedSymbol
                  )
                POST =
                  T.let(
                    :POST,
                    Telnyx::Texml::Accounts::CallCallsParams::Params::WithURL::StatusCallbackMethod::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Telnyx::Texml::Accounts::CallCallsParams::Params::WithURL::StatusCallbackMethod::TaggedSymbol
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
                      Telnyx::Texml::Accounts::CallCallsParams::Params::WithURL::SupervisingRole
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                BARGE =
                  T.let(
                    :barge,
                    Telnyx::Texml::Accounts::CallCallsParams::Params::WithURL::SupervisingRole::TaggedSymbol
                  )
                WHISPER =
                  T.let(
                    :whisper,
                    Telnyx::Texml::Accounts::CallCallsParams::Params::WithURL::SupervisingRole::TaggedSymbol
                  )
                MONITOR =
                  T.let(
                    :monitor,
                    Telnyx::Texml::Accounts::CallCallsParams::Params::WithURL::SupervisingRole::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Telnyx::Texml::Accounts::CallCallsParams::Params::WithURL::SupervisingRole::TaggedSymbol
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
                    T.all(
                      Symbol,
                      Telnyx::Texml::Accounts::CallCallsParams::Params::WithURL::Trim
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                TRIM_SILENCE =
                  T.let(
                    :"trim-silence",
                    Telnyx::Texml::Accounts::CallCallsParams::Params::WithURL::Trim::TaggedSymbol
                  )
                DO_NOT_TRIM =
                  T.let(
                    :"do-not-trim",
                    Telnyx::Texml::Accounts::CallCallsParams::Params::WithURL::Trim::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Telnyx::Texml::Accounts::CallCallsParams::Params::WithURL::Trim::TaggedSymbol
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
                      Telnyx::Texml::Accounts::CallCallsParams::Params::WithURL::URLMethod
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                GET =
                  T.let(
                    :GET,
                    Telnyx::Texml::Accounts::CallCallsParams::Params::WithURL::URLMethod::TaggedSymbol
                  )
                POST =
                  T.let(
                    :POST,
                    Telnyx::Texml::Accounts::CallCallsParams::Params::WithURL::URLMethod::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Telnyx::Texml::Accounts::CallCallsParams::Params::WithURL::URLMethod::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end

            class WithTeXml < Telnyx::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Telnyx::Texml::Accounts::CallCallsParams::Params::WithTeXml,
                    Telnyx::Internal::AnyHash
                  )
                end

              # TeXML to be used as instructions for the call. If provided, the call will
              # execute these instructions instead of fetching from the Url.
              sig { returns(String) }
              attr_accessor :texml

              # The ID of the TeXML Application.
              sig { returns(T.nilable(String)) }
              attr_reader :application_sid

              sig { params(application_sid: String).void }
              attr_writer :application_sid

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
                    Telnyx::Texml::Accounts::CallCallsParams::Params::WithTeXml::AsyncAmdStatusCallbackMethod::OrSymbol
                  )
                )
              end
              attr_reader :async_amd_status_callback_method

              sig do
                params(
                  async_amd_status_callback_method:
                    Telnyx::Texml::Accounts::CallCallsParams::Params::WithTeXml::AsyncAmdStatusCallbackMethod::OrSymbol
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

              sig do
                params(cancel_playback_on_detect_message_end: T::Boolean).void
              end
              attr_writer :cancel_playback_on_detect_message_end

              # Whether to cancel ongoing playback on `machine` detection. Defaults to `true`.
              sig { returns(T.nilable(T::Boolean)) }
              attr_reader :cancel_playback_on_machine_detection

              sig do
                params(cancel_playback_on_machine_detection: T::Boolean).void
              end
              attr_writer :cancel_playback_on_machine_detection

              # Custom HTTP headers to be sent with the call. Each header should be an object
              # with 'name' and 'value' properties.
              sig do
                returns(
                  T.nilable(
                    T::Array[
                      Telnyx::Texml::Accounts::CallCallsParams::Params::WithTeXml::CustomHeader
                    ]
                  )
                )
              end
              attr_reader :custom_headers

              sig do
                params(
                  custom_headers:
                    T::Array[
                      Telnyx::Texml::Accounts::CallCallsParams::Params::WithTeXml::CustomHeader::OrHash
                    ]
                ).void
              end
              attr_writer :custom_headers

              # Enables Deepfake Detection on the dialed call. When enabled, audio from the
              # remote party is analyzed to determine whether the voice is AI-generated. Results
              # are delivered asynchronously via a callback.
              sig do
                returns(
                  T.nilable(
                    Telnyx::Texml::Accounts::CallCallsParams::Params::WithTeXml::DeepfakeDetection::OrSymbol
                  )
                )
              end
              attr_reader :deepfake_detection

              sig do
                params(
                  deepfake_detection:
                    Telnyx::Texml::Accounts::CallCallsParams::Params::WithTeXml::DeepfakeDetection::OrSymbol
                ).void
              end
              attr_writer :deepfake_detection

              # HTTP request type used for `DeepfakeDetectionCallbackUrl`.
              sig do
                returns(
                  T.nilable(
                    Telnyx::Texml::Accounts::CallCallsParams::Params::WithTeXml::DeepfakeDetectionCallbackMethod::OrSymbol
                  )
                )
              end
              attr_reader :deepfake_detection_callback_method

              sig do
                params(
                  deepfake_detection_callback_method:
                    Telnyx::Texml::Accounts::CallCallsParams::Params::WithTeXml::DeepfakeDetectionCallbackMethod::OrSymbol
                ).void
              end
              attr_writer :deepfake_detection_callback_method

              # URL destination for Telnyx to send deepfake detection callback events to for the
              # call.
              sig { returns(T.nilable(String)) }
              attr_reader :deepfake_detection_callback_url

              sig { params(deepfake_detection_callback_url: String).void }
              attr_writer :deepfake_detection_callback_url

              # Allows you to chose between Premium and Standard detections.
              sig do
                returns(
                  T.nilable(
                    Telnyx::Texml::Accounts::CallCallsParams::Params::WithTeXml::DetectionMode::OrSymbol
                  )
                )
              end
              attr_reader :detection_mode

              sig do
                params(
                  detection_mode:
                    Telnyx::Texml::Accounts::CallCallsParams::Params::WithTeXml::DetectionMode::OrSymbol
                ).void
              end
              attr_writer :detection_mode

              # A failover URL for which Telnyx will retrieve the TeXML call instructions if the
              # `Url` is not responding.
              sig { returns(T.nilable(String)) }
              attr_reader :fallback_url

              sig { params(fallback_url: String).void }
              attr_writer :fallback_url

              # The phone number of the party that initiated the call. Phone numbers are
              # formatted with a `+` and country code.
              sig { returns(T.nilable(String)) }
              attr_reader :from

              sig { params(from: String).void }
              attr_writer :from

              # Enables Answering Machine Detection.
              sig do
                returns(
                  T.nilable(
                    Telnyx::Texml::Accounts::CallCallsParams::Params::WithTeXml::MachineDetection::OrSymbol
                  )
                )
              end
              attr_reader :machine_detection

              sig do
                params(
                  machine_detection:
                    Telnyx::Texml::Accounts::CallCallsParams::Params::WithTeXml::MachineDetection::OrSymbol
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

              sig do
                params(machine_detection_speech_end_threshold: Integer).void
              end
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

              # Defines whether media should be encrypted on the call. When set to `SRTP`, the
              # call will use Secure Real-time Transport Protocol for media encryption. When set
              # to `DTLS`, the call will use DTLS for media encryption. Only supported for SIP
              # destinations.
              sig do
                returns(
                  T.nilable(
                    Telnyx::Texml::Accounts::CallCallsParams::Params::WithTeXml::MediaEncryption::OrSymbol
                  )
                )
              end
              attr_reader :media_encryption

              sig do
                params(
                  media_encryption:
                    Telnyx::Texml::Accounts::CallCallsParams::Params::WithTeXml::MediaEncryption::OrSymbol
                ).void
              end
              attr_writer :media_encryption

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
                    Telnyx::Texml::Accounts::CallCallsParams::Params::WithTeXml::RecordingChannels::OrSymbol
                  )
                )
              end
              attr_reader :recording_channels

              sig do
                params(
                  recording_channels:
                    Telnyx::Texml::Accounts::CallCallsParams::Params::WithTeXml::RecordingChannels::OrSymbol
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
                    Telnyx::Texml::Accounts::CallCallsParams::Params::WithTeXml::RecordingStatusCallbackMethod::OrSymbol
                  )
                )
              end
              attr_reader :recording_status_callback_method

              sig do
                params(
                  recording_status_callback_method:
                    Telnyx::Texml::Accounts::CallCallsParams::Params::WithTeXml::RecordingStatusCallbackMethod::OrSymbol
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
                    Telnyx::Texml::Accounts::CallCallsParams::Params::WithTeXml::RecordingTrack::OrSymbol
                  )
                )
              end
              attr_reader :recording_track

              sig do
                params(
                  recording_track:
                    Telnyx::Texml::Accounts::CallCallsParams::Params::WithTeXml::RecordingTrack::OrSymbol
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
                    Telnyx::Texml::Accounts::CallCallsParams::Params::WithTeXml::SipRegion::OrSymbol
                  )
                )
              end
              attr_reader :sip_region

              sig do
                params(
                  sip_region:
                    Telnyx::Texml::Accounts::CallCallsParams::Params::WithTeXml::SipRegion::OrSymbol
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
                    Telnyx::Texml::Accounts::CallCallsParams::Params::WithTeXml::StatusCallbackEvent::OrSymbol
                  )
                )
              end
              attr_reader :status_callback_event

              sig do
                params(
                  status_callback_event:
                    Telnyx::Texml::Accounts::CallCallsParams::Params::WithTeXml::StatusCallbackEvent::OrSymbol
                ).void
              end
              attr_writer :status_callback_event

              # HTTP request type used for `StatusCallback`.
              sig do
                returns(
                  T.nilable(
                    Telnyx::Texml::Accounts::CallCallsParams::Params::WithTeXml::StatusCallbackMethod::OrSymbol
                  )
                )
              end
              attr_reader :status_callback_method

              sig do
                params(
                  status_callback_method:
                    Telnyx::Texml::Accounts::CallCallsParams::Params::WithTeXml::StatusCallbackMethod::OrSymbol
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
                    Telnyx::Texml::Accounts::CallCallsParams::Params::WithTeXml::SupervisingRole::OrSymbol
                  )
                )
              end
              attr_reader :supervising_role

              sig do
                params(
                  supervising_role:
                    Telnyx::Texml::Accounts::CallCallsParams::Params::WithTeXml::SupervisingRole::OrSymbol
                ).void
              end
              attr_writer :supervising_role

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

              # The phone number of the called party. Phone numbers are formatted with a `+` and
              # country code.
              sig { returns(T.nilable(String)) }
              attr_reader :to

              sig { params(to: String).void }
              attr_writer :to

              # Whether to trim any leading and trailing silence from the recording. Defaults to
              # `trim-silence`.
              sig do
                returns(
                  T.nilable(
                    Telnyx::Texml::Accounts::CallCallsParams::Params::WithTeXml::Trim::OrSymbol
                  )
                )
              end
              attr_reader :trim

              sig do
                params(
                  trim:
                    Telnyx::Texml::Accounts::CallCallsParams::Params::WithTeXml::Trim::OrSymbol
                ).void
              end
              attr_writer :trim

              sig { returns(T.nilable(String)) }
              attr_accessor :url

              # HTTP request type used for `Url`. The default value is inherited from TeXML
              # Application setting.
              sig do
                returns(
                  T.nilable(
                    Telnyx::Texml::Accounts::CallCallsParams::Params::WithTeXml::URLMethod::OrSymbol
                  )
                )
              end
              attr_reader :url_method

              sig do
                params(
                  url_method:
                    Telnyx::Texml::Accounts::CallCallsParams::Params::WithTeXml::URLMethod::OrSymbol
                ).void
              end
              attr_writer :url_method

              sig do
                params(
                  texml: String,
                  application_sid: String,
                  async_amd: T::Boolean,
                  async_amd_status_callback: String,
                  async_amd_status_callback_method:
                    Telnyx::Texml::Accounts::CallCallsParams::Params::WithTeXml::AsyncAmdStatusCallbackMethod::OrSymbol,
                  caller_id: String,
                  cancel_playback_on_detect_message_end: T::Boolean,
                  cancel_playback_on_machine_detection: T::Boolean,
                  custom_headers:
                    T::Array[
                      Telnyx::Texml::Accounts::CallCallsParams::Params::WithTeXml::CustomHeader::OrHash
                    ],
                  deepfake_detection:
                    Telnyx::Texml::Accounts::CallCallsParams::Params::WithTeXml::DeepfakeDetection::OrSymbol,
                  deepfake_detection_callback_method:
                    Telnyx::Texml::Accounts::CallCallsParams::Params::WithTeXml::DeepfakeDetectionCallbackMethod::OrSymbol,
                  deepfake_detection_callback_url: String,
                  detection_mode:
                    Telnyx::Texml::Accounts::CallCallsParams::Params::WithTeXml::DetectionMode::OrSymbol,
                  fallback_url: String,
                  from: String,
                  machine_detection:
                    Telnyx::Texml::Accounts::CallCallsParams::Params::WithTeXml::MachineDetection::OrSymbol,
                  machine_detection_silence_timeout: Integer,
                  machine_detection_speech_end_threshold: Integer,
                  machine_detection_speech_threshold: Integer,
                  machine_detection_timeout: Integer,
                  media_encryption:
                    Telnyx::Texml::Accounts::CallCallsParams::Params::WithTeXml::MediaEncryption::OrSymbol,
                  preferred_codecs: String,
                  record: T::Boolean,
                  recording_channels:
                    Telnyx::Texml::Accounts::CallCallsParams::Params::WithTeXml::RecordingChannels::OrSymbol,
                  recording_status_callback: String,
                  recording_status_callback_event: String,
                  recording_status_callback_method:
                    Telnyx::Texml::Accounts::CallCallsParams::Params::WithTeXml::RecordingStatusCallbackMethod::OrSymbol,
                  recording_timeout: Integer,
                  recording_track:
                    Telnyx::Texml::Accounts::CallCallsParams::Params::WithTeXml::RecordingTrack::OrSymbol,
                  send_recording_url: T::Boolean,
                  sip_auth_password: String,
                  sip_auth_username: String,
                  sip_region:
                    Telnyx::Texml::Accounts::CallCallsParams::Params::WithTeXml::SipRegion::OrSymbol,
                  status_callback: String,
                  status_callback_event:
                    Telnyx::Texml::Accounts::CallCallsParams::Params::WithTeXml::StatusCallbackEvent::OrSymbol,
                  status_callback_method:
                    Telnyx::Texml::Accounts::CallCallsParams::Params::WithTeXml::StatusCallbackMethod::OrSymbol,
                  supervise_call_sid: String,
                  supervising_role:
                    Telnyx::Texml::Accounts::CallCallsParams::Params::WithTeXml::SupervisingRole::OrSymbol,
                  time_limit: Integer,
                  timeout: Integer,
                  to: String,
                  trim:
                    Telnyx::Texml::Accounts::CallCallsParams::Params::WithTeXml::Trim::OrSymbol,
                  url: T.nilable(String),
                  url_method:
                    Telnyx::Texml::Accounts::CallCallsParams::Params::WithTeXml::URLMethod::OrSymbol
                ).returns(T.attached_class)
              end
              def self.new(
                # TeXML to be used as instructions for the call. If provided, the call will
                # execute these instructions instead of fetching from the Url.
                texml:,
                # The ID of the TeXML Application.
                application_sid: nil,
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
                # Enables Deepfake Detection on the dialed call. When enabled, audio from the
                # remote party is analyzed to determine whether the voice is AI-generated. Results
                # are delivered asynchronously via a callback.
                deepfake_detection: nil,
                # HTTP request type used for `DeepfakeDetectionCallbackUrl`.
                deepfake_detection_callback_method: nil,
                # URL destination for Telnyx to send deepfake detection callback events to for the
                # call.
                deepfake_detection_callback_url: nil,
                # Allows you to chose between Premium and Standard detections.
                detection_mode: nil,
                # A failover URL for which Telnyx will retrieve the TeXML call instructions if the
                # `Url` is not responding.
                fallback_url: nil,
                # The phone number of the party that initiated the call. Phone numbers are
                # formatted with a `+` and country code.
                from: nil,
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
                # Defines whether media should be encrypted on the call. When set to `SRTP`, the
                # call will use Secure Real-time Transport Protocol for media encryption. When set
                # to `DTLS`, the call will use DTLS for media encryption. Only supported for SIP
                # destinations.
                media_encryption: nil,
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
                # The maximum duration of the call in seconds. The minimum value is 30 and the
                # maximum value is 14400 (4 hours). Default is 14400 seconds.
                time_limit: nil,
                # The number of seconds to wait for the called party to answer the call before the
                # call is canceled. The minimum value is 5 and the maximum value is 120. Default
                # is 30 seconds.
                timeout: nil,
                # The phone number of the called party. Phone numbers are formatted with a `+` and
                # country code.
                to: nil,
                # Whether to trim any leading and trailing silence from the recording. Defaults to
                # `trim-silence`.
                trim: nil,
                url: nil,
                # HTTP request type used for `Url`. The default value is inherited from TeXML
                # Application setting.
                url_method: nil
              )
              end

              sig do
                override.returns(
                  {
                    texml: String,
                    application_sid: String,
                    async_amd: T::Boolean,
                    async_amd_status_callback: String,
                    async_amd_status_callback_method:
                      Telnyx::Texml::Accounts::CallCallsParams::Params::WithTeXml::AsyncAmdStatusCallbackMethod::OrSymbol,
                    caller_id: String,
                    cancel_playback_on_detect_message_end: T::Boolean,
                    cancel_playback_on_machine_detection: T::Boolean,
                    custom_headers:
                      T::Array[
                        Telnyx::Texml::Accounts::CallCallsParams::Params::WithTeXml::CustomHeader
                      ],
                    deepfake_detection:
                      Telnyx::Texml::Accounts::CallCallsParams::Params::WithTeXml::DeepfakeDetection::OrSymbol,
                    deepfake_detection_callback_method:
                      Telnyx::Texml::Accounts::CallCallsParams::Params::WithTeXml::DeepfakeDetectionCallbackMethod::OrSymbol,
                    deepfake_detection_callback_url: String,
                    detection_mode:
                      Telnyx::Texml::Accounts::CallCallsParams::Params::WithTeXml::DetectionMode::OrSymbol,
                    fallback_url: String,
                    from: String,
                    machine_detection:
                      Telnyx::Texml::Accounts::CallCallsParams::Params::WithTeXml::MachineDetection::OrSymbol,
                    machine_detection_silence_timeout: Integer,
                    machine_detection_speech_end_threshold: Integer,
                    machine_detection_speech_threshold: Integer,
                    machine_detection_timeout: Integer,
                    media_encryption:
                      Telnyx::Texml::Accounts::CallCallsParams::Params::WithTeXml::MediaEncryption::OrSymbol,
                    preferred_codecs: String,
                    record: T::Boolean,
                    recording_channels:
                      Telnyx::Texml::Accounts::CallCallsParams::Params::WithTeXml::RecordingChannels::OrSymbol,
                    recording_status_callback: String,
                    recording_status_callback_event: String,
                    recording_status_callback_method:
                      Telnyx::Texml::Accounts::CallCallsParams::Params::WithTeXml::RecordingStatusCallbackMethod::OrSymbol,
                    recording_timeout: Integer,
                    recording_track:
                      Telnyx::Texml::Accounts::CallCallsParams::Params::WithTeXml::RecordingTrack::OrSymbol,
                    send_recording_url: T::Boolean,
                    sip_auth_password: String,
                    sip_auth_username: String,
                    sip_region:
                      Telnyx::Texml::Accounts::CallCallsParams::Params::WithTeXml::SipRegion::OrSymbol,
                    status_callback: String,
                    status_callback_event:
                      Telnyx::Texml::Accounts::CallCallsParams::Params::WithTeXml::StatusCallbackEvent::OrSymbol,
                    status_callback_method:
                      Telnyx::Texml::Accounts::CallCallsParams::Params::WithTeXml::StatusCallbackMethod::OrSymbol,
                    supervise_call_sid: String,
                    supervising_role:
                      Telnyx::Texml::Accounts::CallCallsParams::Params::WithTeXml::SupervisingRole::OrSymbol,
                    time_limit: Integer,
                    timeout: Integer,
                    to: String,
                    trim:
                      Telnyx::Texml::Accounts::CallCallsParams::Params::WithTeXml::Trim::OrSymbol,
                    url: T.nilable(String),
                    url_method:
                      Telnyx::Texml::Accounts::CallCallsParams::Params::WithTeXml::URLMethod::OrSymbol
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
                      Telnyx::Texml::Accounts::CallCallsParams::Params::WithTeXml::AsyncAmdStatusCallbackMethod
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                GET =
                  T.let(
                    :GET,
                    Telnyx::Texml::Accounts::CallCallsParams::Params::WithTeXml::AsyncAmdStatusCallbackMethod::TaggedSymbol
                  )
                POST =
                  T.let(
                    :POST,
                    Telnyx::Texml::Accounts::CallCallsParams::Params::WithTeXml::AsyncAmdStatusCallbackMethod::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Telnyx::Texml::Accounts::CallCallsParams::Params::WithTeXml::AsyncAmdStatusCallbackMethod::TaggedSymbol
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
                      Telnyx::Texml::Accounts::CallCallsParams::Params::WithTeXml::CustomHeader,
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

              # Enables Deepfake Detection on the dialed call. When enabled, audio from the
              # remote party is analyzed to determine whether the voice is AI-generated. Results
              # are delivered asynchronously via a callback.
              module DeepfakeDetection
                extend Telnyx::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      Telnyx::Texml::Accounts::CallCallsParams::Params::WithTeXml::DeepfakeDetection
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                ENABLE =
                  T.let(
                    :Enable,
                    Telnyx::Texml::Accounts::CallCallsParams::Params::WithTeXml::DeepfakeDetection::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Telnyx::Texml::Accounts::CallCallsParams::Params::WithTeXml::DeepfakeDetection::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end

              # HTTP request type used for `DeepfakeDetectionCallbackUrl`.
              module DeepfakeDetectionCallbackMethod
                extend Telnyx::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      Telnyx::Texml::Accounts::CallCallsParams::Params::WithTeXml::DeepfakeDetectionCallbackMethod
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                GET =
                  T.let(
                    :GET,
                    Telnyx::Texml::Accounts::CallCallsParams::Params::WithTeXml::DeepfakeDetectionCallbackMethod::TaggedSymbol
                  )
                POST =
                  T.let(
                    :POST,
                    Telnyx::Texml::Accounts::CallCallsParams::Params::WithTeXml::DeepfakeDetectionCallbackMethod::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Telnyx::Texml::Accounts::CallCallsParams::Params::WithTeXml::DeepfakeDetectionCallbackMethod::TaggedSymbol
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
                    T.all(
                      Symbol,
                      Telnyx::Texml::Accounts::CallCallsParams::Params::WithTeXml::DetectionMode
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                PREMIUM =
                  T.let(
                    :Premium,
                    Telnyx::Texml::Accounts::CallCallsParams::Params::WithTeXml::DetectionMode::TaggedSymbol
                  )
                REGULAR =
                  T.let(
                    :Regular,
                    Telnyx::Texml::Accounts::CallCallsParams::Params::WithTeXml::DetectionMode::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Telnyx::Texml::Accounts::CallCallsParams::Params::WithTeXml::DetectionMode::TaggedSymbol
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
                      Telnyx::Texml::Accounts::CallCallsParams::Params::WithTeXml::MachineDetection
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                ENABLE =
                  T.let(
                    :Enable,
                    Telnyx::Texml::Accounts::CallCallsParams::Params::WithTeXml::MachineDetection::TaggedSymbol
                  )
                DISABLE =
                  T.let(
                    :Disable,
                    Telnyx::Texml::Accounts::CallCallsParams::Params::WithTeXml::MachineDetection::TaggedSymbol
                  )
                DETECT_MESSAGE_END =
                  T.let(
                    :DetectMessageEnd,
                    Telnyx::Texml::Accounts::CallCallsParams::Params::WithTeXml::MachineDetection::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Telnyx::Texml::Accounts::CallCallsParams::Params::WithTeXml::MachineDetection::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end

              # Defines whether media should be encrypted on the call. When set to `SRTP`, the
              # call will use Secure Real-time Transport Protocol for media encryption. When set
              # to `DTLS`, the call will use DTLS for media encryption. Only supported for SIP
              # destinations.
              module MediaEncryption
                extend Telnyx::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      Telnyx::Texml::Accounts::CallCallsParams::Params::WithTeXml::MediaEncryption
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DISABLED =
                  T.let(
                    :disabled,
                    Telnyx::Texml::Accounts::CallCallsParams::Params::WithTeXml::MediaEncryption::TaggedSymbol
                  )
                SRTP =
                  T.let(
                    :SRTP,
                    Telnyx::Texml::Accounts::CallCallsParams::Params::WithTeXml::MediaEncryption::TaggedSymbol
                  )
                DTLS =
                  T.let(
                    :DTLS,
                    Telnyx::Texml::Accounts::CallCallsParams::Params::WithTeXml::MediaEncryption::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Telnyx::Texml::Accounts::CallCallsParams::Params::WithTeXml::MediaEncryption::TaggedSymbol
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
                      Telnyx::Texml::Accounts::CallCallsParams::Params::WithTeXml::RecordingChannels
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                MONO =
                  T.let(
                    :mono,
                    Telnyx::Texml::Accounts::CallCallsParams::Params::WithTeXml::RecordingChannels::TaggedSymbol
                  )
                DUAL =
                  T.let(
                    :dual,
                    Telnyx::Texml::Accounts::CallCallsParams::Params::WithTeXml::RecordingChannels::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Telnyx::Texml::Accounts::CallCallsParams::Params::WithTeXml::RecordingChannels::TaggedSymbol
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
                      Telnyx::Texml::Accounts::CallCallsParams::Params::WithTeXml::RecordingStatusCallbackMethod
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                GET =
                  T.let(
                    :GET,
                    Telnyx::Texml::Accounts::CallCallsParams::Params::WithTeXml::RecordingStatusCallbackMethod::TaggedSymbol
                  )
                POST =
                  T.let(
                    :POST,
                    Telnyx::Texml::Accounts::CallCallsParams::Params::WithTeXml::RecordingStatusCallbackMethod::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Telnyx::Texml::Accounts::CallCallsParams::Params::WithTeXml::RecordingStatusCallbackMethod::TaggedSymbol
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
                      Telnyx::Texml::Accounts::CallCallsParams::Params::WithTeXml::RecordingTrack
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                INBOUND =
                  T.let(
                    :inbound,
                    Telnyx::Texml::Accounts::CallCallsParams::Params::WithTeXml::RecordingTrack::TaggedSymbol
                  )
                OUTBOUND =
                  T.let(
                    :outbound,
                    Telnyx::Texml::Accounts::CallCallsParams::Params::WithTeXml::RecordingTrack::TaggedSymbol
                  )
                BOTH =
                  T.let(
                    :both,
                    Telnyx::Texml::Accounts::CallCallsParams::Params::WithTeXml::RecordingTrack::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Telnyx::Texml::Accounts::CallCallsParams::Params::WithTeXml::RecordingTrack::TaggedSymbol
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
                      Telnyx::Texml::Accounts::CallCallsParams::Params::WithTeXml::SipRegion
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                US =
                  T.let(
                    :US,
                    Telnyx::Texml::Accounts::CallCallsParams::Params::WithTeXml::SipRegion::TaggedSymbol
                  )
                EUROPE =
                  T.let(
                    :Europe,
                    Telnyx::Texml::Accounts::CallCallsParams::Params::WithTeXml::SipRegion::TaggedSymbol
                  )
                CANADA =
                  T.let(
                    :Canada,
                    Telnyx::Texml::Accounts::CallCallsParams::Params::WithTeXml::SipRegion::TaggedSymbol
                  )
                AUSTRALIA =
                  T.let(
                    :Australia,
                    Telnyx::Texml::Accounts::CallCallsParams::Params::WithTeXml::SipRegion::TaggedSymbol
                  )
                MIDDLE_EAST =
                  T.let(
                    :"Middle East",
                    Telnyx::Texml::Accounts::CallCallsParams::Params::WithTeXml::SipRegion::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Telnyx::Texml::Accounts::CallCallsParams::Params::WithTeXml::SipRegion::TaggedSymbol
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
                      Telnyx::Texml::Accounts::CallCallsParams::Params::WithTeXml::StatusCallbackEvent
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                INITIATED =
                  T.let(
                    :initiated,
                    Telnyx::Texml::Accounts::CallCallsParams::Params::WithTeXml::StatusCallbackEvent::TaggedSymbol
                  )
                RINGING =
                  T.let(
                    :ringing,
                    Telnyx::Texml::Accounts::CallCallsParams::Params::WithTeXml::StatusCallbackEvent::TaggedSymbol
                  )
                ANSWERED =
                  T.let(
                    :answered,
                    Telnyx::Texml::Accounts::CallCallsParams::Params::WithTeXml::StatusCallbackEvent::TaggedSymbol
                  )
                COMPLETED =
                  T.let(
                    :completed,
                    Telnyx::Texml::Accounts::CallCallsParams::Params::WithTeXml::StatusCallbackEvent::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Telnyx::Texml::Accounts::CallCallsParams::Params::WithTeXml::StatusCallbackEvent::TaggedSymbol
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
                      Telnyx::Texml::Accounts::CallCallsParams::Params::WithTeXml::StatusCallbackMethod
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                GET =
                  T.let(
                    :GET,
                    Telnyx::Texml::Accounts::CallCallsParams::Params::WithTeXml::StatusCallbackMethod::TaggedSymbol
                  )
                POST =
                  T.let(
                    :POST,
                    Telnyx::Texml::Accounts::CallCallsParams::Params::WithTeXml::StatusCallbackMethod::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Telnyx::Texml::Accounts::CallCallsParams::Params::WithTeXml::StatusCallbackMethod::TaggedSymbol
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
                      Telnyx::Texml::Accounts::CallCallsParams::Params::WithTeXml::SupervisingRole
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                BARGE =
                  T.let(
                    :barge,
                    Telnyx::Texml::Accounts::CallCallsParams::Params::WithTeXml::SupervisingRole::TaggedSymbol
                  )
                WHISPER =
                  T.let(
                    :whisper,
                    Telnyx::Texml::Accounts::CallCallsParams::Params::WithTeXml::SupervisingRole::TaggedSymbol
                  )
                MONITOR =
                  T.let(
                    :monitor,
                    Telnyx::Texml::Accounts::CallCallsParams::Params::WithTeXml::SupervisingRole::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Telnyx::Texml::Accounts::CallCallsParams::Params::WithTeXml::SupervisingRole::TaggedSymbol
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
                    T.all(
                      Symbol,
                      Telnyx::Texml::Accounts::CallCallsParams::Params::WithTeXml::Trim
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                TRIM_SILENCE =
                  T.let(
                    :"trim-silence",
                    Telnyx::Texml::Accounts::CallCallsParams::Params::WithTeXml::Trim::TaggedSymbol
                  )
                DO_NOT_TRIM =
                  T.let(
                    :"do-not-trim",
                    Telnyx::Texml::Accounts::CallCallsParams::Params::WithTeXml::Trim::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Telnyx::Texml::Accounts::CallCallsParams::Params::WithTeXml::Trim::TaggedSymbol
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
                      Telnyx::Texml::Accounts::CallCallsParams::Params::WithTeXml::URLMethod
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                GET =
                  T.let(
                    :GET,
                    Telnyx::Texml::Accounts::CallCallsParams::Params::WithTeXml::URLMethod::TaggedSymbol
                  )
                POST =
                  T.let(
                    :POST,
                    Telnyx::Texml::Accounts::CallCallsParams::Params::WithTeXml::URLMethod::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Telnyx::Texml::Accounts::CallCallsParams::Params::WithTeXml::URLMethod::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end

            class ApplicationDefault < Telnyx::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Telnyx::Texml::Accounts::CallCallsParams::Params::ApplicationDefault,
                    Telnyx::Internal::AnyHash
                  )
                end

              # The ID of the TeXML Application.
              sig { returns(T.nilable(String)) }
              attr_reader :application_sid

              sig { params(application_sid: String).void }
              attr_writer :application_sid

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
                    Telnyx::Texml::Accounts::CallCallsParams::Params::ApplicationDefault::AsyncAmdStatusCallbackMethod::OrSymbol
                  )
                )
              end
              attr_reader :async_amd_status_callback_method

              sig do
                params(
                  async_amd_status_callback_method:
                    Telnyx::Texml::Accounts::CallCallsParams::Params::ApplicationDefault::AsyncAmdStatusCallbackMethod::OrSymbol
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

              sig do
                params(cancel_playback_on_detect_message_end: T::Boolean).void
              end
              attr_writer :cancel_playback_on_detect_message_end

              # Whether to cancel ongoing playback on `machine` detection. Defaults to `true`.
              sig { returns(T.nilable(T::Boolean)) }
              attr_reader :cancel_playback_on_machine_detection

              sig do
                params(cancel_playback_on_machine_detection: T::Boolean).void
              end
              attr_writer :cancel_playback_on_machine_detection

              # Custom HTTP headers to be sent with the call. Each header should be an object
              # with 'name' and 'value' properties.
              sig do
                returns(
                  T.nilable(
                    T::Array[
                      Telnyx::Texml::Accounts::CallCallsParams::Params::ApplicationDefault::CustomHeader
                    ]
                  )
                )
              end
              attr_reader :custom_headers

              sig do
                params(
                  custom_headers:
                    T::Array[
                      Telnyx::Texml::Accounts::CallCallsParams::Params::ApplicationDefault::CustomHeader::OrHash
                    ]
                ).void
              end
              attr_writer :custom_headers

              # Enables Deepfake Detection on the dialed call. When enabled, audio from the
              # remote party is analyzed to determine whether the voice is AI-generated. Results
              # are delivered asynchronously via a callback.
              sig do
                returns(
                  T.nilable(
                    Telnyx::Texml::Accounts::CallCallsParams::Params::ApplicationDefault::DeepfakeDetection::OrSymbol
                  )
                )
              end
              attr_reader :deepfake_detection

              sig do
                params(
                  deepfake_detection:
                    Telnyx::Texml::Accounts::CallCallsParams::Params::ApplicationDefault::DeepfakeDetection::OrSymbol
                ).void
              end
              attr_writer :deepfake_detection

              # HTTP request type used for `DeepfakeDetectionCallbackUrl`.
              sig do
                returns(
                  T.nilable(
                    Telnyx::Texml::Accounts::CallCallsParams::Params::ApplicationDefault::DeepfakeDetectionCallbackMethod::OrSymbol
                  )
                )
              end
              attr_reader :deepfake_detection_callback_method

              sig do
                params(
                  deepfake_detection_callback_method:
                    Telnyx::Texml::Accounts::CallCallsParams::Params::ApplicationDefault::DeepfakeDetectionCallbackMethod::OrSymbol
                ).void
              end
              attr_writer :deepfake_detection_callback_method

              # URL destination for Telnyx to send deepfake detection callback events to for the
              # call.
              sig { returns(T.nilable(String)) }
              attr_reader :deepfake_detection_callback_url

              sig { params(deepfake_detection_callback_url: String).void }
              attr_writer :deepfake_detection_callback_url

              # Allows you to chose between Premium and Standard detections.
              sig do
                returns(
                  T.nilable(
                    Telnyx::Texml::Accounts::CallCallsParams::Params::ApplicationDefault::DetectionMode::OrSymbol
                  )
                )
              end
              attr_reader :detection_mode

              sig do
                params(
                  detection_mode:
                    Telnyx::Texml::Accounts::CallCallsParams::Params::ApplicationDefault::DetectionMode::OrSymbol
                ).void
              end
              attr_writer :detection_mode

              # A failover URL for which Telnyx will retrieve the TeXML call instructions if the
              # `Url` is not responding.
              sig { returns(T.nilable(String)) }
              attr_reader :fallback_url

              sig { params(fallback_url: String).void }
              attr_writer :fallback_url

              # The phone number of the party that initiated the call. Phone numbers are
              # formatted with a `+` and country code.
              sig { returns(T.nilable(String)) }
              attr_reader :from

              sig { params(from: String).void }
              attr_writer :from

              # Enables Answering Machine Detection.
              sig do
                returns(
                  T.nilable(
                    Telnyx::Texml::Accounts::CallCallsParams::Params::ApplicationDefault::MachineDetection::OrSymbol
                  )
                )
              end
              attr_reader :machine_detection

              sig do
                params(
                  machine_detection:
                    Telnyx::Texml::Accounts::CallCallsParams::Params::ApplicationDefault::MachineDetection::OrSymbol
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

              sig do
                params(machine_detection_speech_end_threshold: Integer).void
              end
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

              # Defines whether media should be encrypted on the call. When set to `SRTP`, the
              # call will use Secure Real-time Transport Protocol for media encryption. When set
              # to `DTLS`, the call will use DTLS for media encryption. Only supported for SIP
              # destinations.
              sig do
                returns(
                  T.nilable(
                    Telnyx::Texml::Accounts::CallCallsParams::Params::ApplicationDefault::MediaEncryption::OrSymbol
                  )
                )
              end
              attr_reader :media_encryption

              sig do
                params(
                  media_encryption:
                    Telnyx::Texml::Accounts::CallCallsParams::Params::ApplicationDefault::MediaEncryption::OrSymbol
                ).void
              end
              attr_writer :media_encryption

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
                    Telnyx::Texml::Accounts::CallCallsParams::Params::ApplicationDefault::RecordingChannels::OrSymbol
                  )
                )
              end
              attr_reader :recording_channels

              sig do
                params(
                  recording_channels:
                    Telnyx::Texml::Accounts::CallCallsParams::Params::ApplicationDefault::RecordingChannels::OrSymbol
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
                    Telnyx::Texml::Accounts::CallCallsParams::Params::ApplicationDefault::RecordingStatusCallbackMethod::OrSymbol
                  )
                )
              end
              attr_reader :recording_status_callback_method

              sig do
                params(
                  recording_status_callback_method:
                    Telnyx::Texml::Accounts::CallCallsParams::Params::ApplicationDefault::RecordingStatusCallbackMethod::OrSymbol
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
                    Telnyx::Texml::Accounts::CallCallsParams::Params::ApplicationDefault::RecordingTrack::OrSymbol
                  )
                )
              end
              attr_reader :recording_track

              sig do
                params(
                  recording_track:
                    Telnyx::Texml::Accounts::CallCallsParams::Params::ApplicationDefault::RecordingTrack::OrSymbol
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
                    Telnyx::Texml::Accounts::CallCallsParams::Params::ApplicationDefault::SipRegion::OrSymbol
                  )
                )
              end
              attr_reader :sip_region

              sig do
                params(
                  sip_region:
                    Telnyx::Texml::Accounts::CallCallsParams::Params::ApplicationDefault::SipRegion::OrSymbol
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
                    Telnyx::Texml::Accounts::CallCallsParams::Params::ApplicationDefault::StatusCallbackEvent::OrSymbol
                  )
                )
              end
              attr_reader :status_callback_event

              sig do
                params(
                  status_callback_event:
                    Telnyx::Texml::Accounts::CallCallsParams::Params::ApplicationDefault::StatusCallbackEvent::OrSymbol
                ).void
              end
              attr_writer :status_callback_event

              # HTTP request type used for `StatusCallback`.
              sig do
                returns(
                  T.nilable(
                    Telnyx::Texml::Accounts::CallCallsParams::Params::ApplicationDefault::StatusCallbackMethod::OrSymbol
                  )
                )
              end
              attr_reader :status_callback_method

              sig do
                params(
                  status_callback_method:
                    Telnyx::Texml::Accounts::CallCallsParams::Params::ApplicationDefault::StatusCallbackMethod::OrSymbol
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
                    Telnyx::Texml::Accounts::CallCallsParams::Params::ApplicationDefault::SupervisingRole::OrSymbol
                  )
                )
              end
              attr_reader :supervising_role

              sig do
                params(
                  supervising_role:
                    Telnyx::Texml::Accounts::CallCallsParams::Params::ApplicationDefault::SupervisingRole::OrSymbol
                ).void
              end
              attr_writer :supervising_role

              sig { returns(T.nilable(String)) }
              attr_accessor :texml

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

              # The phone number of the called party. Phone numbers are formatted with a `+` and
              # country code.
              sig { returns(T.nilable(String)) }
              attr_reader :to

              sig { params(to: String).void }
              attr_writer :to

              # Whether to trim any leading and trailing silence from the recording. Defaults to
              # `trim-silence`.
              sig do
                returns(
                  T.nilable(
                    Telnyx::Texml::Accounts::CallCallsParams::Params::ApplicationDefault::Trim::OrSymbol
                  )
                )
              end
              attr_reader :trim

              sig do
                params(
                  trim:
                    Telnyx::Texml::Accounts::CallCallsParams::Params::ApplicationDefault::Trim::OrSymbol
                ).void
              end
              attr_writer :trim

              sig { returns(T.nilable(String)) }
              attr_accessor :url

              # HTTP request type used for `Url`. The default value is inherited from TeXML
              # Application setting.
              sig do
                returns(
                  T.nilable(
                    Telnyx::Texml::Accounts::CallCallsParams::Params::ApplicationDefault::URLMethod::OrSymbol
                  )
                )
              end
              attr_reader :url_method

              sig do
                params(
                  url_method:
                    Telnyx::Texml::Accounts::CallCallsParams::Params::ApplicationDefault::URLMethod::OrSymbol
                ).void
              end
              attr_writer :url_method

              sig do
                params(
                  application_sid: String,
                  async_amd: T::Boolean,
                  async_amd_status_callback: String,
                  async_amd_status_callback_method:
                    Telnyx::Texml::Accounts::CallCallsParams::Params::ApplicationDefault::AsyncAmdStatusCallbackMethod::OrSymbol,
                  caller_id: String,
                  cancel_playback_on_detect_message_end: T::Boolean,
                  cancel_playback_on_machine_detection: T::Boolean,
                  custom_headers:
                    T::Array[
                      Telnyx::Texml::Accounts::CallCallsParams::Params::ApplicationDefault::CustomHeader::OrHash
                    ],
                  deepfake_detection:
                    Telnyx::Texml::Accounts::CallCallsParams::Params::ApplicationDefault::DeepfakeDetection::OrSymbol,
                  deepfake_detection_callback_method:
                    Telnyx::Texml::Accounts::CallCallsParams::Params::ApplicationDefault::DeepfakeDetectionCallbackMethod::OrSymbol,
                  deepfake_detection_callback_url: String,
                  detection_mode:
                    Telnyx::Texml::Accounts::CallCallsParams::Params::ApplicationDefault::DetectionMode::OrSymbol,
                  fallback_url: String,
                  from: String,
                  machine_detection:
                    Telnyx::Texml::Accounts::CallCallsParams::Params::ApplicationDefault::MachineDetection::OrSymbol,
                  machine_detection_silence_timeout: Integer,
                  machine_detection_speech_end_threshold: Integer,
                  machine_detection_speech_threshold: Integer,
                  machine_detection_timeout: Integer,
                  media_encryption:
                    Telnyx::Texml::Accounts::CallCallsParams::Params::ApplicationDefault::MediaEncryption::OrSymbol,
                  preferred_codecs: String,
                  record: T::Boolean,
                  recording_channels:
                    Telnyx::Texml::Accounts::CallCallsParams::Params::ApplicationDefault::RecordingChannels::OrSymbol,
                  recording_status_callback: String,
                  recording_status_callback_event: String,
                  recording_status_callback_method:
                    Telnyx::Texml::Accounts::CallCallsParams::Params::ApplicationDefault::RecordingStatusCallbackMethod::OrSymbol,
                  recording_timeout: Integer,
                  recording_track:
                    Telnyx::Texml::Accounts::CallCallsParams::Params::ApplicationDefault::RecordingTrack::OrSymbol,
                  send_recording_url: T::Boolean,
                  sip_auth_password: String,
                  sip_auth_username: String,
                  sip_region:
                    Telnyx::Texml::Accounts::CallCallsParams::Params::ApplicationDefault::SipRegion::OrSymbol,
                  status_callback: String,
                  status_callback_event:
                    Telnyx::Texml::Accounts::CallCallsParams::Params::ApplicationDefault::StatusCallbackEvent::OrSymbol,
                  status_callback_method:
                    Telnyx::Texml::Accounts::CallCallsParams::Params::ApplicationDefault::StatusCallbackMethod::OrSymbol,
                  supervise_call_sid: String,
                  supervising_role:
                    Telnyx::Texml::Accounts::CallCallsParams::Params::ApplicationDefault::SupervisingRole::OrSymbol,
                  texml: T.nilable(String),
                  time_limit: Integer,
                  timeout: Integer,
                  to: String,
                  trim:
                    Telnyx::Texml::Accounts::CallCallsParams::Params::ApplicationDefault::Trim::OrSymbol,
                  url: T.nilable(String),
                  url_method:
                    Telnyx::Texml::Accounts::CallCallsParams::Params::ApplicationDefault::URLMethod::OrSymbol
                ).returns(T.attached_class)
              end
              def self.new(
                # The ID of the TeXML Application.
                application_sid: nil,
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
                # Enables Deepfake Detection on the dialed call. When enabled, audio from the
                # remote party is analyzed to determine whether the voice is AI-generated. Results
                # are delivered asynchronously via a callback.
                deepfake_detection: nil,
                # HTTP request type used for `DeepfakeDetectionCallbackUrl`.
                deepfake_detection_callback_method: nil,
                # URL destination for Telnyx to send deepfake detection callback events to for the
                # call.
                deepfake_detection_callback_url: nil,
                # Allows you to chose between Premium and Standard detections.
                detection_mode: nil,
                # A failover URL for which Telnyx will retrieve the TeXML call instructions if the
                # `Url` is not responding.
                fallback_url: nil,
                # The phone number of the party that initiated the call. Phone numbers are
                # formatted with a `+` and country code.
                from: nil,
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
                # Defines whether media should be encrypted on the call. When set to `SRTP`, the
                # call will use Secure Real-time Transport Protocol for media encryption. When set
                # to `DTLS`, the call will use DTLS for media encryption. Only supported for SIP
                # destinations.
                media_encryption: nil,
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
                texml: nil,
                # The maximum duration of the call in seconds. The minimum value is 30 and the
                # maximum value is 14400 (4 hours). Default is 14400 seconds.
                time_limit: nil,
                # The number of seconds to wait for the called party to answer the call before the
                # call is canceled. The minimum value is 5 and the maximum value is 120. Default
                # is 30 seconds.
                timeout: nil,
                # The phone number of the called party. Phone numbers are formatted with a `+` and
                # country code.
                to: nil,
                # Whether to trim any leading and trailing silence from the recording. Defaults to
                # `trim-silence`.
                trim: nil,
                url: nil,
                # HTTP request type used for `Url`. The default value is inherited from TeXML
                # Application setting.
                url_method: nil
              )
              end

              sig do
                override.returns(
                  {
                    application_sid: String,
                    async_amd: T::Boolean,
                    async_amd_status_callback: String,
                    async_amd_status_callback_method:
                      Telnyx::Texml::Accounts::CallCallsParams::Params::ApplicationDefault::AsyncAmdStatusCallbackMethod::OrSymbol,
                    caller_id: String,
                    cancel_playback_on_detect_message_end: T::Boolean,
                    cancel_playback_on_machine_detection: T::Boolean,
                    custom_headers:
                      T::Array[
                        Telnyx::Texml::Accounts::CallCallsParams::Params::ApplicationDefault::CustomHeader
                      ],
                    deepfake_detection:
                      Telnyx::Texml::Accounts::CallCallsParams::Params::ApplicationDefault::DeepfakeDetection::OrSymbol,
                    deepfake_detection_callback_method:
                      Telnyx::Texml::Accounts::CallCallsParams::Params::ApplicationDefault::DeepfakeDetectionCallbackMethod::OrSymbol,
                    deepfake_detection_callback_url: String,
                    detection_mode:
                      Telnyx::Texml::Accounts::CallCallsParams::Params::ApplicationDefault::DetectionMode::OrSymbol,
                    fallback_url: String,
                    from: String,
                    machine_detection:
                      Telnyx::Texml::Accounts::CallCallsParams::Params::ApplicationDefault::MachineDetection::OrSymbol,
                    machine_detection_silence_timeout: Integer,
                    machine_detection_speech_end_threshold: Integer,
                    machine_detection_speech_threshold: Integer,
                    machine_detection_timeout: Integer,
                    media_encryption:
                      Telnyx::Texml::Accounts::CallCallsParams::Params::ApplicationDefault::MediaEncryption::OrSymbol,
                    preferred_codecs: String,
                    record: T::Boolean,
                    recording_channels:
                      Telnyx::Texml::Accounts::CallCallsParams::Params::ApplicationDefault::RecordingChannels::OrSymbol,
                    recording_status_callback: String,
                    recording_status_callback_event: String,
                    recording_status_callback_method:
                      Telnyx::Texml::Accounts::CallCallsParams::Params::ApplicationDefault::RecordingStatusCallbackMethod::OrSymbol,
                    recording_timeout: Integer,
                    recording_track:
                      Telnyx::Texml::Accounts::CallCallsParams::Params::ApplicationDefault::RecordingTrack::OrSymbol,
                    send_recording_url: T::Boolean,
                    sip_auth_password: String,
                    sip_auth_username: String,
                    sip_region:
                      Telnyx::Texml::Accounts::CallCallsParams::Params::ApplicationDefault::SipRegion::OrSymbol,
                    status_callback: String,
                    status_callback_event:
                      Telnyx::Texml::Accounts::CallCallsParams::Params::ApplicationDefault::StatusCallbackEvent::OrSymbol,
                    status_callback_method:
                      Telnyx::Texml::Accounts::CallCallsParams::Params::ApplicationDefault::StatusCallbackMethod::OrSymbol,
                    supervise_call_sid: String,
                    supervising_role:
                      Telnyx::Texml::Accounts::CallCallsParams::Params::ApplicationDefault::SupervisingRole::OrSymbol,
                    texml: T.nilable(String),
                    time_limit: Integer,
                    timeout: Integer,
                    to: String,
                    trim:
                      Telnyx::Texml::Accounts::CallCallsParams::Params::ApplicationDefault::Trim::OrSymbol,
                    url: T.nilable(String),
                    url_method:
                      Telnyx::Texml::Accounts::CallCallsParams::Params::ApplicationDefault::URLMethod::OrSymbol
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
                      Telnyx::Texml::Accounts::CallCallsParams::Params::ApplicationDefault::AsyncAmdStatusCallbackMethod
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                GET =
                  T.let(
                    :GET,
                    Telnyx::Texml::Accounts::CallCallsParams::Params::ApplicationDefault::AsyncAmdStatusCallbackMethod::TaggedSymbol
                  )
                POST =
                  T.let(
                    :POST,
                    Telnyx::Texml::Accounts::CallCallsParams::Params::ApplicationDefault::AsyncAmdStatusCallbackMethod::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Telnyx::Texml::Accounts::CallCallsParams::Params::ApplicationDefault::AsyncAmdStatusCallbackMethod::TaggedSymbol
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
                      Telnyx::Texml::Accounts::CallCallsParams::Params::ApplicationDefault::CustomHeader,
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

              # Enables Deepfake Detection on the dialed call. When enabled, audio from the
              # remote party is analyzed to determine whether the voice is AI-generated. Results
              # are delivered asynchronously via a callback.
              module DeepfakeDetection
                extend Telnyx::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      Telnyx::Texml::Accounts::CallCallsParams::Params::ApplicationDefault::DeepfakeDetection
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                ENABLE =
                  T.let(
                    :Enable,
                    Telnyx::Texml::Accounts::CallCallsParams::Params::ApplicationDefault::DeepfakeDetection::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Telnyx::Texml::Accounts::CallCallsParams::Params::ApplicationDefault::DeepfakeDetection::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end

              # HTTP request type used for `DeepfakeDetectionCallbackUrl`.
              module DeepfakeDetectionCallbackMethod
                extend Telnyx::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      Telnyx::Texml::Accounts::CallCallsParams::Params::ApplicationDefault::DeepfakeDetectionCallbackMethod
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                GET =
                  T.let(
                    :GET,
                    Telnyx::Texml::Accounts::CallCallsParams::Params::ApplicationDefault::DeepfakeDetectionCallbackMethod::TaggedSymbol
                  )
                POST =
                  T.let(
                    :POST,
                    Telnyx::Texml::Accounts::CallCallsParams::Params::ApplicationDefault::DeepfakeDetectionCallbackMethod::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Telnyx::Texml::Accounts::CallCallsParams::Params::ApplicationDefault::DeepfakeDetectionCallbackMethod::TaggedSymbol
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
                    T.all(
                      Symbol,
                      Telnyx::Texml::Accounts::CallCallsParams::Params::ApplicationDefault::DetectionMode
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                PREMIUM =
                  T.let(
                    :Premium,
                    Telnyx::Texml::Accounts::CallCallsParams::Params::ApplicationDefault::DetectionMode::TaggedSymbol
                  )
                REGULAR =
                  T.let(
                    :Regular,
                    Telnyx::Texml::Accounts::CallCallsParams::Params::ApplicationDefault::DetectionMode::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Telnyx::Texml::Accounts::CallCallsParams::Params::ApplicationDefault::DetectionMode::TaggedSymbol
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
                      Telnyx::Texml::Accounts::CallCallsParams::Params::ApplicationDefault::MachineDetection
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                ENABLE =
                  T.let(
                    :Enable,
                    Telnyx::Texml::Accounts::CallCallsParams::Params::ApplicationDefault::MachineDetection::TaggedSymbol
                  )
                DISABLE =
                  T.let(
                    :Disable,
                    Telnyx::Texml::Accounts::CallCallsParams::Params::ApplicationDefault::MachineDetection::TaggedSymbol
                  )
                DETECT_MESSAGE_END =
                  T.let(
                    :DetectMessageEnd,
                    Telnyx::Texml::Accounts::CallCallsParams::Params::ApplicationDefault::MachineDetection::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Telnyx::Texml::Accounts::CallCallsParams::Params::ApplicationDefault::MachineDetection::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end

              # Defines whether media should be encrypted on the call. When set to `SRTP`, the
              # call will use Secure Real-time Transport Protocol for media encryption. When set
              # to `DTLS`, the call will use DTLS for media encryption. Only supported for SIP
              # destinations.
              module MediaEncryption
                extend Telnyx::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      Telnyx::Texml::Accounts::CallCallsParams::Params::ApplicationDefault::MediaEncryption
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DISABLED =
                  T.let(
                    :disabled,
                    Telnyx::Texml::Accounts::CallCallsParams::Params::ApplicationDefault::MediaEncryption::TaggedSymbol
                  )
                SRTP =
                  T.let(
                    :SRTP,
                    Telnyx::Texml::Accounts::CallCallsParams::Params::ApplicationDefault::MediaEncryption::TaggedSymbol
                  )
                DTLS =
                  T.let(
                    :DTLS,
                    Telnyx::Texml::Accounts::CallCallsParams::Params::ApplicationDefault::MediaEncryption::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Telnyx::Texml::Accounts::CallCallsParams::Params::ApplicationDefault::MediaEncryption::TaggedSymbol
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
                      Telnyx::Texml::Accounts::CallCallsParams::Params::ApplicationDefault::RecordingChannels
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                MONO =
                  T.let(
                    :mono,
                    Telnyx::Texml::Accounts::CallCallsParams::Params::ApplicationDefault::RecordingChannels::TaggedSymbol
                  )
                DUAL =
                  T.let(
                    :dual,
                    Telnyx::Texml::Accounts::CallCallsParams::Params::ApplicationDefault::RecordingChannels::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Telnyx::Texml::Accounts::CallCallsParams::Params::ApplicationDefault::RecordingChannels::TaggedSymbol
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
                      Telnyx::Texml::Accounts::CallCallsParams::Params::ApplicationDefault::RecordingStatusCallbackMethod
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                GET =
                  T.let(
                    :GET,
                    Telnyx::Texml::Accounts::CallCallsParams::Params::ApplicationDefault::RecordingStatusCallbackMethod::TaggedSymbol
                  )
                POST =
                  T.let(
                    :POST,
                    Telnyx::Texml::Accounts::CallCallsParams::Params::ApplicationDefault::RecordingStatusCallbackMethod::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Telnyx::Texml::Accounts::CallCallsParams::Params::ApplicationDefault::RecordingStatusCallbackMethod::TaggedSymbol
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
                      Telnyx::Texml::Accounts::CallCallsParams::Params::ApplicationDefault::RecordingTrack
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                INBOUND =
                  T.let(
                    :inbound,
                    Telnyx::Texml::Accounts::CallCallsParams::Params::ApplicationDefault::RecordingTrack::TaggedSymbol
                  )
                OUTBOUND =
                  T.let(
                    :outbound,
                    Telnyx::Texml::Accounts::CallCallsParams::Params::ApplicationDefault::RecordingTrack::TaggedSymbol
                  )
                BOTH =
                  T.let(
                    :both,
                    Telnyx::Texml::Accounts::CallCallsParams::Params::ApplicationDefault::RecordingTrack::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Telnyx::Texml::Accounts::CallCallsParams::Params::ApplicationDefault::RecordingTrack::TaggedSymbol
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
                      Telnyx::Texml::Accounts::CallCallsParams::Params::ApplicationDefault::SipRegion
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                US =
                  T.let(
                    :US,
                    Telnyx::Texml::Accounts::CallCallsParams::Params::ApplicationDefault::SipRegion::TaggedSymbol
                  )
                EUROPE =
                  T.let(
                    :Europe,
                    Telnyx::Texml::Accounts::CallCallsParams::Params::ApplicationDefault::SipRegion::TaggedSymbol
                  )
                CANADA =
                  T.let(
                    :Canada,
                    Telnyx::Texml::Accounts::CallCallsParams::Params::ApplicationDefault::SipRegion::TaggedSymbol
                  )
                AUSTRALIA =
                  T.let(
                    :Australia,
                    Telnyx::Texml::Accounts::CallCallsParams::Params::ApplicationDefault::SipRegion::TaggedSymbol
                  )
                MIDDLE_EAST =
                  T.let(
                    :"Middle East",
                    Telnyx::Texml::Accounts::CallCallsParams::Params::ApplicationDefault::SipRegion::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Telnyx::Texml::Accounts::CallCallsParams::Params::ApplicationDefault::SipRegion::TaggedSymbol
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
                      Telnyx::Texml::Accounts::CallCallsParams::Params::ApplicationDefault::StatusCallbackEvent
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                INITIATED =
                  T.let(
                    :initiated,
                    Telnyx::Texml::Accounts::CallCallsParams::Params::ApplicationDefault::StatusCallbackEvent::TaggedSymbol
                  )
                RINGING =
                  T.let(
                    :ringing,
                    Telnyx::Texml::Accounts::CallCallsParams::Params::ApplicationDefault::StatusCallbackEvent::TaggedSymbol
                  )
                ANSWERED =
                  T.let(
                    :answered,
                    Telnyx::Texml::Accounts::CallCallsParams::Params::ApplicationDefault::StatusCallbackEvent::TaggedSymbol
                  )
                COMPLETED =
                  T.let(
                    :completed,
                    Telnyx::Texml::Accounts::CallCallsParams::Params::ApplicationDefault::StatusCallbackEvent::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Telnyx::Texml::Accounts::CallCallsParams::Params::ApplicationDefault::StatusCallbackEvent::TaggedSymbol
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
                      Telnyx::Texml::Accounts::CallCallsParams::Params::ApplicationDefault::StatusCallbackMethod
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                GET =
                  T.let(
                    :GET,
                    Telnyx::Texml::Accounts::CallCallsParams::Params::ApplicationDefault::StatusCallbackMethod::TaggedSymbol
                  )
                POST =
                  T.let(
                    :POST,
                    Telnyx::Texml::Accounts::CallCallsParams::Params::ApplicationDefault::StatusCallbackMethod::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Telnyx::Texml::Accounts::CallCallsParams::Params::ApplicationDefault::StatusCallbackMethod::TaggedSymbol
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
                      Telnyx::Texml::Accounts::CallCallsParams::Params::ApplicationDefault::SupervisingRole
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                BARGE =
                  T.let(
                    :barge,
                    Telnyx::Texml::Accounts::CallCallsParams::Params::ApplicationDefault::SupervisingRole::TaggedSymbol
                  )
                WHISPER =
                  T.let(
                    :whisper,
                    Telnyx::Texml::Accounts::CallCallsParams::Params::ApplicationDefault::SupervisingRole::TaggedSymbol
                  )
                MONITOR =
                  T.let(
                    :monitor,
                    Telnyx::Texml::Accounts::CallCallsParams::Params::ApplicationDefault::SupervisingRole::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Telnyx::Texml::Accounts::CallCallsParams::Params::ApplicationDefault::SupervisingRole::TaggedSymbol
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
                    T.all(
                      Symbol,
                      Telnyx::Texml::Accounts::CallCallsParams::Params::ApplicationDefault::Trim
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                TRIM_SILENCE =
                  T.let(
                    :"trim-silence",
                    Telnyx::Texml::Accounts::CallCallsParams::Params::ApplicationDefault::Trim::TaggedSymbol
                  )
                DO_NOT_TRIM =
                  T.let(
                    :"do-not-trim",
                    Telnyx::Texml::Accounts::CallCallsParams::Params::ApplicationDefault::Trim::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Telnyx::Texml::Accounts::CallCallsParams::Params::ApplicationDefault::Trim::TaggedSymbol
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
                      Telnyx::Texml::Accounts::CallCallsParams::Params::ApplicationDefault::URLMethod
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                GET =
                  T.let(
                    :GET,
                    Telnyx::Texml::Accounts::CallCallsParams::Params::ApplicationDefault::URLMethod::TaggedSymbol
                  )
                POST =
                  T.let(
                    :POST,
                    Telnyx::Texml::Accounts::CallCallsParams::Params::ApplicationDefault::URLMethod::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Telnyx::Texml::Accounts::CallCallsParams::Params::ApplicationDefault::URLMethod::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end

            sig do
              override.returns(
                T::Array[
                  Telnyx::Texml::Accounts::CallCallsParams::Params::Variants
                ]
              )
            end
            def self.variants
            end
          end
        end
      end
    end
  end
end

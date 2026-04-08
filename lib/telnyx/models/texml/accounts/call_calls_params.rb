# frozen_string_literal: true

module Telnyx
  module Models
    module Texml
      module Accounts
        # @see Telnyx::Resources::Texml::Accounts::Calls#calls
        class CallCallsParams < Telnyx::Internal::Type::BaseModel
          extend Telnyx::Internal::Type::RequestParameters::Converter
          include Telnyx::Internal::Type::RequestParameters

          # @!attribute account_sid
          #
          #   @return [String]
          required :account_sid, String

          # @!attribute body
          #
          #   @return [Telnyx::Models::Texml::Accounts::CallCallsParams::Body::WithURL, Telnyx::Models::Texml::Accounts::CallCallsParams::Body::WithTeXml, Telnyx::Models::Texml::Accounts::CallCallsParams::Body::ApplicationDefault]
          required :body, union: -> { Telnyx::Texml::Accounts::CallCallsParams::Body }

          # @!method initialize(account_sid:, body:, request_options: {})
          #   @param account_sid [String]
          #   @param body [Telnyx::Models::Texml::Accounts::CallCallsParams::Body::WithURL, Telnyx::Models::Texml::Accounts::CallCallsParams::Body::WithTeXml, Telnyx::Models::Texml::Accounts::CallCallsParams::Body::ApplicationDefault]
          #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

          module Body
            extend Telnyx::Internal::Type::Union

            variant -> { Telnyx::Texml::Accounts::CallCallsParams::Body::WithURL }

            variant -> { Telnyx::Texml::Accounts::CallCallsParams::Body::WithTeXml }

            variant -> { Telnyx::Texml::Accounts::CallCallsParams::Body::ApplicationDefault }

            class WithURL < Telnyx::Internal::Type::BaseModel
              # @!attribute url
              #   The URL from which Telnyx will retrieve the TeXML call instructions.
              #
              #   @return [String]
              required :url, String, api_name: :Url

              # @!attribute application_sid
              #   The ID of the TeXML Application.
              #
              #   @return [String, nil]
              optional :application_sid, String, api_name: :ApplicationSid

              # @!attribute async_amd
              #   Select whether to perform answering machine detection in the background. By
              #   default execution is blocked until Answering Machine Detection is completed.
              #
              #   @return [Boolean, nil]
              optional :async_amd, Telnyx::Internal::Type::Boolean, api_name: :AsyncAmd

              # @!attribute async_amd_status_callback
              #   URL destination for Telnyx to send AMD callback events to for the call.
              #
              #   @return [String, nil]
              optional :async_amd_status_callback, String, api_name: :AsyncAmdStatusCallback

              # @!attribute async_amd_status_callback_method
              #   HTTP request type used for `AsyncAmdStatusCallback`. The default value is
              #   inherited from TeXML Application setting.
              #
              #   @return [Symbol, Telnyx::Models::Texml::Accounts::CallCallsParams::Body::WithURL::AsyncAmdStatusCallbackMethod, nil]
              optional :async_amd_status_callback_method,
                       enum: -> {
                         Telnyx::Texml::Accounts::CallCallsParams::Body::WithURL::AsyncAmdStatusCallbackMethod
                       },
                       api_name: :AsyncAmdStatusCallbackMethod

              # @!attribute caller_id
              #   To be used as the caller id name (SIP From Display Name) presented to the
              #   destination (`To` number). The string should have a maximum of 128 characters,
              #   containing only letters, numbers, spaces, and `-_~!.+` special characters. If
              #   ommited, the display name will be the same as the number in the `From` field.
              #
              #   @return [String, nil]
              optional :caller_id, String, api_name: :CallerId

              # @!attribute cancel_playback_on_detect_message_end
              #   Whether to cancel ongoing playback on `greeting ended` detection. Defaults to
              #   `true`.
              #
              #   @return [Boolean, nil]
              optional :cancel_playback_on_detect_message_end,
                       Telnyx::Internal::Type::Boolean,
                       api_name: :CancelPlaybackOnDetectMessageEnd

              # @!attribute cancel_playback_on_machine_detection
              #   Whether to cancel ongoing playback on `machine` detection. Defaults to `true`.
              #
              #   @return [Boolean, nil]
              optional :cancel_playback_on_machine_detection,
                       Telnyx::Internal::Type::Boolean,
                       api_name: :CancelPlaybackOnMachineDetection

              # @!attribute custom_headers
              #   Custom HTTP headers to be sent with the call. Each header should be an object
              #   with 'name' and 'value' properties.
              #
              #   @return [Array<Telnyx::Models::Texml::Accounts::CallCallsParams::Body::WithURL::CustomHeader>, nil]
              optional :custom_headers,
                       -> {
                         Telnyx::Internal::Type::ArrayOf[Telnyx::Texml::Accounts::CallCallsParams::Body::WithURL::CustomHeader]
                       },
                       api_name: :CustomHeaders

              # @!attribute detection_mode
              #   Allows you to chose between Premium and Standard detections.
              #
              #   @return [Symbol, Telnyx::Models::Texml::Accounts::CallCallsParams::Body::WithURL::DetectionMode, nil]
              optional :detection_mode,
                       enum: -> { Telnyx::Texml::Accounts::CallCallsParams::Body::WithURL::DetectionMode },
                       api_name: :DetectionMode

              # @!attribute fallback_url
              #   A failover URL for which Telnyx will retrieve the TeXML call instructions if the
              #   `Url` is not responding.
              #
              #   @return [String, nil]
              optional :fallback_url, String, api_name: :FallbackUrl

              # @!attribute from
              #   The phone number of the party that initiated the call. Phone numbers are
              #   formatted with a `+` and country code.
              #
              #   @return [String, nil]
              optional :from, String, api_name: :From

              # @!attribute machine_detection
              #   Enables Answering Machine Detection.
              #
              #   @return [Symbol, Telnyx::Models::Texml::Accounts::CallCallsParams::Body::WithURL::MachineDetection, nil]
              optional :machine_detection,
                       enum: -> { Telnyx::Texml::Accounts::CallCallsParams::Body::WithURL::MachineDetection },
                       api_name: :MachineDetection

              # @!attribute machine_detection_silence_timeout
              #   If initial silence duration is greater than this value, consider it a machine.
              #   Ignored when `premium` detection is used.
              #
              #   @return [Integer, nil]
              optional :machine_detection_silence_timeout, Integer, api_name: :MachineDetectionSilenceTimeout

              # @!attribute machine_detection_speech_end_threshold
              #   Silence duration threshold after a greeting message or voice for it be
              #   considered human. Ignored when `premium` detection is used.
              #
              #   @return [Integer, nil]
              optional :machine_detection_speech_end_threshold,
                       Integer,
                       api_name: :MachineDetectionSpeechEndThreshold

              # @!attribute machine_detection_speech_threshold
              #   Maximum threshold of a human greeting. If greeting longer than this value,
              #   considered machine. Ignored when `premium` detection is used.
              #
              #   @return [Integer, nil]
              optional :machine_detection_speech_threshold,
                       Integer,
                       api_name: :MachineDetectionSpeechThreshold

              # @!attribute machine_detection_timeout
              #   Maximum timeout threshold in milliseconds for overall detection.
              #
              #   @return [Integer, nil]
              optional :machine_detection_timeout, Integer, api_name: :MachineDetectionTimeout

              # @!attribute media_encryption
              #   Defines whether media should be encrypted on the call. When set to `SRTP`, the
              #   call will use Secure Real-time Transport Protocol for media encryption. When set
              #   to `DTLS`, the call will use DTLS for media encryption. Only supported for SIP
              #   destinations.
              #
              #   @return [Symbol, Telnyx::Models::Texml::Accounts::CallCallsParams::Body::WithURL::MediaEncryption, nil]
              optional :media_encryption,
                       enum: -> { Telnyx::Texml::Accounts::CallCallsParams::Body::WithURL::MediaEncryption },
                       api_name: :MediaEncryption

              # @!attribute preferred_codecs
              #   The list of comma-separated codecs to be offered on a call.
              #
              #   @return [String, nil]
              optional :preferred_codecs, String, api_name: :PreferredCodecs

              # @!attribute record
              #   Whether to record the entire participant's call leg. Defaults to `false`.
              #
              #   @return [Boolean, nil]
              optional :record, Telnyx::Internal::Type::Boolean, api_name: :Record

              # @!attribute recording_channels
              #   The number of channels in the final recording. Defaults to `mono`.
              #
              #   @return [Symbol, Telnyx::Models::Texml::Accounts::CallCallsParams::Body::WithURL::RecordingChannels, nil]
              optional :recording_channels,
                       enum: -> {
                         Telnyx::Texml::Accounts::CallCallsParams::Body::WithURL::RecordingChannels
                       },
                       api_name: :RecordingChannels

              # @!attribute recording_status_callback
              #   The URL the recording callbacks will be sent to.
              #
              #   @return [String, nil]
              optional :recording_status_callback, String, api_name: :RecordingStatusCallback

              # @!attribute recording_status_callback_event
              #   The changes to the recording's state that should generate a call to
              #   `RecoridngStatusCallback`. Can be: `in-progress`, `completed` and `absent`.
              #   Separate multiple values with a space. Defaults to `completed`.
              #
              #   @return [String, nil]
              optional :recording_status_callback_event, String, api_name: :RecordingStatusCallbackEvent

              # @!attribute recording_status_callback_method
              #   HTTP request type used for `RecordingStatusCallback`. Defaults to `POST`.
              #
              #   @return [Symbol, Telnyx::Models::Texml::Accounts::CallCallsParams::Body::WithURL::RecordingStatusCallbackMethod, nil]
              optional :recording_status_callback_method,
                       enum: -> {
                         Telnyx::Texml::Accounts::CallCallsParams::Body::WithURL::RecordingStatusCallbackMethod
                       },
                       api_name: :RecordingStatusCallbackMethod

              # @!attribute recording_timeout
              #   The number of seconds that Telnyx will wait for the recording to be stopped if
              #   silence is detected. The timer only starts when the speech is detected. Please
              #   note that the transcription is used to detect silence and the related charge
              #   will be applied. The minimum value is 0. The default value is 0 (infinite)
              #
              #   @return [Integer, nil]
              optional :recording_timeout, Integer, api_name: :RecordingTimeout

              # @!attribute recording_track
              #   The audio track to record for the call. The default is `both`.
              #
              #   @return [Symbol, Telnyx::Models::Texml::Accounts::CallCallsParams::Body::WithURL::RecordingTrack, nil]
              optional :recording_track,
                       enum: -> { Telnyx::Texml::Accounts::CallCallsParams::Body::WithURL::RecordingTrack },
                       api_name: :RecordingTrack

              # @!attribute send_recording_url
              #   Whether to send RecordingUrl in webhooks.
              #
              #   @return [Boolean, nil]
              optional :send_recording_url, Telnyx::Internal::Type::Boolean, api_name: :SendRecordingUrl

              # @!attribute sip_auth_password
              #   The password to use for SIP authentication.
              #
              #   @return [String, nil]
              optional :sip_auth_password, String, api_name: :SipAuthPassword

              # @!attribute sip_auth_username
              #   The username to use for SIP authentication.
              #
              #   @return [String, nil]
              optional :sip_auth_username, String, api_name: :SipAuthUsername

              # @!attribute sip_region
              #   Defines the SIP region to be used for the call.
              #
              #   @return [Symbol, Telnyx::Models::Texml::Accounts::CallCallsParams::Body::WithURL::SipRegion, nil]
              optional :sip_region,
                       enum: -> { Telnyx::Texml::Accounts::CallCallsParams::Body::WithURL::SipRegion },
                       api_name: :SipRegion

              # @!attribute status_callback
              #   URL destination for Telnyx to send status callback events to for the call.
              #
              #   @return [String, nil]
              optional :status_callback, String, api_name: :StatusCallback

              # @!attribute status_callback_event
              #   The call events for which Telnyx should send a webhook. Multiple events can be
              #   defined when separated by a space.
              #
              #   @return [Symbol, Telnyx::Models::Texml::Accounts::CallCallsParams::Body::WithURL::StatusCallbackEvent, nil]
              optional :status_callback_event,
                       enum: -> {
                         Telnyx::Texml::Accounts::CallCallsParams::Body::WithURL::StatusCallbackEvent
                       },
                       api_name: :StatusCallbackEvent

              # @!attribute status_callback_method
              #   HTTP request type used for `StatusCallback`.
              #
              #   @return [Symbol, Telnyx::Models::Texml::Accounts::CallCallsParams::Body::WithURL::StatusCallbackMethod, nil]
              optional :status_callback_method,
                       enum: -> {
                         Telnyx::Texml::Accounts::CallCallsParams::Body::WithURL::StatusCallbackMethod
                       },
                       api_name: :StatusCallbackMethod

              # @!attribute supervise_call_sid
              #   The call control ID of the existing call to supervise. When provided, the
              #   created leg will be added to the specified call in supervising mode. Status
              #   callbacks and action callbacks will NOT be sent for the supervising leg.
              #
              #   @return [String, nil]
              optional :supervise_call_sid, String, api_name: :SuperviseCallSid

              # @!attribute supervising_role
              #   The supervising role for the new leg. Determines the audio behavior: barge (hear
              #   both sides), whisper (only hear supervisor), monitor (hear both sides but
              #   supervisor muted). Default: barge
              #
              #   @return [Symbol, Telnyx::Models::Texml::Accounts::CallCallsParams::Body::WithURL::SupervisingRole, nil]
              optional :supervising_role,
                       enum: -> { Telnyx::Texml::Accounts::CallCallsParams::Body::WithURL::SupervisingRole },
                       api_name: :SupervisingRole

              # @!attribute texml
              #
              #   @return [Object, nil]
              optional :texml, Telnyx::Internal::Type::Unknown, api_name: :Texml

              # @!attribute time_limit
              #   The maximum duration of the call in seconds. The minimum value is 30 and the
              #   maximum value is 14400 (4 hours). Default is 14400 seconds.
              #
              #   @return [Integer, nil]
              optional :time_limit, Integer, api_name: :TimeLimit

              # @!attribute timeout
              #   The number of seconds to wait for the called party to answer the call before the
              #   call is canceled. The minimum value is 5 and the maximum value is 120. Default
              #   is 30 seconds.
              #
              #   @return [Integer, nil]
              optional :timeout, Integer, api_name: :Timeout

              # @!attribute to
              #   The phone number of the called party. Phone numbers are formatted with a `+` and
              #   country code.
              #
              #   @return [String, nil]
              optional :to, String, api_name: :To

              # @!attribute trim
              #   Whether to trim any leading and trailing silence from the recording. Defaults to
              #   `trim-silence`.
              #
              #   @return [Symbol, Telnyx::Models::Texml::Accounts::CallCallsParams::Body::WithURL::Trim, nil]
              optional :trim,
                       enum: -> { Telnyx::Texml::Accounts::CallCallsParams::Body::WithURL::Trim },
                       api_name: :Trim

              # @!attribute url_method
              #   HTTP request type used for `Url`. The default value is inherited from TeXML
              #   Application setting.
              #
              #   @return [Symbol, Telnyx::Models::Texml::Accounts::CallCallsParams::Body::WithURL::URLMethod, nil]
              optional :url_method,
                       enum: -> { Telnyx::Texml::Accounts::CallCallsParams::Body::WithURL::URLMethod },
                       api_name: :UrlMethod

              # @!method initialize(url:, application_sid: nil, async_amd: nil, async_amd_status_callback: nil, async_amd_status_callback_method: nil, caller_id: nil, cancel_playback_on_detect_message_end: nil, cancel_playback_on_machine_detection: nil, custom_headers: nil, detection_mode: nil, fallback_url: nil, from: nil, machine_detection: nil, machine_detection_silence_timeout: nil, machine_detection_speech_end_threshold: nil, machine_detection_speech_threshold: nil, machine_detection_timeout: nil, media_encryption: nil, preferred_codecs: nil, record: nil, recording_channels: nil, recording_status_callback: nil, recording_status_callback_event: nil, recording_status_callback_method: nil, recording_timeout: nil, recording_track: nil, send_recording_url: nil, sip_auth_password: nil, sip_auth_username: nil, sip_region: nil, status_callback: nil, status_callback_event: nil, status_callback_method: nil, supervise_call_sid: nil, supervising_role: nil, texml: nil, time_limit: nil, timeout: nil, to: nil, trim: nil, url_method: nil)
              #   Some parameter documentations has been truncated, see
              #   {Telnyx::Models::Texml::Accounts::CallCallsParams::Body::WithURL} for more
              #   details.
              #
              #   @param url [String] The URL from which Telnyx will retrieve the TeXML call instructions.
              #
              #   @param application_sid [String] The ID of the TeXML Application.
              #
              #   @param async_amd [Boolean] Select whether to perform answering machine detection in the background. By defa
              #
              #   @param async_amd_status_callback [String] URL destination for Telnyx to send AMD callback events to for the call.
              #
              #   @param async_amd_status_callback_method [Symbol, Telnyx::Models::Texml::Accounts::CallCallsParams::Body::WithURL::AsyncAmdStatusCallbackMethod] HTTP request type used for `AsyncAmdStatusCallback`. The default value is inheri
              #
              #   @param caller_id [String] To be used as the caller id name (SIP From Display Name) presented to the destin
              #
              #   @param cancel_playback_on_detect_message_end [Boolean] Whether to cancel ongoing playback on `greeting ended` detection. Defaults to `t
              #
              #   @param cancel_playback_on_machine_detection [Boolean] Whether to cancel ongoing playback on `machine` detection. Defaults to `true`.
              #
              #   @param custom_headers [Array<Telnyx::Models::Texml::Accounts::CallCallsParams::Body::WithURL::CustomHeader>] Custom HTTP headers to be sent with the call. Each header should be an object wi
              #
              #   @param detection_mode [Symbol, Telnyx::Models::Texml::Accounts::CallCallsParams::Body::WithURL::DetectionMode] Allows you to chose between Premium and Standard detections.
              #
              #   @param fallback_url [String] A failover URL for which Telnyx will retrieve the TeXML call instructions if the
              #
              #   @param from [String] The phone number of the party that initiated the call. Phone numbers are formatt
              #
              #   @param machine_detection [Symbol, Telnyx::Models::Texml::Accounts::CallCallsParams::Body::WithURL::MachineDetection] Enables Answering Machine Detection.
              #
              #   @param machine_detection_silence_timeout [Integer] If initial silence duration is greater than this value, consider it a machine. I
              #
              #   @param machine_detection_speech_end_threshold [Integer] Silence duration threshold after a greeting message or voice for it be considere
              #
              #   @param machine_detection_speech_threshold [Integer] Maximum threshold of a human greeting. If greeting longer than this value, consi
              #
              #   @param machine_detection_timeout [Integer] Maximum timeout threshold in milliseconds for overall detection.
              #
              #   @param media_encryption [Symbol, Telnyx::Models::Texml::Accounts::CallCallsParams::Body::WithURL::MediaEncryption] Defines whether media should be encrypted on the call. When set to `SRTP`, the c
              #
              #   @param preferred_codecs [String] The list of comma-separated codecs to be offered on a call.
              #
              #   @param record [Boolean] Whether to record the entire participant's call leg. Defaults to `false`.
              #
              #   @param recording_channels [Symbol, Telnyx::Models::Texml::Accounts::CallCallsParams::Body::WithURL::RecordingChannels] The number of channels in the final recording. Defaults to `mono`.
              #
              #   @param recording_status_callback [String] The URL the recording callbacks will be sent to.
              #
              #   @param recording_status_callback_event [String] The changes to the recording's state that should generate a call to `RecoridngSt
              #
              #   @param recording_status_callback_method [Symbol, Telnyx::Models::Texml::Accounts::CallCallsParams::Body::WithURL::RecordingStatusCallbackMethod] HTTP request type used for `RecordingStatusCallback`. Defaults to `POST`.
              #
              #   @param recording_timeout [Integer] The number of seconds that Telnyx will wait for the recording to be stopped if s
              #
              #   @param recording_track [Symbol, Telnyx::Models::Texml::Accounts::CallCallsParams::Body::WithURL::RecordingTrack] The audio track to record for the call. The default is `both`.
              #
              #   @param send_recording_url [Boolean] Whether to send RecordingUrl in webhooks.
              #
              #   @param sip_auth_password [String] The password to use for SIP authentication.
              #
              #   @param sip_auth_username [String] The username to use for SIP authentication.
              #
              #   @param sip_region [Symbol, Telnyx::Models::Texml::Accounts::CallCallsParams::Body::WithURL::SipRegion] Defines the SIP region to be used for the call.
              #
              #   @param status_callback [String] URL destination for Telnyx to send status callback events to for the call.
              #
              #   @param status_callback_event [Symbol, Telnyx::Models::Texml::Accounts::CallCallsParams::Body::WithURL::StatusCallbackEvent] The call events for which Telnyx should send a webhook. Multiple events can be d
              #
              #   @param status_callback_method [Symbol, Telnyx::Models::Texml::Accounts::CallCallsParams::Body::WithURL::StatusCallbackMethod] HTTP request type used for `StatusCallback`.
              #
              #   @param supervise_call_sid [String] The call control ID of the existing call to supervise. When provided, the create
              #
              #   @param supervising_role [Symbol, Telnyx::Models::Texml::Accounts::CallCallsParams::Body::WithURL::SupervisingRole] The supervising role for the new leg. Determines the audio behavior: barge (hear
              #
              #   @param texml [Object]
              #
              #   @param time_limit [Integer] The maximum duration of the call in seconds. The minimum value is 30 and the max
              #
              #   @param timeout [Integer] The number of seconds to wait for the called party to answer the call before the
              #
              #   @param to [String] The phone number of the called party. Phone numbers are formatted with a `+` and
              #
              #   @param trim [Symbol, Telnyx::Models::Texml::Accounts::CallCallsParams::Body::WithURL::Trim] Whether to trim any leading and trailing silence from the recording. Defaults to
              #
              #   @param url_method [Symbol, Telnyx::Models::Texml::Accounts::CallCallsParams::Body::WithURL::URLMethod] HTTP request type used for `Url`. The default value is inherited from TeXML Appl

              # HTTP request type used for `AsyncAmdStatusCallback`. The default value is
              # inherited from TeXML Application setting.
              #
              # @see Telnyx::Models::Texml::Accounts::CallCallsParams::Body::WithURL#async_amd_status_callback_method
              module AsyncAmdStatusCallbackMethod
                extend Telnyx::Internal::Type::Enum

                GET = :GET
                POST = :POST

                # @!method self.values
                #   @return [Array<Symbol>]
              end

              class CustomHeader < Telnyx::Internal::Type::BaseModel
                # @!attribute name
                #   The name of the custom header
                #
                #   @return [String]
                required :name, String

                # @!attribute value
                #   The value of the custom header
                #
                #   @return [String]
                required :value, String

                # @!method initialize(name:, value:)
                #   @param name [String] The name of the custom header
                #
                #   @param value [String] The value of the custom header
              end

              # Allows you to chose between Premium and Standard detections.
              #
              # @see Telnyx::Models::Texml::Accounts::CallCallsParams::Body::WithURL#detection_mode
              module DetectionMode
                extend Telnyx::Internal::Type::Enum

                PREMIUM = :Premium
                REGULAR = :Regular

                # @!method self.values
                #   @return [Array<Symbol>]
              end

              # Enables Answering Machine Detection.
              #
              # @see Telnyx::Models::Texml::Accounts::CallCallsParams::Body::WithURL#machine_detection
              module MachineDetection
                extend Telnyx::Internal::Type::Enum

                ENABLE = :Enable
                DISABLE = :Disable
                DETECT_MESSAGE_END = :DetectMessageEnd

                # @!method self.values
                #   @return [Array<Symbol>]
              end

              # Defines whether media should be encrypted on the call. When set to `SRTP`, the
              # call will use Secure Real-time Transport Protocol for media encryption. When set
              # to `DTLS`, the call will use DTLS for media encryption. Only supported for SIP
              # destinations.
              #
              # @see Telnyx::Models::Texml::Accounts::CallCallsParams::Body::WithURL#media_encryption
              module MediaEncryption
                extend Telnyx::Internal::Type::Enum

                DISABLED = :disabled
                SRTP = :SRTP
                DTLS = :DTLS

                # @!method self.values
                #   @return [Array<Symbol>]
              end

              # The number of channels in the final recording. Defaults to `mono`.
              #
              # @see Telnyx::Models::Texml::Accounts::CallCallsParams::Body::WithURL#recording_channels
              module RecordingChannels
                extend Telnyx::Internal::Type::Enum

                MONO = :mono
                DUAL = :dual

                # @!method self.values
                #   @return [Array<Symbol>]
              end

              # HTTP request type used for `RecordingStatusCallback`. Defaults to `POST`.
              #
              # @see Telnyx::Models::Texml::Accounts::CallCallsParams::Body::WithURL#recording_status_callback_method
              module RecordingStatusCallbackMethod
                extend Telnyx::Internal::Type::Enum

                GET = :GET
                POST = :POST

                # @!method self.values
                #   @return [Array<Symbol>]
              end

              # The audio track to record for the call. The default is `both`.
              #
              # @see Telnyx::Models::Texml::Accounts::CallCallsParams::Body::WithURL#recording_track
              module RecordingTrack
                extend Telnyx::Internal::Type::Enum

                INBOUND = :inbound
                OUTBOUND = :outbound
                BOTH = :both

                # @!method self.values
                #   @return [Array<Symbol>]
              end

              # Defines the SIP region to be used for the call.
              #
              # @see Telnyx::Models::Texml::Accounts::CallCallsParams::Body::WithURL#sip_region
              module SipRegion
                extend Telnyx::Internal::Type::Enum

                US = :US
                EUROPE = :Europe
                CANADA = :Canada
                AUSTRALIA = :Australia
                MIDDLE_EAST = :"Middle East"

                # @!method self.values
                #   @return [Array<Symbol>]
              end

              # The call events for which Telnyx should send a webhook. Multiple events can be
              # defined when separated by a space.
              #
              # @see Telnyx::Models::Texml::Accounts::CallCallsParams::Body::WithURL#status_callback_event
              module StatusCallbackEvent
                extend Telnyx::Internal::Type::Enum

                INITIATED = :initiated
                RINGING = :ringing
                ANSWERED = :answered
                COMPLETED = :completed

                # @!method self.values
                #   @return [Array<Symbol>]
              end

              # HTTP request type used for `StatusCallback`.
              #
              # @see Telnyx::Models::Texml::Accounts::CallCallsParams::Body::WithURL#status_callback_method
              module StatusCallbackMethod
                extend Telnyx::Internal::Type::Enum

                GET = :GET
                POST = :POST

                # @!method self.values
                #   @return [Array<Symbol>]
              end

              # The supervising role for the new leg. Determines the audio behavior: barge (hear
              # both sides), whisper (only hear supervisor), monitor (hear both sides but
              # supervisor muted). Default: barge
              #
              # @see Telnyx::Models::Texml::Accounts::CallCallsParams::Body::WithURL#supervising_role
              module SupervisingRole
                extend Telnyx::Internal::Type::Enum

                BARGE = :barge
                WHISPER = :whisper
                MONITOR = :monitor

                # @!method self.values
                #   @return [Array<Symbol>]
              end

              # Whether to trim any leading and trailing silence from the recording. Defaults to
              # `trim-silence`.
              #
              # @see Telnyx::Models::Texml::Accounts::CallCallsParams::Body::WithURL#trim
              module Trim
                extend Telnyx::Internal::Type::Enum

                TRIM_SILENCE = :"trim-silence"
                DO_NOT_TRIM = :"do-not-trim"

                # @!method self.values
                #   @return [Array<Symbol>]
              end

              # HTTP request type used for `Url`. The default value is inherited from TeXML
              # Application setting.
              #
              # @see Telnyx::Models::Texml::Accounts::CallCallsParams::Body::WithURL#url_method
              module URLMethod
                extend Telnyx::Internal::Type::Enum

                GET = :GET
                POST = :POST

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            class WithTeXml < Telnyx::Internal::Type::BaseModel
              # @!attribute texml
              #   TeXML to be used as instructions for the call. If provided, the call will
              #   execute these instructions instead of fetching from the Url.
              #
              #   @return [String]
              required :texml, String, api_name: :Texml

              # @!attribute application_sid
              #   The ID of the TeXML Application.
              #
              #   @return [String, nil]
              optional :application_sid, String, api_name: :ApplicationSid

              # @!attribute async_amd
              #   Select whether to perform answering machine detection in the background. By
              #   default execution is blocked until Answering Machine Detection is completed.
              #
              #   @return [Boolean, nil]
              optional :async_amd, Telnyx::Internal::Type::Boolean, api_name: :AsyncAmd

              # @!attribute async_amd_status_callback
              #   URL destination for Telnyx to send AMD callback events to for the call.
              #
              #   @return [String, nil]
              optional :async_amd_status_callback, String, api_name: :AsyncAmdStatusCallback

              # @!attribute async_amd_status_callback_method
              #   HTTP request type used for `AsyncAmdStatusCallback`. The default value is
              #   inherited from TeXML Application setting.
              #
              #   @return [Symbol, Telnyx::Models::Texml::Accounts::CallCallsParams::Body::WithTeXml::AsyncAmdStatusCallbackMethod, nil]
              optional :async_amd_status_callback_method,
                       enum: -> {
                         Telnyx::Texml::Accounts::CallCallsParams::Body::WithTeXml::AsyncAmdStatusCallbackMethod
                       },
                       api_name: :AsyncAmdStatusCallbackMethod

              # @!attribute caller_id
              #   To be used as the caller id name (SIP From Display Name) presented to the
              #   destination (`To` number). The string should have a maximum of 128 characters,
              #   containing only letters, numbers, spaces, and `-_~!.+` special characters. If
              #   ommited, the display name will be the same as the number in the `From` field.
              #
              #   @return [String, nil]
              optional :caller_id, String, api_name: :CallerId

              # @!attribute cancel_playback_on_detect_message_end
              #   Whether to cancel ongoing playback on `greeting ended` detection. Defaults to
              #   `true`.
              #
              #   @return [Boolean, nil]
              optional :cancel_playback_on_detect_message_end,
                       Telnyx::Internal::Type::Boolean,
                       api_name: :CancelPlaybackOnDetectMessageEnd

              # @!attribute cancel_playback_on_machine_detection
              #   Whether to cancel ongoing playback on `machine` detection. Defaults to `true`.
              #
              #   @return [Boolean, nil]
              optional :cancel_playback_on_machine_detection,
                       Telnyx::Internal::Type::Boolean,
                       api_name: :CancelPlaybackOnMachineDetection

              # @!attribute custom_headers
              #   Custom HTTP headers to be sent with the call. Each header should be an object
              #   with 'name' and 'value' properties.
              #
              #   @return [Array<Telnyx::Models::Texml::Accounts::CallCallsParams::Body::WithTeXml::CustomHeader>, nil]
              optional :custom_headers,
                       -> {
                         Telnyx::Internal::Type::ArrayOf[Telnyx::Texml::Accounts::CallCallsParams::Body::WithTeXml::CustomHeader]
                       },
                       api_name: :CustomHeaders

              # @!attribute detection_mode
              #   Allows you to chose between Premium and Standard detections.
              #
              #   @return [Symbol, Telnyx::Models::Texml::Accounts::CallCallsParams::Body::WithTeXml::DetectionMode, nil]
              optional :detection_mode,
                       enum: -> { Telnyx::Texml::Accounts::CallCallsParams::Body::WithTeXml::DetectionMode },
                       api_name: :DetectionMode

              # @!attribute fallback_url
              #   A failover URL for which Telnyx will retrieve the TeXML call instructions if the
              #   `Url` is not responding.
              #
              #   @return [String, nil]
              optional :fallback_url, String, api_name: :FallbackUrl

              # @!attribute from
              #   The phone number of the party that initiated the call. Phone numbers are
              #   formatted with a `+` and country code.
              #
              #   @return [String, nil]
              optional :from, String, api_name: :From

              # @!attribute machine_detection
              #   Enables Answering Machine Detection.
              #
              #   @return [Symbol, Telnyx::Models::Texml::Accounts::CallCallsParams::Body::WithTeXml::MachineDetection, nil]
              optional :machine_detection,
                       enum: -> {
                         Telnyx::Texml::Accounts::CallCallsParams::Body::WithTeXml::MachineDetection
                       },
                       api_name: :MachineDetection

              # @!attribute machine_detection_silence_timeout
              #   If initial silence duration is greater than this value, consider it a machine.
              #   Ignored when `premium` detection is used.
              #
              #   @return [Integer, nil]
              optional :machine_detection_silence_timeout, Integer, api_name: :MachineDetectionSilenceTimeout

              # @!attribute machine_detection_speech_end_threshold
              #   Silence duration threshold after a greeting message or voice for it be
              #   considered human. Ignored when `premium` detection is used.
              #
              #   @return [Integer, nil]
              optional :machine_detection_speech_end_threshold,
                       Integer,
                       api_name: :MachineDetectionSpeechEndThreshold

              # @!attribute machine_detection_speech_threshold
              #   Maximum threshold of a human greeting. If greeting longer than this value,
              #   considered machine. Ignored when `premium` detection is used.
              #
              #   @return [Integer, nil]
              optional :machine_detection_speech_threshold,
                       Integer,
                       api_name: :MachineDetectionSpeechThreshold

              # @!attribute machine_detection_timeout
              #   Maximum timeout threshold in milliseconds for overall detection.
              #
              #   @return [Integer, nil]
              optional :machine_detection_timeout, Integer, api_name: :MachineDetectionTimeout

              # @!attribute media_encryption
              #   Defines whether media should be encrypted on the call. When set to `SRTP`, the
              #   call will use Secure Real-time Transport Protocol for media encryption. When set
              #   to `DTLS`, the call will use DTLS for media encryption. Only supported for SIP
              #   destinations.
              #
              #   @return [Symbol, Telnyx::Models::Texml::Accounts::CallCallsParams::Body::WithTeXml::MediaEncryption, nil]
              optional :media_encryption,
                       enum: -> {
                         Telnyx::Texml::Accounts::CallCallsParams::Body::WithTeXml::MediaEncryption
                       },
                       api_name: :MediaEncryption

              # @!attribute preferred_codecs
              #   The list of comma-separated codecs to be offered on a call.
              #
              #   @return [String, nil]
              optional :preferred_codecs, String, api_name: :PreferredCodecs

              # @!attribute record
              #   Whether to record the entire participant's call leg. Defaults to `false`.
              #
              #   @return [Boolean, nil]
              optional :record, Telnyx::Internal::Type::Boolean, api_name: :Record

              # @!attribute recording_channels
              #   The number of channels in the final recording. Defaults to `mono`.
              #
              #   @return [Symbol, Telnyx::Models::Texml::Accounts::CallCallsParams::Body::WithTeXml::RecordingChannels, nil]
              optional :recording_channels,
                       enum: -> {
                         Telnyx::Texml::Accounts::CallCallsParams::Body::WithTeXml::RecordingChannels
                       },
                       api_name: :RecordingChannels

              # @!attribute recording_status_callback
              #   The URL the recording callbacks will be sent to.
              #
              #   @return [String, nil]
              optional :recording_status_callback, String, api_name: :RecordingStatusCallback

              # @!attribute recording_status_callback_event
              #   The changes to the recording's state that should generate a call to
              #   `RecoridngStatusCallback`. Can be: `in-progress`, `completed` and `absent`.
              #   Separate multiple values with a space. Defaults to `completed`.
              #
              #   @return [String, nil]
              optional :recording_status_callback_event, String, api_name: :RecordingStatusCallbackEvent

              # @!attribute recording_status_callback_method
              #   HTTP request type used for `RecordingStatusCallback`. Defaults to `POST`.
              #
              #   @return [Symbol, Telnyx::Models::Texml::Accounts::CallCallsParams::Body::WithTeXml::RecordingStatusCallbackMethod, nil]
              optional :recording_status_callback_method,
                       enum: -> {
                         Telnyx::Texml::Accounts::CallCallsParams::Body::WithTeXml::RecordingStatusCallbackMethod
                       },
                       api_name: :RecordingStatusCallbackMethod

              # @!attribute recording_timeout
              #   The number of seconds that Telnyx will wait for the recording to be stopped if
              #   silence is detected. The timer only starts when the speech is detected. Please
              #   note that the transcription is used to detect silence and the related charge
              #   will be applied. The minimum value is 0. The default value is 0 (infinite)
              #
              #   @return [Integer, nil]
              optional :recording_timeout, Integer, api_name: :RecordingTimeout

              # @!attribute recording_track
              #   The audio track to record for the call. The default is `both`.
              #
              #   @return [Symbol, Telnyx::Models::Texml::Accounts::CallCallsParams::Body::WithTeXml::RecordingTrack, nil]
              optional :recording_track,
                       enum: -> { Telnyx::Texml::Accounts::CallCallsParams::Body::WithTeXml::RecordingTrack },
                       api_name: :RecordingTrack

              # @!attribute send_recording_url
              #   Whether to send RecordingUrl in webhooks.
              #
              #   @return [Boolean, nil]
              optional :send_recording_url, Telnyx::Internal::Type::Boolean, api_name: :SendRecordingUrl

              # @!attribute sip_auth_password
              #   The password to use for SIP authentication.
              #
              #   @return [String, nil]
              optional :sip_auth_password, String, api_name: :SipAuthPassword

              # @!attribute sip_auth_username
              #   The username to use for SIP authentication.
              #
              #   @return [String, nil]
              optional :sip_auth_username, String, api_name: :SipAuthUsername

              # @!attribute sip_region
              #   Defines the SIP region to be used for the call.
              #
              #   @return [Symbol, Telnyx::Models::Texml::Accounts::CallCallsParams::Body::WithTeXml::SipRegion, nil]
              optional :sip_region,
                       enum: -> { Telnyx::Texml::Accounts::CallCallsParams::Body::WithTeXml::SipRegion },
                       api_name: :SipRegion

              # @!attribute status_callback
              #   URL destination for Telnyx to send status callback events to for the call.
              #
              #   @return [String, nil]
              optional :status_callback, String, api_name: :StatusCallback

              # @!attribute status_callback_event
              #   The call events for which Telnyx should send a webhook. Multiple events can be
              #   defined when separated by a space.
              #
              #   @return [Symbol, Telnyx::Models::Texml::Accounts::CallCallsParams::Body::WithTeXml::StatusCallbackEvent, nil]
              optional :status_callback_event,
                       enum: -> {
                         Telnyx::Texml::Accounts::CallCallsParams::Body::WithTeXml::StatusCallbackEvent
                       },
                       api_name: :StatusCallbackEvent

              # @!attribute status_callback_method
              #   HTTP request type used for `StatusCallback`.
              #
              #   @return [Symbol, Telnyx::Models::Texml::Accounts::CallCallsParams::Body::WithTeXml::StatusCallbackMethod, nil]
              optional :status_callback_method,
                       enum: -> {
                         Telnyx::Texml::Accounts::CallCallsParams::Body::WithTeXml::StatusCallbackMethod
                       },
                       api_name: :StatusCallbackMethod

              # @!attribute supervise_call_sid
              #   The call control ID of the existing call to supervise. When provided, the
              #   created leg will be added to the specified call in supervising mode. Status
              #   callbacks and action callbacks will NOT be sent for the supervising leg.
              #
              #   @return [String, nil]
              optional :supervise_call_sid, String, api_name: :SuperviseCallSid

              # @!attribute supervising_role
              #   The supervising role for the new leg. Determines the audio behavior: barge (hear
              #   both sides), whisper (only hear supervisor), monitor (hear both sides but
              #   supervisor muted). Default: barge
              #
              #   @return [Symbol, Telnyx::Models::Texml::Accounts::CallCallsParams::Body::WithTeXml::SupervisingRole, nil]
              optional :supervising_role,
                       enum: -> {
                         Telnyx::Texml::Accounts::CallCallsParams::Body::WithTeXml::SupervisingRole
                       },
                       api_name: :SupervisingRole

              # @!attribute time_limit
              #   The maximum duration of the call in seconds. The minimum value is 30 and the
              #   maximum value is 14400 (4 hours). Default is 14400 seconds.
              #
              #   @return [Integer, nil]
              optional :time_limit, Integer, api_name: :TimeLimit

              # @!attribute timeout
              #   The number of seconds to wait for the called party to answer the call before the
              #   call is canceled. The minimum value is 5 and the maximum value is 120. Default
              #   is 30 seconds.
              #
              #   @return [Integer, nil]
              optional :timeout, Integer, api_name: :Timeout

              # @!attribute to
              #   The phone number of the called party. Phone numbers are formatted with a `+` and
              #   country code.
              #
              #   @return [String, nil]
              optional :to, String, api_name: :To

              # @!attribute trim
              #   Whether to trim any leading and trailing silence from the recording. Defaults to
              #   `trim-silence`.
              #
              #   @return [Symbol, Telnyx::Models::Texml::Accounts::CallCallsParams::Body::WithTeXml::Trim, nil]
              optional :trim,
                       enum: -> { Telnyx::Texml::Accounts::CallCallsParams::Body::WithTeXml::Trim },
                       api_name: :Trim

              # @!attribute url
              #
              #   @return [Object, nil]
              optional :url, Telnyx::Internal::Type::Unknown, api_name: :Url

              # @!attribute url_method
              #   HTTP request type used for `Url`. The default value is inherited from TeXML
              #   Application setting.
              #
              #   @return [Symbol, Telnyx::Models::Texml::Accounts::CallCallsParams::Body::WithTeXml::URLMethod, nil]
              optional :url_method,
                       enum: -> { Telnyx::Texml::Accounts::CallCallsParams::Body::WithTeXml::URLMethod },
                       api_name: :UrlMethod

              # @!method initialize(texml:, application_sid: nil, async_amd: nil, async_amd_status_callback: nil, async_amd_status_callback_method: nil, caller_id: nil, cancel_playback_on_detect_message_end: nil, cancel_playback_on_machine_detection: nil, custom_headers: nil, detection_mode: nil, fallback_url: nil, from: nil, machine_detection: nil, machine_detection_silence_timeout: nil, machine_detection_speech_end_threshold: nil, machine_detection_speech_threshold: nil, machine_detection_timeout: nil, media_encryption: nil, preferred_codecs: nil, record: nil, recording_channels: nil, recording_status_callback: nil, recording_status_callback_event: nil, recording_status_callback_method: nil, recording_timeout: nil, recording_track: nil, send_recording_url: nil, sip_auth_password: nil, sip_auth_username: nil, sip_region: nil, status_callback: nil, status_callback_event: nil, status_callback_method: nil, supervise_call_sid: nil, supervising_role: nil, time_limit: nil, timeout: nil, to: nil, trim: nil, url: nil, url_method: nil)
              #   Some parameter documentations has been truncated, see
              #   {Telnyx::Models::Texml::Accounts::CallCallsParams::Body::WithTeXml} for more
              #   details.
              #
              #   @param texml [String] TeXML to be used as instructions for the call. If provided, the call will execut
              #
              #   @param application_sid [String] The ID of the TeXML Application.
              #
              #   @param async_amd [Boolean] Select whether to perform answering machine detection in the background. By defa
              #
              #   @param async_amd_status_callback [String] URL destination for Telnyx to send AMD callback events to for the call.
              #
              #   @param async_amd_status_callback_method [Symbol, Telnyx::Models::Texml::Accounts::CallCallsParams::Body::WithTeXml::AsyncAmdStatusCallbackMethod] HTTP request type used for `AsyncAmdStatusCallback`. The default value is inheri
              #
              #   @param caller_id [String] To be used as the caller id name (SIP From Display Name) presented to the destin
              #
              #   @param cancel_playback_on_detect_message_end [Boolean] Whether to cancel ongoing playback on `greeting ended` detection. Defaults to `t
              #
              #   @param cancel_playback_on_machine_detection [Boolean] Whether to cancel ongoing playback on `machine` detection. Defaults to `true`.
              #
              #   @param custom_headers [Array<Telnyx::Models::Texml::Accounts::CallCallsParams::Body::WithTeXml::CustomHeader>] Custom HTTP headers to be sent with the call. Each header should be an object wi
              #
              #   @param detection_mode [Symbol, Telnyx::Models::Texml::Accounts::CallCallsParams::Body::WithTeXml::DetectionMode] Allows you to chose between Premium and Standard detections.
              #
              #   @param fallback_url [String] A failover URL for which Telnyx will retrieve the TeXML call instructions if the
              #
              #   @param from [String] The phone number of the party that initiated the call. Phone numbers are formatt
              #
              #   @param machine_detection [Symbol, Telnyx::Models::Texml::Accounts::CallCallsParams::Body::WithTeXml::MachineDetection] Enables Answering Machine Detection.
              #
              #   @param machine_detection_silence_timeout [Integer] If initial silence duration is greater than this value, consider it a machine. I
              #
              #   @param machine_detection_speech_end_threshold [Integer] Silence duration threshold after a greeting message or voice for it be considere
              #
              #   @param machine_detection_speech_threshold [Integer] Maximum threshold of a human greeting. If greeting longer than this value, consi
              #
              #   @param machine_detection_timeout [Integer] Maximum timeout threshold in milliseconds for overall detection.
              #
              #   @param media_encryption [Symbol, Telnyx::Models::Texml::Accounts::CallCallsParams::Body::WithTeXml::MediaEncryption] Defines whether media should be encrypted on the call. When set to `SRTP`, the c
              #
              #   @param preferred_codecs [String] The list of comma-separated codecs to be offered on a call.
              #
              #   @param record [Boolean] Whether to record the entire participant's call leg. Defaults to `false`.
              #
              #   @param recording_channels [Symbol, Telnyx::Models::Texml::Accounts::CallCallsParams::Body::WithTeXml::RecordingChannels] The number of channels in the final recording. Defaults to `mono`.
              #
              #   @param recording_status_callback [String] The URL the recording callbacks will be sent to.
              #
              #   @param recording_status_callback_event [String] The changes to the recording's state that should generate a call to `RecoridngSt
              #
              #   @param recording_status_callback_method [Symbol, Telnyx::Models::Texml::Accounts::CallCallsParams::Body::WithTeXml::RecordingStatusCallbackMethod] HTTP request type used for `RecordingStatusCallback`. Defaults to `POST`.
              #
              #   @param recording_timeout [Integer] The number of seconds that Telnyx will wait for the recording to be stopped if s
              #
              #   @param recording_track [Symbol, Telnyx::Models::Texml::Accounts::CallCallsParams::Body::WithTeXml::RecordingTrack] The audio track to record for the call. The default is `both`.
              #
              #   @param send_recording_url [Boolean] Whether to send RecordingUrl in webhooks.
              #
              #   @param sip_auth_password [String] The password to use for SIP authentication.
              #
              #   @param sip_auth_username [String] The username to use for SIP authentication.
              #
              #   @param sip_region [Symbol, Telnyx::Models::Texml::Accounts::CallCallsParams::Body::WithTeXml::SipRegion] Defines the SIP region to be used for the call.
              #
              #   @param status_callback [String] URL destination for Telnyx to send status callback events to for the call.
              #
              #   @param status_callback_event [Symbol, Telnyx::Models::Texml::Accounts::CallCallsParams::Body::WithTeXml::StatusCallbackEvent] The call events for which Telnyx should send a webhook. Multiple events can be d
              #
              #   @param status_callback_method [Symbol, Telnyx::Models::Texml::Accounts::CallCallsParams::Body::WithTeXml::StatusCallbackMethod] HTTP request type used for `StatusCallback`.
              #
              #   @param supervise_call_sid [String] The call control ID of the existing call to supervise. When provided, the create
              #
              #   @param supervising_role [Symbol, Telnyx::Models::Texml::Accounts::CallCallsParams::Body::WithTeXml::SupervisingRole] The supervising role for the new leg. Determines the audio behavior: barge (hear
              #
              #   @param time_limit [Integer] The maximum duration of the call in seconds. The minimum value is 30 and the max
              #
              #   @param timeout [Integer] The number of seconds to wait for the called party to answer the call before the
              #
              #   @param to [String] The phone number of the called party. Phone numbers are formatted with a `+` and
              #
              #   @param trim [Symbol, Telnyx::Models::Texml::Accounts::CallCallsParams::Body::WithTeXml::Trim] Whether to trim any leading and trailing silence from the recording. Defaults to
              #
              #   @param url [Object]
              #
              #   @param url_method [Symbol, Telnyx::Models::Texml::Accounts::CallCallsParams::Body::WithTeXml::URLMethod] HTTP request type used for `Url`. The default value is inherited from TeXML Appl

              # HTTP request type used for `AsyncAmdStatusCallback`. The default value is
              # inherited from TeXML Application setting.
              #
              # @see Telnyx::Models::Texml::Accounts::CallCallsParams::Body::WithTeXml#async_amd_status_callback_method
              module AsyncAmdStatusCallbackMethod
                extend Telnyx::Internal::Type::Enum

                GET = :GET
                POST = :POST

                # @!method self.values
                #   @return [Array<Symbol>]
              end

              class CustomHeader < Telnyx::Internal::Type::BaseModel
                # @!attribute name
                #   The name of the custom header
                #
                #   @return [String]
                required :name, String

                # @!attribute value
                #   The value of the custom header
                #
                #   @return [String]
                required :value, String

                # @!method initialize(name:, value:)
                #   @param name [String] The name of the custom header
                #
                #   @param value [String] The value of the custom header
              end

              # Allows you to chose between Premium and Standard detections.
              #
              # @see Telnyx::Models::Texml::Accounts::CallCallsParams::Body::WithTeXml#detection_mode
              module DetectionMode
                extend Telnyx::Internal::Type::Enum

                PREMIUM = :Premium
                REGULAR = :Regular

                # @!method self.values
                #   @return [Array<Symbol>]
              end

              # Enables Answering Machine Detection.
              #
              # @see Telnyx::Models::Texml::Accounts::CallCallsParams::Body::WithTeXml#machine_detection
              module MachineDetection
                extend Telnyx::Internal::Type::Enum

                ENABLE = :Enable
                DISABLE = :Disable
                DETECT_MESSAGE_END = :DetectMessageEnd

                # @!method self.values
                #   @return [Array<Symbol>]
              end

              # Defines whether media should be encrypted on the call. When set to `SRTP`, the
              # call will use Secure Real-time Transport Protocol for media encryption. When set
              # to `DTLS`, the call will use DTLS for media encryption. Only supported for SIP
              # destinations.
              #
              # @see Telnyx::Models::Texml::Accounts::CallCallsParams::Body::WithTeXml#media_encryption
              module MediaEncryption
                extend Telnyx::Internal::Type::Enum

                DISABLED = :disabled
                SRTP = :SRTP
                DTLS = :DTLS

                # @!method self.values
                #   @return [Array<Symbol>]
              end

              # The number of channels in the final recording. Defaults to `mono`.
              #
              # @see Telnyx::Models::Texml::Accounts::CallCallsParams::Body::WithTeXml#recording_channels
              module RecordingChannels
                extend Telnyx::Internal::Type::Enum

                MONO = :mono
                DUAL = :dual

                # @!method self.values
                #   @return [Array<Symbol>]
              end

              # HTTP request type used for `RecordingStatusCallback`. Defaults to `POST`.
              #
              # @see Telnyx::Models::Texml::Accounts::CallCallsParams::Body::WithTeXml#recording_status_callback_method
              module RecordingStatusCallbackMethod
                extend Telnyx::Internal::Type::Enum

                GET = :GET
                POST = :POST

                # @!method self.values
                #   @return [Array<Symbol>]
              end

              # The audio track to record for the call. The default is `both`.
              #
              # @see Telnyx::Models::Texml::Accounts::CallCallsParams::Body::WithTeXml#recording_track
              module RecordingTrack
                extend Telnyx::Internal::Type::Enum

                INBOUND = :inbound
                OUTBOUND = :outbound
                BOTH = :both

                # @!method self.values
                #   @return [Array<Symbol>]
              end

              # Defines the SIP region to be used for the call.
              #
              # @see Telnyx::Models::Texml::Accounts::CallCallsParams::Body::WithTeXml#sip_region
              module SipRegion
                extend Telnyx::Internal::Type::Enum

                US = :US
                EUROPE = :Europe
                CANADA = :Canada
                AUSTRALIA = :Australia
                MIDDLE_EAST = :"Middle East"

                # @!method self.values
                #   @return [Array<Symbol>]
              end

              # The call events for which Telnyx should send a webhook. Multiple events can be
              # defined when separated by a space.
              #
              # @see Telnyx::Models::Texml::Accounts::CallCallsParams::Body::WithTeXml#status_callback_event
              module StatusCallbackEvent
                extend Telnyx::Internal::Type::Enum

                INITIATED = :initiated
                RINGING = :ringing
                ANSWERED = :answered
                COMPLETED = :completed

                # @!method self.values
                #   @return [Array<Symbol>]
              end

              # HTTP request type used for `StatusCallback`.
              #
              # @see Telnyx::Models::Texml::Accounts::CallCallsParams::Body::WithTeXml#status_callback_method
              module StatusCallbackMethod
                extend Telnyx::Internal::Type::Enum

                GET = :GET
                POST = :POST

                # @!method self.values
                #   @return [Array<Symbol>]
              end

              # The supervising role for the new leg. Determines the audio behavior: barge (hear
              # both sides), whisper (only hear supervisor), monitor (hear both sides but
              # supervisor muted). Default: barge
              #
              # @see Telnyx::Models::Texml::Accounts::CallCallsParams::Body::WithTeXml#supervising_role
              module SupervisingRole
                extend Telnyx::Internal::Type::Enum

                BARGE = :barge
                WHISPER = :whisper
                MONITOR = :monitor

                # @!method self.values
                #   @return [Array<Symbol>]
              end

              # Whether to trim any leading and trailing silence from the recording. Defaults to
              # `trim-silence`.
              #
              # @see Telnyx::Models::Texml::Accounts::CallCallsParams::Body::WithTeXml#trim
              module Trim
                extend Telnyx::Internal::Type::Enum

                TRIM_SILENCE = :"trim-silence"
                DO_NOT_TRIM = :"do-not-trim"

                # @!method self.values
                #   @return [Array<Symbol>]
              end

              # HTTP request type used for `Url`. The default value is inherited from TeXML
              # Application setting.
              #
              # @see Telnyx::Models::Texml::Accounts::CallCallsParams::Body::WithTeXml#url_method
              module URLMethod
                extend Telnyx::Internal::Type::Enum

                GET = :GET
                POST = :POST

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            class ApplicationDefault < Telnyx::Internal::Type::BaseModel
              # @!attribute application_sid
              #   The ID of the TeXML Application.
              #
              #   @return [String, nil]
              optional :application_sid, String, api_name: :ApplicationSid

              # @!attribute async_amd
              #   Select whether to perform answering machine detection in the background. By
              #   default execution is blocked until Answering Machine Detection is completed.
              #
              #   @return [Boolean, nil]
              optional :async_amd, Telnyx::Internal::Type::Boolean, api_name: :AsyncAmd

              # @!attribute async_amd_status_callback
              #   URL destination for Telnyx to send AMD callback events to for the call.
              #
              #   @return [String, nil]
              optional :async_amd_status_callback, String, api_name: :AsyncAmdStatusCallback

              # @!attribute async_amd_status_callback_method
              #   HTTP request type used for `AsyncAmdStatusCallback`. The default value is
              #   inherited from TeXML Application setting.
              #
              #   @return [Symbol, Telnyx::Models::Texml::Accounts::CallCallsParams::Body::ApplicationDefault::AsyncAmdStatusCallbackMethod, nil]
              optional :async_amd_status_callback_method,
                       enum: -> {
                         Telnyx::Texml::Accounts::CallCallsParams::Body::ApplicationDefault::AsyncAmdStatusCallbackMethod
                       },
                       api_name: :AsyncAmdStatusCallbackMethod

              # @!attribute caller_id
              #   To be used as the caller id name (SIP From Display Name) presented to the
              #   destination (`To` number). The string should have a maximum of 128 characters,
              #   containing only letters, numbers, spaces, and `-_~!.+` special characters. If
              #   ommited, the display name will be the same as the number in the `From` field.
              #
              #   @return [String, nil]
              optional :caller_id, String, api_name: :CallerId

              # @!attribute cancel_playback_on_detect_message_end
              #   Whether to cancel ongoing playback on `greeting ended` detection. Defaults to
              #   `true`.
              #
              #   @return [Boolean, nil]
              optional :cancel_playback_on_detect_message_end,
                       Telnyx::Internal::Type::Boolean,
                       api_name: :CancelPlaybackOnDetectMessageEnd

              # @!attribute cancel_playback_on_machine_detection
              #   Whether to cancel ongoing playback on `machine` detection. Defaults to `true`.
              #
              #   @return [Boolean, nil]
              optional :cancel_playback_on_machine_detection,
                       Telnyx::Internal::Type::Boolean,
                       api_name: :CancelPlaybackOnMachineDetection

              # @!attribute custom_headers
              #   Custom HTTP headers to be sent with the call. Each header should be an object
              #   with 'name' and 'value' properties.
              #
              #   @return [Array<Telnyx::Models::Texml::Accounts::CallCallsParams::Body::ApplicationDefault::CustomHeader>, nil]
              optional :custom_headers,
                       -> {
                         Telnyx::Internal::Type::ArrayOf[Telnyx::Texml::Accounts::CallCallsParams::Body::ApplicationDefault::CustomHeader]
                       },
                       api_name: :CustomHeaders

              # @!attribute detection_mode
              #   Allows you to chose between Premium and Standard detections.
              #
              #   @return [Symbol, Telnyx::Models::Texml::Accounts::CallCallsParams::Body::ApplicationDefault::DetectionMode, nil]
              optional :detection_mode,
                       enum: -> {
                         Telnyx::Texml::Accounts::CallCallsParams::Body::ApplicationDefault::DetectionMode
                       },
                       api_name: :DetectionMode

              # @!attribute fallback_url
              #   A failover URL for which Telnyx will retrieve the TeXML call instructions if the
              #   `Url` is not responding.
              #
              #   @return [String, nil]
              optional :fallback_url, String, api_name: :FallbackUrl

              # @!attribute from
              #   The phone number of the party that initiated the call. Phone numbers are
              #   formatted with a `+` and country code.
              #
              #   @return [String, nil]
              optional :from, String, api_name: :From

              # @!attribute machine_detection
              #   Enables Answering Machine Detection.
              #
              #   @return [Symbol, Telnyx::Models::Texml::Accounts::CallCallsParams::Body::ApplicationDefault::MachineDetection, nil]
              optional :machine_detection,
                       enum: -> {
                         Telnyx::Texml::Accounts::CallCallsParams::Body::ApplicationDefault::MachineDetection
                       },
                       api_name: :MachineDetection

              # @!attribute machine_detection_silence_timeout
              #   If initial silence duration is greater than this value, consider it a machine.
              #   Ignored when `premium` detection is used.
              #
              #   @return [Integer, nil]
              optional :machine_detection_silence_timeout, Integer, api_name: :MachineDetectionSilenceTimeout

              # @!attribute machine_detection_speech_end_threshold
              #   Silence duration threshold after a greeting message or voice for it be
              #   considered human. Ignored when `premium` detection is used.
              #
              #   @return [Integer, nil]
              optional :machine_detection_speech_end_threshold,
                       Integer,
                       api_name: :MachineDetectionSpeechEndThreshold

              # @!attribute machine_detection_speech_threshold
              #   Maximum threshold of a human greeting. If greeting longer than this value,
              #   considered machine. Ignored when `premium` detection is used.
              #
              #   @return [Integer, nil]
              optional :machine_detection_speech_threshold,
                       Integer,
                       api_name: :MachineDetectionSpeechThreshold

              # @!attribute machine_detection_timeout
              #   Maximum timeout threshold in milliseconds for overall detection.
              #
              #   @return [Integer, nil]
              optional :machine_detection_timeout, Integer, api_name: :MachineDetectionTimeout

              # @!attribute media_encryption
              #   Defines whether media should be encrypted on the call. When set to `SRTP`, the
              #   call will use Secure Real-time Transport Protocol for media encryption. When set
              #   to `DTLS`, the call will use DTLS for media encryption. Only supported for SIP
              #   destinations.
              #
              #   @return [Symbol, Telnyx::Models::Texml::Accounts::CallCallsParams::Body::ApplicationDefault::MediaEncryption, nil]
              optional :media_encryption,
                       enum: -> {
                         Telnyx::Texml::Accounts::CallCallsParams::Body::ApplicationDefault::MediaEncryption
                       },
                       api_name: :MediaEncryption

              # @!attribute preferred_codecs
              #   The list of comma-separated codecs to be offered on a call.
              #
              #   @return [String, nil]
              optional :preferred_codecs, String, api_name: :PreferredCodecs

              # @!attribute record
              #   Whether to record the entire participant's call leg. Defaults to `false`.
              #
              #   @return [Boolean, nil]
              optional :record, Telnyx::Internal::Type::Boolean, api_name: :Record

              # @!attribute recording_channels
              #   The number of channels in the final recording. Defaults to `mono`.
              #
              #   @return [Symbol, Telnyx::Models::Texml::Accounts::CallCallsParams::Body::ApplicationDefault::RecordingChannels, nil]
              optional :recording_channels,
                       enum: -> {
                         Telnyx::Texml::Accounts::CallCallsParams::Body::ApplicationDefault::RecordingChannels
                       },
                       api_name: :RecordingChannels

              # @!attribute recording_status_callback
              #   The URL the recording callbacks will be sent to.
              #
              #   @return [String, nil]
              optional :recording_status_callback, String, api_name: :RecordingStatusCallback

              # @!attribute recording_status_callback_event
              #   The changes to the recording's state that should generate a call to
              #   `RecoridngStatusCallback`. Can be: `in-progress`, `completed` and `absent`.
              #   Separate multiple values with a space. Defaults to `completed`.
              #
              #   @return [String, nil]
              optional :recording_status_callback_event, String, api_name: :RecordingStatusCallbackEvent

              # @!attribute recording_status_callback_method
              #   HTTP request type used for `RecordingStatusCallback`. Defaults to `POST`.
              #
              #   @return [Symbol, Telnyx::Models::Texml::Accounts::CallCallsParams::Body::ApplicationDefault::RecordingStatusCallbackMethod, nil]
              optional :recording_status_callback_method,
                       enum: -> {
                         Telnyx::Texml::Accounts::CallCallsParams::Body::ApplicationDefault::RecordingStatusCallbackMethod
                       },
                       api_name: :RecordingStatusCallbackMethod

              # @!attribute recording_timeout
              #   The number of seconds that Telnyx will wait for the recording to be stopped if
              #   silence is detected. The timer only starts when the speech is detected. Please
              #   note that the transcription is used to detect silence and the related charge
              #   will be applied. The minimum value is 0. The default value is 0 (infinite)
              #
              #   @return [Integer, nil]
              optional :recording_timeout, Integer, api_name: :RecordingTimeout

              # @!attribute recording_track
              #   The audio track to record for the call. The default is `both`.
              #
              #   @return [Symbol, Telnyx::Models::Texml::Accounts::CallCallsParams::Body::ApplicationDefault::RecordingTrack, nil]
              optional :recording_track,
                       enum: -> {
                         Telnyx::Texml::Accounts::CallCallsParams::Body::ApplicationDefault::RecordingTrack
                       },
                       api_name: :RecordingTrack

              # @!attribute send_recording_url
              #   Whether to send RecordingUrl in webhooks.
              #
              #   @return [Boolean, nil]
              optional :send_recording_url, Telnyx::Internal::Type::Boolean, api_name: :SendRecordingUrl

              # @!attribute sip_auth_password
              #   The password to use for SIP authentication.
              #
              #   @return [String, nil]
              optional :sip_auth_password, String, api_name: :SipAuthPassword

              # @!attribute sip_auth_username
              #   The username to use for SIP authentication.
              #
              #   @return [String, nil]
              optional :sip_auth_username, String, api_name: :SipAuthUsername

              # @!attribute sip_region
              #   Defines the SIP region to be used for the call.
              #
              #   @return [Symbol, Telnyx::Models::Texml::Accounts::CallCallsParams::Body::ApplicationDefault::SipRegion, nil]
              optional :sip_region,
                       enum: -> {
                         Telnyx::Texml::Accounts::CallCallsParams::Body::ApplicationDefault::SipRegion
                       },
                       api_name: :SipRegion

              # @!attribute status_callback
              #   URL destination for Telnyx to send status callback events to for the call.
              #
              #   @return [String, nil]
              optional :status_callback, String, api_name: :StatusCallback

              # @!attribute status_callback_event
              #   The call events for which Telnyx should send a webhook. Multiple events can be
              #   defined when separated by a space.
              #
              #   @return [Symbol, Telnyx::Models::Texml::Accounts::CallCallsParams::Body::ApplicationDefault::StatusCallbackEvent, nil]
              optional :status_callback_event,
                       enum: -> {
                         Telnyx::Texml::Accounts::CallCallsParams::Body::ApplicationDefault::StatusCallbackEvent
                       },
                       api_name: :StatusCallbackEvent

              # @!attribute status_callback_method
              #   HTTP request type used for `StatusCallback`.
              #
              #   @return [Symbol, Telnyx::Models::Texml::Accounts::CallCallsParams::Body::ApplicationDefault::StatusCallbackMethod, nil]
              optional :status_callback_method,
                       enum: -> {
                         Telnyx::Texml::Accounts::CallCallsParams::Body::ApplicationDefault::StatusCallbackMethod
                       },
                       api_name: :StatusCallbackMethod

              # @!attribute supervise_call_sid
              #   The call control ID of the existing call to supervise. When provided, the
              #   created leg will be added to the specified call in supervising mode. Status
              #   callbacks and action callbacks will NOT be sent for the supervising leg.
              #
              #   @return [String, nil]
              optional :supervise_call_sid, String, api_name: :SuperviseCallSid

              # @!attribute supervising_role
              #   The supervising role for the new leg. Determines the audio behavior: barge (hear
              #   both sides), whisper (only hear supervisor), monitor (hear both sides but
              #   supervisor muted). Default: barge
              #
              #   @return [Symbol, Telnyx::Models::Texml::Accounts::CallCallsParams::Body::ApplicationDefault::SupervisingRole, nil]
              optional :supervising_role,
                       enum: -> {
                         Telnyx::Texml::Accounts::CallCallsParams::Body::ApplicationDefault::SupervisingRole
                       },
                       api_name: :SupervisingRole

              # @!attribute texml
              #
              #   @return [Object, nil]
              optional :texml, Telnyx::Internal::Type::Unknown, api_name: :Texml

              # @!attribute time_limit
              #   The maximum duration of the call in seconds. The minimum value is 30 and the
              #   maximum value is 14400 (4 hours). Default is 14400 seconds.
              #
              #   @return [Integer, nil]
              optional :time_limit, Integer, api_name: :TimeLimit

              # @!attribute timeout
              #   The number of seconds to wait for the called party to answer the call before the
              #   call is canceled. The minimum value is 5 and the maximum value is 120. Default
              #   is 30 seconds.
              #
              #   @return [Integer, nil]
              optional :timeout, Integer, api_name: :Timeout

              # @!attribute to
              #   The phone number of the called party. Phone numbers are formatted with a `+` and
              #   country code.
              #
              #   @return [String, nil]
              optional :to, String, api_name: :To

              # @!attribute trim
              #   Whether to trim any leading and trailing silence from the recording. Defaults to
              #   `trim-silence`.
              #
              #   @return [Symbol, Telnyx::Models::Texml::Accounts::CallCallsParams::Body::ApplicationDefault::Trim, nil]
              optional :trim,
                       enum: -> { Telnyx::Texml::Accounts::CallCallsParams::Body::ApplicationDefault::Trim },
                       api_name: :Trim

              # @!attribute url
              #
              #   @return [Object, nil]
              optional :url, Telnyx::Internal::Type::Unknown, api_name: :Url

              # @!attribute url_method
              #   HTTP request type used for `Url`. The default value is inherited from TeXML
              #   Application setting.
              #
              #   @return [Symbol, Telnyx::Models::Texml::Accounts::CallCallsParams::Body::ApplicationDefault::URLMethod, nil]
              optional :url_method,
                       enum: -> {
                         Telnyx::Texml::Accounts::CallCallsParams::Body::ApplicationDefault::URLMethod
                       },
                       api_name: :UrlMethod

              # @!method initialize(application_sid: nil, async_amd: nil, async_amd_status_callback: nil, async_amd_status_callback_method: nil, caller_id: nil, cancel_playback_on_detect_message_end: nil, cancel_playback_on_machine_detection: nil, custom_headers: nil, detection_mode: nil, fallback_url: nil, from: nil, machine_detection: nil, machine_detection_silence_timeout: nil, machine_detection_speech_end_threshold: nil, machine_detection_speech_threshold: nil, machine_detection_timeout: nil, media_encryption: nil, preferred_codecs: nil, record: nil, recording_channels: nil, recording_status_callback: nil, recording_status_callback_event: nil, recording_status_callback_method: nil, recording_timeout: nil, recording_track: nil, send_recording_url: nil, sip_auth_password: nil, sip_auth_username: nil, sip_region: nil, status_callback: nil, status_callback_event: nil, status_callback_method: nil, supervise_call_sid: nil, supervising_role: nil, texml: nil, time_limit: nil, timeout: nil, to: nil, trim: nil, url: nil, url_method: nil)
              #   Some parameter documentations has been truncated, see
              #   {Telnyx::Models::Texml::Accounts::CallCallsParams::Body::ApplicationDefault} for
              #   more details.
              #
              #   @param application_sid [String] The ID of the TeXML Application.
              #
              #   @param async_amd [Boolean] Select whether to perform answering machine detection in the background. By defa
              #
              #   @param async_amd_status_callback [String] URL destination for Telnyx to send AMD callback events to for the call.
              #
              #   @param async_amd_status_callback_method [Symbol, Telnyx::Models::Texml::Accounts::CallCallsParams::Body::ApplicationDefault::AsyncAmdStatusCallbackMethod] HTTP request type used for `AsyncAmdStatusCallback`. The default value is inheri
              #
              #   @param caller_id [String] To be used as the caller id name (SIP From Display Name) presented to the destin
              #
              #   @param cancel_playback_on_detect_message_end [Boolean] Whether to cancel ongoing playback on `greeting ended` detection. Defaults to `t
              #
              #   @param cancel_playback_on_machine_detection [Boolean] Whether to cancel ongoing playback on `machine` detection. Defaults to `true`.
              #
              #   @param custom_headers [Array<Telnyx::Models::Texml::Accounts::CallCallsParams::Body::ApplicationDefault::CustomHeader>] Custom HTTP headers to be sent with the call. Each header should be an object wi
              #
              #   @param detection_mode [Symbol, Telnyx::Models::Texml::Accounts::CallCallsParams::Body::ApplicationDefault::DetectionMode] Allows you to chose between Premium and Standard detections.
              #
              #   @param fallback_url [String] A failover URL for which Telnyx will retrieve the TeXML call instructions if the
              #
              #   @param from [String] The phone number of the party that initiated the call. Phone numbers are formatt
              #
              #   @param machine_detection [Symbol, Telnyx::Models::Texml::Accounts::CallCallsParams::Body::ApplicationDefault::MachineDetection] Enables Answering Machine Detection.
              #
              #   @param machine_detection_silence_timeout [Integer] If initial silence duration is greater than this value, consider it a machine. I
              #
              #   @param machine_detection_speech_end_threshold [Integer] Silence duration threshold after a greeting message or voice for it be considere
              #
              #   @param machine_detection_speech_threshold [Integer] Maximum threshold of a human greeting. If greeting longer than this value, consi
              #
              #   @param machine_detection_timeout [Integer] Maximum timeout threshold in milliseconds for overall detection.
              #
              #   @param media_encryption [Symbol, Telnyx::Models::Texml::Accounts::CallCallsParams::Body::ApplicationDefault::MediaEncryption] Defines whether media should be encrypted on the call. When set to `SRTP`, the c
              #
              #   @param preferred_codecs [String] The list of comma-separated codecs to be offered on a call.
              #
              #   @param record [Boolean] Whether to record the entire participant's call leg. Defaults to `false`.
              #
              #   @param recording_channels [Symbol, Telnyx::Models::Texml::Accounts::CallCallsParams::Body::ApplicationDefault::RecordingChannels] The number of channels in the final recording. Defaults to `mono`.
              #
              #   @param recording_status_callback [String] The URL the recording callbacks will be sent to.
              #
              #   @param recording_status_callback_event [String] The changes to the recording's state that should generate a call to `RecoridngSt
              #
              #   @param recording_status_callback_method [Symbol, Telnyx::Models::Texml::Accounts::CallCallsParams::Body::ApplicationDefault::RecordingStatusCallbackMethod] HTTP request type used for `RecordingStatusCallback`. Defaults to `POST`.
              #
              #   @param recording_timeout [Integer] The number of seconds that Telnyx will wait for the recording to be stopped if s
              #
              #   @param recording_track [Symbol, Telnyx::Models::Texml::Accounts::CallCallsParams::Body::ApplicationDefault::RecordingTrack] The audio track to record for the call. The default is `both`.
              #
              #   @param send_recording_url [Boolean] Whether to send RecordingUrl in webhooks.
              #
              #   @param sip_auth_password [String] The password to use for SIP authentication.
              #
              #   @param sip_auth_username [String] The username to use for SIP authentication.
              #
              #   @param sip_region [Symbol, Telnyx::Models::Texml::Accounts::CallCallsParams::Body::ApplicationDefault::SipRegion] Defines the SIP region to be used for the call.
              #
              #   @param status_callback [String] URL destination for Telnyx to send status callback events to for the call.
              #
              #   @param status_callback_event [Symbol, Telnyx::Models::Texml::Accounts::CallCallsParams::Body::ApplicationDefault::StatusCallbackEvent] The call events for which Telnyx should send a webhook. Multiple events can be d
              #
              #   @param status_callback_method [Symbol, Telnyx::Models::Texml::Accounts::CallCallsParams::Body::ApplicationDefault::StatusCallbackMethod] HTTP request type used for `StatusCallback`.
              #
              #   @param supervise_call_sid [String] The call control ID of the existing call to supervise. When provided, the create
              #
              #   @param supervising_role [Symbol, Telnyx::Models::Texml::Accounts::CallCallsParams::Body::ApplicationDefault::SupervisingRole] The supervising role for the new leg. Determines the audio behavior: barge (hear
              #
              #   @param texml [Object]
              #
              #   @param time_limit [Integer] The maximum duration of the call in seconds. The minimum value is 30 and the max
              #
              #   @param timeout [Integer] The number of seconds to wait for the called party to answer the call before the
              #
              #   @param to [String] The phone number of the called party. Phone numbers are formatted with a `+` and
              #
              #   @param trim [Symbol, Telnyx::Models::Texml::Accounts::CallCallsParams::Body::ApplicationDefault::Trim] Whether to trim any leading and trailing silence from the recording. Defaults to
              #
              #   @param url [Object]
              #
              #   @param url_method [Symbol, Telnyx::Models::Texml::Accounts::CallCallsParams::Body::ApplicationDefault::URLMethod] HTTP request type used for `Url`. The default value is inherited from TeXML Appl

              # HTTP request type used for `AsyncAmdStatusCallback`. The default value is
              # inherited from TeXML Application setting.
              #
              # @see Telnyx::Models::Texml::Accounts::CallCallsParams::Body::ApplicationDefault#async_amd_status_callback_method
              module AsyncAmdStatusCallbackMethod
                extend Telnyx::Internal::Type::Enum

                GET = :GET
                POST = :POST

                # @!method self.values
                #   @return [Array<Symbol>]
              end

              class CustomHeader < Telnyx::Internal::Type::BaseModel
                # @!attribute name
                #   The name of the custom header
                #
                #   @return [String]
                required :name, String

                # @!attribute value
                #   The value of the custom header
                #
                #   @return [String]
                required :value, String

                # @!method initialize(name:, value:)
                #   @param name [String] The name of the custom header
                #
                #   @param value [String] The value of the custom header
              end

              # Allows you to chose between Premium and Standard detections.
              #
              # @see Telnyx::Models::Texml::Accounts::CallCallsParams::Body::ApplicationDefault#detection_mode
              module DetectionMode
                extend Telnyx::Internal::Type::Enum

                PREMIUM = :Premium
                REGULAR = :Regular

                # @!method self.values
                #   @return [Array<Symbol>]
              end

              # Enables Answering Machine Detection.
              #
              # @see Telnyx::Models::Texml::Accounts::CallCallsParams::Body::ApplicationDefault#machine_detection
              module MachineDetection
                extend Telnyx::Internal::Type::Enum

                ENABLE = :Enable
                DISABLE = :Disable
                DETECT_MESSAGE_END = :DetectMessageEnd

                # @!method self.values
                #   @return [Array<Symbol>]
              end

              # Defines whether media should be encrypted on the call. When set to `SRTP`, the
              # call will use Secure Real-time Transport Protocol for media encryption. When set
              # to `DTLS`, the call will use DTLS for media encryption. Only supported for SIP
              # destinations.
              #
              # @see Telnyx::Models::Texml::Accounts::CallCallsParams::Body::ApplicationDefault#media_encryption
              module MediaEncryption
                extend Telnyx::Internal::Type::Enum

                DISABLED = :disabled
                SRTP = :SRTP
                DTLS = :DTLS

                # @!method self.values
                #   @return [Array<Symbol>]
              end

              # The number of channels in the final recording. Defaults to `mono`.
              #
              # @see Telnyx::Models::Texml::Accounts::CallCallsParams::Body::ApplicationDefault#recording_channels
              module RecordingChannels
                extend Telnyx::Internal::Type::Enum

                MONO = :mono
                DUAL = :dual

                # @!method self.values
                #   @return [Array<Symbol>]
              end

              # HTTP request type used for `RecordingStatusCallback`. Defaults to `POST`.
              #
              # @see Telnyx::Models::Texml::Accounts::CallCallsParams::Body::ApplicationDefault#recording_status_callback_method
              module RecordingStatusCallbackMethod
                extend Telnyx::Internal::Type::Enum

                GET = :GET
                POST = :POST

                # @!method self.values
                #   @return [Array<Symbol>]
              end

              # The audio track to record for the call. The default is `both`.
              #
              # @see Telnyx::Models::Texml::Accounts::CallCallsParams::Body::ApplicationDefault#recording_track
              module RecordingTrack
                extend Telnyx::Internal::Type::Enum

                INBOUND = :inbound
                OUTBOUND = :outbound
                BOTH = :both

                # @!method self.values
                #   @return [Array<Symbol>]
              end

              # Defines the SIP region to be used for the call.
              #
              # @see Telnyx::Models::Texml::Accounts::CallCallsParams::Body::ApplicationDefault#sip_region
              module SipRegion
                extend Telnyx::Internal::Type::Enum

                US = :US
                EUROPE = :Europe
                CANADA = :Canada
                AUSTRALIA = :Australia
                MIDDLE_EAST = :"Middle East"

                # @!method self.values
                #   @return [Array<Symbol>]
              end

              # The call events for which Telnyx should send a webhook. Multiple events can be
              # defined when separated by a space.
              #
              # @see Telnyx::Models::Texml::Accounts::CallCallsParams::Body::ApplicationDefault#status_callback_event
              module StatusCallbackEvent
                extend Telnyx::Internal::Type::Enum

                INITIATED = :initiated
                RINGING = :ringing
                ANSWERED = :answered
                COMPLETED = :completed

                # @!method self.values
                #   @return [Array<Symbol>]
              end

              # HTTP request type used for `StatusCallback`.
              #
              # @see Telnyx::Models::Texml::Accounts::CallCallsParams::Body::ApplicationDefault#status_callback_method
              module StatusCallbackMethod
                extend Telnyx::Internal::Type::Enum

                GET = :GET
                POST = :POST

                # @!method self.values
                #   @return [Array<Symbol>]
              end

              # The supervising role for the new leg. Determines the audio behavior: barge (hear
              # both sides), whisper (only hear supervisor), monitor (hear both sides but
              # supervisor muted). Default: barge
              #
              # @see Telnyx::Models::Texml::Accounts::CallCallsParams::Body::ApplicationDefault#supervising_role
              module SupervisingRole
                extend Telnyx::Internal::Type::Enum

                BARGE = :barge
                WHISPER = :whisper
                MONITOR = :monitor

                # @!method self.values
                #   @return [Array<Symbol>]
              end

              # Whether to trim any leading and trailing silence from the recording. Defaults to
              # `trim-silence`.
              #
              # @see Telnyx::Models::Texml::Accounts::CallCallsParams::Body::ApplicationDefault#trim
              module Trim
                extend Telnyx::Internal::Type::Enum

                TRIM_SILENCE = :"trim-silence"
                DO_NOT_TRIM = :"do-not-trim"

                # @!method self.values
                #   @return [Array<Symbol>]
              end

              # HTTP request type used for `Url`. The default value is inherited from TeXML
              # Application setting.
              #
              # @see Telnyx::Models::Texml::Accounts::CallCallsParams::Body::ApplicationDefault#url_method
              module URLMethod
                extend Telnyx::Internal::Type::Enum

                GET = :GET
                POST = :POST

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @!method self.variants
            #   @return [Array(Telnyx::Models::Texml::Accounts::CallCallsParams::Body::WithURL, Telnyx::Models::Texml::Accounts::CallCallsParams::Body::WithTeXml, Telnyx::Models::Texml::Accounts::CallCallsParams::Body::ApplicationDefault)]
          end
        end
      end
    end
  end
end

# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::Calls#dial
    class CallDialParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute connection_id
      #   The ID of the Call Control App (formerly ID of the connection) to be used when
      #   dialing the destination.
      #
      #   @return [String]
      required :connection_id, String

      # @!attribute from
      #   The `from` number to be used as the caller id presented to the destination (`to`
      #   number). The number should be in +E164 format.
      #
      #   @return [String]
      required :from, String

      # @!attribute to
      #   The DID or SIP URI to dial out to. Multiple DID or SIP URIs can be provided
      #   using an array of strings
      #
      #   @return [String, Array<String>]
      required :to, union: -> { Telnyx::CallDialParams::To }

      # @!attribute answering_machine_detection
      #   Enables Answering Machine Detection. Telnyx offers Premium and Standard
      #   detections. With Premium detection, when a call is answered, Telnyx runs
      #   real-time detection and sends a `call.machine.premium.detection.ended` webhook
      #   with one of the following results: `human_residence`, `human_business`,
      #   `machine`, `silence` or `fax_detected`. If we detect a beep, we also send a
      #   `call.machine.premium.greeting.ended` webhook with the result of
      #   `beep_detected`. If we detect a beep before
      #   `call.machine.premium.detection.ended` we only send
      #   `call.machine.premium.greeting.ended`, and if we detect a beep after
      #   `call.machine.premium.detection.ended`, we send both webhooks. With Standard
      #   detection, when a call is answered, Telnyx runs real-time detection to determine
      #   if it was picked up by a human or a machine and sends an
      #   `call.machine.detection.ended` webhook with the analysis result. If
      #   `greeting_end` or `detect_words` is used and a `machine` is detected, you will
      #   receive another `call.machine.greeting.ended` webhook when the answering machine
      #   greeting ends with a beep or silence. If `detect_beep` is used, you will only
      #   receive `call.machine.greeting.ended` if a beep is detected.
      #
      #   @return [Symbol, Telnyx::Models::CallDialParams::AnsweringMachineDetection, nil]
      optional :answering_machine_detection, enum: -> { Telnyx::CallDialParams::AnsweringMachineDetection }

      # @!attribute answering_machine_detection_config
      #   Optional configuration parameters to modify 'answering_machine_detection'
      #   performance.
      #
      #   @return [Telnyx::Models::CallDialParams::AnsweringMachineDetectionConfig, nil]
      optional :answering_machine_detection_config,
               -> { Telnyx::CallDialParams::AnsweringMachineDetectionConfig }

      # @!attribute audio_url
      #   The URL of a file to be played back to the callee when the call is answered. The
      #   URL can point to either a WAV or MP3 file. media_name and audio_url cannot be
      #   used together in one request.
      #
      #   @return [String, nil]
      optional :audio_url, String

      # @!attribute billing_group_id
      #   Use this field to set the Billing Group ID for the call. Must be a valid and
      #   existing Billing Group ID.
      #
      #   @return [String, nil]
      optional :billing_group_id, String

      # @!attribute bridge_intent
      #   Indicates the intent to bridge this call with the call specified in link_to.
      #   When bridge_intent is true, link_to becomes required and the from number will be
      #   overwritten by the from number from the linked call.
      #
      #   @return [Boolean, nil]
      optional :bridge_intent, Telnyx::Internal::Type::Boolean

      # @!attribute bridge_on_answer
      #   Whether to automatically bridge answered call to the call specified in link_to.
      #   When bridge_on_answer is true, link_to becomes required.
      #
      #   @return [Boolean, nil]
      optional :bridge_on_answer, Telnyx::Internal::Type::Boolean

      # @!attribute client_state
      #   Use this field to add state to every subsequent webhook. It must be a valid
      #   Base-64 encoded string.
      #
      #   @return [String, nil]
      optional :client_state, String

      # @!attribute command_id
      #   Use this field to avoid duplicate commands. Telnyx will ignore others Dial
      #   commands with the same `command_id`.
      #
      #   @return [String, nil]
      optional :command_id, String

      # @!attribute conference_config
      #   Optional configuration parameters to dial new participant into a conference.
      #
      #   @return [Telnyx::Models::CallDialParams::ConferenceConfig, nil]
      optional :conference_config, -> { Telnyx::CallDialParams::ConferenceConfig }

      # @!attribute custom_headers
      #   Custom headers to be added to the SIP INVITE.
      #
      #   @return [Array<Telnyx::Models::CustomSipHeader>, nil]
      optional :custom_headers, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::CustomSipHeader] }

      # @!attribute dialogflow_config
      #
      #   @return [Telnyx::Models::DialogflowConfig, nil]
      optional :dialogflow_config, -> { Telnyx::DialogflowConfig }

      # @!attribute enable_dialogflow
      #   Enables Dialogflow for the current call. The default value is false.
      #
      #   @return [Boolean, nil]
      optional :enable_dialogflow, Telnyx::Internal::Type::Boolean

      # @!attribute from_display_name
      #   The `from_display_name` string to be used as the caller id name (SIP From
      #   Display Name) presented to the destination (`to` number). The string should have
      #   a maximum of 128 characters, containing only letters, numbers, spaces, and
      #   -\_~!.+ special characters. If ommited, the display name will be the same as the
      #   number in the `from` field.
      #
      #   @return [String, nil]
      optional :from_display_name, String

      # @!attribute link_to
      #   Use another call's control id for sharing the same call session id
      #
      #   @return [String, nil]
      optional :link_to, String

      # @!attribute media_encryption
      #   Defines whether media should be encrypted on the call.
      #
      #   @return [Symbol, Telnyx::Models::CallDialParams::MediaEncryption, nil]
      optional :media_encryption, enum: -> { Telnyx::CallDialParams::MediaEncryption }

      # @!attribute media_name
      #   The media_name of a file to be played back to the callee when the call is
      #   answered. The media_name must point to a file previously uploaded to
      #   api.telnyx.com/v2/media by the same user/organization. The file must either be a
      #   WAV or MP3 file.
      #
      #   @return [String, nil]
      optional :media_name, String

      # @!attribute park_after_unbridge
      #   If supplied with the value `self`, the current leg will be parked after
      #   unbridge. If not set, the default behavior is to hang up the leg. When
      #   park_after_unbridge is set, link_to becomes required.
      #
      #   @return [String, nil]
      optional :park_after_unbridge, String

      # @!attribute preferred_codecs
      #   The list of comma-separated codecs in a preferred order for the forked media to
      #   be received.
      #
      #   @return [String, nil]
      optional :preferred_codecs, String

      # @!attribute record
      #   Start recording automatically after an event. Disabled by default.
      #
      #   @return [Symbol, Telnyx::Models::CallDialParams::Record, nil]
      optional :record, enum: -> { Telnyx::CallDialParams::Record }

      # @!attribute record_channels
      #   Defines which channel should be recorded ('single' or 'dual') when `record` is
      #   specified.
      #
      #   @return [Symbol, Telnyx::Models::CallDialParams::RecordChannels, nil]
      optional :record_channels, enum: -> { Telnyx::CallDialParams::RecordChannels }

      # @!attribute record_custom_file_name
      #   The custom recording file name to be used instead of the default `call_leg_id`.
      #   Telnyx will still add a Unix timestamp suffix.
      #
      #   @return [String, nil]
      optional :record_custom_file_name, String

      # @!attribute record_format
      #   Defines the format of the recording ('wav' or 'mp3') when `record` is specified.
      #
      #   @return [Symbol, Telnyx::Models::CallDialParams::RecordFormat, nil]
      optional :record_format, enum: -> { Telnyx::CallDialParams::RecordFormat }

      # @!attribute record_max_length
      #   Defines the maximum length for the recording in seconds when `record` is
      #   specified. The minimum value is 0. The maximum value is 43200. The default value
      #   is 0 (infinite).
      #
      #   @return [Integer, nil]
      optional :record_max_length, Integer

      # @!attribute record_timeout_secs
      #   The number of seconds that Telnyx will wait for the recording to be stopped if
      #   silence is detected when `record` is specified. The timer only starts when the
      #   speech is detected. Please note that call transcription is used to detect
      #   silence and the related charge will be applied. The minimum value is 0. The
      #   default value is 0 (infinite).
      #
      #   @return [Integer, nil]
      optional :record_timeout_secs, Integer

      # @!attribute record_track
      #   The audio track to be recorded. Can be either `both`, `inbound` or `outbound`.
      #   If only single track is specified (`inbound`, `outbound`), `channels`
      #   configuration is ignored and it will be recorded as mono (single channel).
      #
      #   @return [Symbol, Telnyx::Models::CallDialParams::RecordTrack, nil]
      optional :record_track, enum: -> { Telnyx::CallDialParams::RecordTrack }

      # @!attribute record_trim
      #   When set to `trim-silence`, silence will be removed from the beginning and end
      #   of the recording.
      #
      #   @return [Symbol, Telnyx::Models::CallDialParams::RecordTrim, nil]
      optional :record_trim, enum: -> { Telnyx::CallDialParams::RecordTrim }

      # @!attribute send_silence_when_idle
      #   Generate silence RTP packets when no transmission available.
      #
      #   @return [Boolean, nil]
      optional :send_silence_when_idle, Telnyx::Internal::Type::Boolean

      # @!attribute sip_auth_password
      #   SIP Authentication password used for SIP challenges.
      #
      #   @return [String, nil]
      optional :sip_auth_password, String

      # @!attribute sip_auth_username
      #   SIP Authentication username used for SIP challenges.
      #
      #   @return [String, nil]
      optional :sip_auth_username, String

      # @!attribute sip_headers
      #   SIP headers to be added to the SIP INVITE request. Currently only User-to-User
      #   header is supported.
      #
      #   @return [Array<Telnyx::Models::SipHeader>, nil]
      optional :sip_headers, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::SipHeader] }

      # @!attribute sip_transport_protocol
      #   Defines SIP transport protocol to be used on the call.
      #
      #   @return [Symbol, Telnyx::Models::CallDialParams::SipTransportProtocol, nil]
      optional :sip_transport_protocol, enum: -> { Telnyx::CallDialParams::SipTransportProtocol }

      # @!attribute sound_modifications
      #   Use this field to modify sound effects, for example adjust the pitch.
      #
      #   @return [Telnyx::Models::SoundModifications, nil]
      optional :sound_modifications, -> { Telnyx::SoundModifications }

      # @!attribute stream_bidirectional_codec
      #   Indicates codec for bidirectional streaming RTP payloads. Used only with
      #   stream_bidirectional_mode=rtp. Case sensitive.
      #
      #   @return [Symbol, Telnyx::Models::StreamBidirectionalCodec, nil]
      optional :stream_bidirectional_codec, enum: -> { Telnyx::StreamBidirectionalCodec }

      # @!attribute stream_bidirectional_mode
      #   Configures method of bidirectional streaming (mp3, rtp).
      #
      #   @return [Symbol, Telnyx::Models::StreamBidirectionalMode, nil]
      optional :stream_bidirectional_mode, enum: -> { Telnyx::StreamBidirectionalMode }

      # @!attribute stream_bidirectional_sampling_rate
      #   Audio sampling rate.
      #
      #   @return [Integer, Telnyx::Models::CallDialParams::StreamBidirectionalSamplingRate, nil]
      optional :stream_bidirectional_sampling_rate,
               enum: -> { Telnyx::CallDialParams::StreamBidirectionalSamplingRate }

      # @!attribute stream_bidirectional_target_legs
      #   Specifies which call legs should receive the bidirectional stream audio.
      #
      #   @return [Symbol, Telnyx::Models::StreamBidirectionalTargetLegs, nil]
      optional :stream_bidirectional_target_legs, enum: -> { Telnyx::StreamBidirectionalTargetLegs }

      # @!attribute stream_codec
      #   Specifies the codec to be used for the streamed audio. When set to 'default' or
      #   when transcoding is not possible, the codec from the call will be used.
      #
      #   @return [Symbol, Telnyx::Models::StreamCodec, nil]
      optional :stream_codec, enum: -> { Telnyx::StreamCodec }

      # @!attribute stream_establish_before_call_originate
      #   Establish websocket connection before dialing the destination. This is useful
      #   for cases where the websocket connection takes a long time to establish.
      #
      #   @return [Boolean, nil]
      optional :stream_establish_before_call_originate, Telnyx::Internal::Type::Boolean

      # @!attribute stream_track
      #   Specifies which track should be streamed.
      #
      #   @return [Symbol, Telnyx::Models::CallDialParams::StreamTrack, nil]
      optional :stream_track, enum: -> { Telnyx::CallDialParams::StreamTrack }

      # @!attribute stream_url
      #   The destination WebSocket address where the stream is going to be delivered.
      #
      #   @return [String, nil]
      optional :stream_url, String

      # @!attribute supervise_call_control_id
      #   The call leg which will be supervised by the new call.
      #
      #   @return [String, nil]
      optional :supervise_call_control_id, String

      # @!attribute supervisor_role
      #   The role of the supervisor call. 'barge' means that supervisor call hears and is
      #   being heard by both ends of the call (caller & callee). 'whisper' means that
      #   only supervised_call_control_id hears supervisor but supervisor can hear
      #   everything. 'monitor' means that nobody can hear supervisor call, but supervisor
      #   can hear everything on the call.
      #
      #   @return [Symbol, Telnyx::Models::CallDialParams::SupervisorRole, nil]
      optional :supervisor_role, enum: -> { Telnyx::CallDialParams::SupervisorRole }

      # @!attribute time_limit_secs
      #   Sets the maximum duration of a Call Control Leg in seconds. If the time limit is
      #   reached, the call will hangup and a `call.hangup` webhook with a `hangup_cause`
      #   of `time_limit` will be sent. For example, by setting a time limit of 120
      #   seconds, a Call Leg will be automatically terminated two minutes after being
      #   answered. The default time limit is 14400 seconds or 4 hours and this is also
      #   the maximum allowed call length.
      #
      #   @return [Integer, nil]
      optional :time_limit_secs, Integer

      # @!attribute timeout_secs
      #   The number of seconds that Telnyx will wait for the call to be answered by the
      #   destination to which it is being called. If the timeout is reached before an
      #   answer is received, the call will hangup and a `call.hangup` webhook with a
      #   `hangup_cause` of `timeout` will be sent. Minimum value is 5 seconds. Maximum
      #   value is 600 seconds.
      #
      #   @return [Integer, nil]
      optional :timeout_secs, Integer

      # @!attribute transcription
      #   Enable transcription upon call answer. The default value is false.
      #
      #   @return [Boolean, nil]
      optional :transcription, Telnyx::Internal::Type::Boolean

      # @!attribute transcription_config
      #
      #   @return [Telnyx::Models::Calls::TranscriptionStartRequest, nil]
      optional :transcription_config, -> { Telnyx::Calls::TranscriptionStartRequest }

      # @!attribute webhook_url
      #   Use this field to override the URL for which Telnyx will send subsequent
      #   webhooks to for this call.
      #
      #   @return [String, nil]
      optional :webhook_url, String

      # @!attribute webhook_url_method
      #   HTTP request type used for `webhook_url`.
      #
      #   @return [Symbol, Telnyx::Models::CallDialParams::WebhookURLMethod, nil]
      optional :webhook_url_method, enum: -> { Telnyx::CallDialParams::WebhookURLMethod }

      # @!method initialize(connection_id:, from:, to:, answering_machine_detection: nil, answering_machine_detection_config: nil, audio_url: nil, billing_group_id: nil, bridge_intent: nil, bridge_on_answer: nil, client_state: nil, command_id: nil, conference_config: nil, custom_headers: nil, dialogflow_config: nil, enable_dialogflow: nil, from_display_name: nil, link_to: nil, media_encryption: nil, media_name: nil, park_after_unbridge: nil, preferred_codecs: nil, record: nil, record_channels: nil, record_custom_file_name: nil, record_format: nil, record_max_length: nil, record_timeout_secs: nil, record_track: nil, record_trim: nil, send_silence_when_idle: nil, sip_auth_password: nil, sip_auth_username: nil, sip_headers: nil, sip_transport_protocol: nil, sound_modifications: nil, stream_bidirectional_codec: nil, stream_bidirectional_mode: nil, stream_bidirectional_sampling_rate: nil, stream_bidirectional_target_legs: nil, stream_codec: nil, stream_establish_before_call_originate: nil, stream_track: nil, stream_url: nil, supervise_call_control_id: nil, supervisor_role: nil, time_limit_secs: nil, timeout_secs: nil, transcription: nil, transcription_config: nil, webhook_url: nil, webhook_url_method: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::CallDialParams} for more details.
      #
      #   @param connection_id [String] The ID of the Call Control App (formerly ID of the connection) to be used when d
      #
      #   @param from [String] The `from` number to be used as the caller id presented to the destination (`to`
      #
      #   @param to [String, Array<String>] The DID or SIP URI to dial out to. Multiple DID or SIP URIs can be provided usin
      #
      #   @param answering_machine_detection [Symbol, Telnyx::Models::CallDialParams::AnsweringMachineDetection] Enables Answering Machine Detection. Telnyx offers Premium and Standard detectio
      #
      #   @param answering_machine_detection_config [Telnyx::Models::CallDialParams::AnsweringMachineDetectionConfig] Optional configuration parameters to modify 'answering_machine_detection' perfor
      #
      #   @param audio_url [String] The URL of a file to be played back to the callee when the call is answered. The
      #
      #   @param billing_group_id [String] Use this field to set the Billing Group ID for the call. Must be a valid and exi
      #
      #   @param bridge_intent [Boolean] Indicates the intent to bridge this call with the call specified in link_to. Whe
      #
      #   @param bridge_on_answer [Boolean] Whether to automatically bridge answered call to the call specified in link_to.
      #
      #   @param client_state [String] Use this field to add state to every subsequent webhook. It must be a valid Base
      #
      #   @param command_id [String] Use this field to avoid duplicate commands. Telnyx will ignore others Dial comma
      #
      #   @param conference_config [Telnyx::Models::CallDialParams::ConferenceConfig] Optional configuration parameters to dial new participant into a conference.
      #
      #   @param custom_headers [Array<Telnyx::Models::CustomSipHeader>] Custom headers to be added to the SIP INVITE.
      #
      #   @param dialogflow_config [Telnyx::Models::DialogflowConfig]
      #
      #   @param enable_dialogflow [Boolean] Enables Dialogflow for the current call. The default value is false.
      #
      #   @param from_display_name [String] The `from_display_name` string to be used as the caller id name (SIP From Displa
      #
      #   @param link_to [String] Use another call's control id for sharing the same call session id
      #
      #   @param media_encryption [Symbol, Telnyx::Models::CallDialParams::MediaEncryption] Defines whether media should be encrypted on the call.
      #
      #   @param media_name [String] The media_name of a file to be played back to the callee when the call is answer
      #
      #   @param park_after_unbridge [String] If supplied with the value `self`, the current leg will be parked after unbridge
      #
      #   @param preferred_codecs [String] The list of comma-separated codecs in a preferred order for the forked media to
      #
      #   @param record [Symbol, Telnyx::Models::CallDialParams::Record] Start recording automatically after an event. Disabled by default.
      #
      #   @param record_channels [Symbol, Telnyx::Models::CallDialParams::RecordChannels] Defines which channel should be recorded ('single' or 'dual') when `record` is s
      #
      #   @param record_custom_file_name [String] The custom recording file name to be used instead of the default `call_leg_id`.
      #
      #   @param record_format [Symbol, Telnyx::Models::CallDialParams::RecordFormat] Defines the format of the recording ('wav' or 'mp3') when `record` is specified.
      #
      #   @param record_max_length [Integer] Defines the maximum length for the recording in seconds when `record` is specifi
      #
      #   @param record_timeout_secs [Integer] The number of seconds that Telnyx will wait for the recording to be stopped if s
      #
      #   @param record_track [Symbol, Telnyx::Models::CallDialParams::RecordTrack] The audio track to be recorded. Can be either `both`, `inbound` or `outbound`. I
      #
      #   @param record_trim [Symbol, Telnyx::Models::CallDialParams::RecordTrim] When set to `trim-silence`, silence will be removed from the beginning and end o
      #
      #   @param send_silence_when_idle [Boolean] Generate silence RTP packets when no transmission available.
      #
      #   @param sip_auth_password [String] SIP Authentication password used for SIP challenges.
      #
      #   @param sip_auth_username [String] SIP Authentication username used for SIP challenges.
      #
      #   @param sip_headers [Array<Telnyx::Models::SipHeader>] SIP headers to be added to the SIP INVITE request. Currently only User-to-User h
      #
      #   @param sip_transport_protocol [Symbol, Telnyx::Models::CallDialParams::SipTransportProtocol] Defines SIP transport protocol to be used on the call.
      #
      #   @param sound_modifications [Telnyx::Models::SoundModifications] Use this field to modify sound effects, for example adjust the pitch.
      #
      #   @param stream_bidirectional_codec [Symbol, Telnyx::Models::StreamBidirectionalCodec] Indicates codec for bidirectional streaming RTP payloads. Used only with
      #   stream\_
      #
      #   @param stream_bidirectional_mode [Symbol, Telnyx::Models::StreamBidirectionalMode] Configures method of bidirectional streaming (mp3, rtp).
      #
      #   @param stream_bidirectional_sampling_rate [Integer, Telnyx::Models::CallDialParams::StreamBidirectionalSamplingRate] Audio sampling rate.
      #
      #   @param stream_bidirectional_target_legs [Symbol, Telnyx::Models::StreamBidirectionalTargetLegs] Specifies which call legs should receive the bidirectional stream audio.
      #
      #   @param stream_codec [Symbol, Telnyx::Models::StreamCodec] Specifies the codec to be used for the streamed audio. When set to 'default' or
      #
      #   @param stream_establish_before_call_originate [Boolean] Establish websocket connection before dialing the destination. This is useful fo
      #
      #   @param stream_track [Symbol, Telnyx::Models::CallDialParams::StreamTrack] Specifies which track should be streamed.
      #
      #   @param stream_url [String] The destination WebSocket address where the stream is going to be delivered.
      #
      #   @param supervise_call_control_id [String] The call leg which will be supervised by the new call.
      #
      #   @param supervisor_role [Symbol, Telnyx::Models::CallDialParams::SupervisorRole] The role of the supervisor call. 'barge' means that supervisor call hears and is
      #
      #   @param time_limit_secs [Integer] Sets the maximum duration of a Call Control Leg in seconds. If the time limit is
      #
      #   @param timeout_secs [Integer] The number of seconds that Telnyx will wait for the call to be answered by the d
      #
      #   @param transcription [Boolean] Enable transcription upon call answer. The default value is false.
      #
      #   @param transcription_config [Telnyx::Models::Calls::TranscriptionStartRequest]
      #
      #   @param webhook_url [String] Use this field to override the URL for which Telnyx will send subsequent webhook
      #
      #   @param webhook_url_method [Symbol, Telnyx::Models::CallDialParams::WebhookURLMethod] HTTP request type used for `webhook_url`.
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      # The DID or SIP URI to dial out to. Multiple DID or SIP URIs can be provided
      # using an array of strings
      module To
        extend Telnyx::Internal::Type::Union

        variant String

        variant -> { Telnyx::Models::CallDialParams::To::StringArray }

        # @!method self.variants
        #   @return [Array(String, Array<String>)]

        # @type [Telnyx::Internal::Type::Converter]
        StringArray = Telnyx::Internal::Type::ArrayOf[String]
      end

      # Enables Answering Machine Detection. Telnyx offers Premium and Standard
      # detections. With Premium detection, when a call is answered, Telnyx runs
      # real-time detection and sends a `call.machine.premium.detection.ended` webhook
      # with one of the following results: `human_residence`, `human_business`,
      # `machine`, `silence` or `fax_detected`. If we detect a beep, we also send a
      # `call.machine.premium.greeting.ended` webhook with the result of
      # `beep_detected`. If we detect a beep before
      # `call.machine.premium.detection.ended` we only send
      # `call.machine.premium.greeting.ended`, and if we detect a beep after
      # `call.machine.premium.detection.ended`, we send both webhooks. With Standard
      # detection, when a call is answered, Telnyx runs real-time detection to determine
      # if it was picked up by a human or a machine and sends an
      # `call.machine.detection.ended` webhook with the analysis result. If
      # `greeting_end` or `detect_words` is used and a `machine` is detected, you will
      # receive another `call.machine.greeting.ended` webhook when the answering machine
      # greeting ends with a beep or silence. If `detect_beep` is used, you will only
      # receive `call.machine.greeting.ended` if a beep is detected.
      module AnsweringMachineDetection
        extend Telnyx::Internal::Type::Enum

        PREMIUM = :premium
        DETECT = :detect
        DETECT_BEEP = :detect_beep
        DETECT_WORDS = :detect_words
        GREETING_END = :greeting_end
        DISABLED = :disabled

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      class AnsweringMachineDetectionConfig < Telnyx::Internal::Type::BaseModel
        # @!attribute after_greeting_silence_millis
        #   Silence duration threshold after a greeting message or voice for it be
        #   considered human.
        #
        #   @return [Integer, nil]
        optional :after_greeting_silence_millis, Integer

        # @!attribute between_words_silence_millis
        #   Maximum threshold for silence between words.
        #
        #   @return [Integer, nil]
        optional :between_words_silence_millis, Integer

        # @!attribute greeting_duration_millis
        #   Maximum threshold of a human greeting. If greeting longer than this value,
        #   considered machine.
        #
        #   @return [Integer, nil]
        optional :greeting_duration_millis, Integer

        # @!attribute greeting_silence_duration_millis
        #   If machine already detected, maximum threshold for silence between words. If
        #   exceeded, the greeting is considered ended.
        #
        #   @return [Integer, nil]
        optional :greeting_silence_duration_millis, Integer

        # @!attribute greeting_total_analysis_time_millis
        #   If machine already detected, maximum timeout threshold to determine the end of
        #   the machine greeting.
        #
        #   @return [Integer, nil]
        optional :greeting_total_analysis_time_millis, Integer

        # @!attribute initial_silence_millis
        #   If initial silence duration is greater than this value, consider it a machine.
        #
        #   @return [Integer, nil]
        optional :initial_silence_millis, Integer

        # @!attribute maximum_number_of_words
        #   If number of detected words is greater than this value, consder it a machine.
        #
        #   @return [Integer, nil]
        optional :maximum_number_of_words, Integer

        # @!attribute maximum_word_length_millis
        #   If a single word lasts longer than this threshold, consider it a machine.
        #
        #   @return [Integer, nil]
        optional :maximum_word_length_millis, Integer

        # @!attribute silence_threshold
        #   Minimum noise threshold for any analysis.
        #
        #   @return [Integer, nil]
        optional :silence_threshold, Integer

        # @!attribute total_analysis_time_millis
        #   Maximum timeout threshold for overall detection.
        #
        #   @return [Integer, nil]
        optional :total_analysis_time_millis, Integer

        # @!method initialize(after_greeting_silence_millis: nil, between_words_silence_millis: nil, greeting_duration_millis: nil, greeting_silence_duration_millis: nil, greeting_total_analysis_time_millis: nil, initial_silence_millis: nil, maximum_number_of_words: nil, maximum_word_length_millis: nil, silence_threshold: nil, total_analysis_time_millis: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::CallDialParams::AnsweringMachineDetectionConfig} for more
        #   details.
        #
        #   Optional configuration parameters to modify 'answering_machine_detection'
        #   performance.
        #
        #   @param after_greeting_silence_millis [Integer] Silence duration threshold after a greeting message or voice for it be considere
        #
        #   @param between_words_silence_millis [Integer] Maximum threshold for silence between words.
        #
        #   @param greeting_duration_millis [Integer] Maximum threshold of a human greeting. If greeting longer than this value, consi
        #
        #   @param greeting_silence_duration_millis [Integer] If machine already detected, maximum threshold for silence between words. If exc
        #
        #   @param greeting_total_analysis_time_millis [Integer] If machine already detected, maximum timeout threshold to determine the end of t
        #
        #   @param initial_silence_millis [Integer] If initial silence duration is greater than this value, consider it a machine.
        #
        #   @param maximum_number_of_words [Integer] If number of detected words is greater than this value, consder it a machine.
        #
        #   @param maximum_word_length_millis [Integer] If a single word lasts longer than this threshold, consider it a machine.
        #
        #   @param silence_threshold [Integer] Minimum noise threshold for any analysis.
        #
        #   @param total_analysis_time_millis [Integer] Maximum timeout threshold for overall detection.
      end

      class ConferenceConfig < Telnyx::Internal::Type::BaseModel
        # @!attribute id
        #   Conference ID to be joined
        #
        #   @return [String, nil]
        optional :id, String

        # @!attribute beep_enabled
        #   Whether a beep sound should be played when the participant joins and/or leaves
        #   the conference. Can be used to override the conference-level setting.
        #
        #   @return [Symbol, Telnyx::Models::CallDialParams::ConferenceConfig::BeepEnabled, nil]
        optional :beep_enabled, enum: -> { Telnyx::CallDialParams::ConferenceConfig::BeepEnabled }

        # @!attribute conference_name
        #   Conference name to be joined
        #
        #   @return [String, nil]
        optional :conference_name, String

        # @!attribute early_media
        #   Controls the moment when dialled call is joined into conference. If set to
        #   `true` user will be joined as soon as media is available (ringback). If `false`
        #   user will be joined when call is answered. Defaults to `true`
        #
        #   @return [Boolean, nil]
        optional :early_media, Telnyx::Internal::Type::Boolean

        # @!attribute end_conference_on_exit
        #   Whether the conference should end and all remaining participants be hung up
        #   after the participant leaves the conference. Defaults to "false".
        #
        #   @return [Boolean, nil]
        optional :end_conference_on_exit, Telnyx::Internal::Type::Boolean

        # @!attribute hold
        #   Whether the participant should be put on hold immediately after joining the
        #   conference. Defaults to "false".
        #
        #   @return [Boolean, nil]
        optional :hold, Telnyx::Internal::Type::Boolean

        # @!attribute hold_audio_url
        #   The URL of a file to be played to the participant when they are put on hold
        #   after joining the conference. hold_media_name and hold_audio_url cannot be used
        #   together in one request. Takes effect only when "start_conference_on_create" is
        #   set to "false". This property takes effect only if "hold" is set to "true".
        #
        #   @return [String, nil]
        optional :hold_audio_url, String

        # @!attribute hold_media_name
        #   The media_name of a file to be played to the participant when they are put on
        #   hold after joining the conference. The media_name must point to a file
        #   previously uploaded to api.telnyx.com/v2/media by the same user/organization.
        #   The file must either be a WAV or MP3 file. Takes effect only when
        #   "start_conference_on_create" is set to "false". This property takes effect only
        #   if "hold" is set to "true".
        #
        #   @return [String, nil]
        optional :hold_media_name, String

        # @!attribute mute
        #   Whether the participant should be muted immediately after joining the
        #   conference. Defaults to "false".
        #
        #   @return [Boolean, nil]
        optional :mute, Telnyx::Internal::Type::Boolean

        # @!attribute soft_end_conference_on_exit
        #   Whether the conference should end after the participant leaves the conference.
        #   NOTE this doesn't hang up the other participants. Defaults to "false".
        #
        #   @return [Boolean, nil]
        optional :soft_end_conference_on_exit, Telnyx::Internal::Type::Boolean

        # @!attribute start_conference_on_create
        #   Whether the conference should be started on creation. If the conference isn't
        #   started all participants that join are automatically put on hold. Defaults to
        #   "true".
        #
        #   @return [Boolean, nil]
        optional :start_conference_on_create, Telnyx::Internal::Type::Boolean

        # @!attribute start_conference_on_enter
        #   Whether the conference should be started after the participant joins the
        #   conference. Defaults to "false".
        #
        #   @return [Boolean, nil]
        optional :start_conference_on_enter, Telnyx::Internal::Type::Boolean

        # @!attribute supervisor_role
        #   Sets the joining participant as a supervisor for the conference. A conference
        #   can have multiple supervisors. "barge" means the supervisor enters the
        #   conference as a normal participant. This is the same as "none". "monitor" means
        #   the supervisor is muted but can hear all participants. "whisper" means that only
        #   the specified "whisper_call_control_ids" can hear the supervisor. Defaults to
        #   "none".
        #
        #   @return [Symbol, Telnyx::Models::CallDialParams::ConferenceConfig::SupervisorRole, nil]
        optional :supervisor_role, enum: -> { Telnyx::CallDialParams::ConferenceConfig::SupervisorRole }

        # @!attribute whisper_call_control_ids
        #   Array of unique call_control_ids the joining supervisor can whisper to. If none
        #   provided, the supervisor will join the conference as a monitoring participant
        #   only.
        #
        #   @return [Array<String>, nil]
        optional :whisper_call_control_ids, Telnyx::Internal::Type::ArrayOf[String]

        # @!method initialize(id: nil, beep_enabled: nil, conference_name: nil, early_media: nil, end_conference_on_exit: nil, hold: nil, hold_audio_url: nil, hold_media_name: nil, mute: nil, soft_end_conference_on_exit: nil, start_conference_on_create: nil, start_conference_on_enter: nil, supervisor_role: nil, whisper_call_control_ids: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::CallDialParams::ConferenceConfig} for more details.
        #
        #   Optional configuration parameters to dial new participant into a conference.
        #
        #   @param id [String] Conference ID to be joined
        #
        #   @param beep_enabled [Symbol, Telnyx::Models::CallDialParams::ConferenceConfig::BeepEnabled] Whether a beep sound should be played when the participant joins and/or leaves t
        #
        #   @param conference_name [String] Conference name to be joined
        #
        #   @param early_media [Boolean] Controls the moment when dialled call is joined into conference. If set to `true
        #
        #   @param end_conference_on_exit [Boolean] Whether the conference should end and all remaining participants be hung up afte
        #
        #   @param hold [Boolean] Whether the participant should be put on hold immediately after joining the conf
        #
        #   @param hold_audio_url [String] The URL of a file to be played to the participant when they are put on hold afte
        #
        #   @param hold_media_name [String] The media_name of a file to be played to the participant when they are put on ho
        #
        #   @param mute [Boolean] Whether the participant should be muted immediately after joining the conference
        #
        #   @param soft_end_conference_on_exit [Boolean] Whether the conference should end after the participant leaves the conference. N
        #
        #   @param start_conference_on_create [Boolean] Whether the conference should be started on creation. If the conference isn't st
        #
        #   @param start_conference_on_enter [Boolean] Whether the conference should be started after the participant joins the confere
        #
        #   @param supervisor_role [Symbol, Telnyx::Models::CallDialParams::ConferenceConfig::SupervisorRole] Sets the joining participant as a supervisor for the conference. A conference ca
        #
        #   @param whisper_call_control_ids [Array<String>] Array of unique call_control_ids the joining supervisor can whisper to. If none

        # Whether a beep sound should be played when the participant joins and/or leaves
        # the conference. Can be used to override the conference-level setting.
        #
        # @see Telnyx::Models::CallDialParams::ConferenceConfig#beep_enabled
        module BeepEnabled
          extend Telnyx::Internal::Type::Enum

          ALWAYS = :always
          NEVER = :never
          ON_ENTER = :on_enter
          ON_EXIT = :on_exit

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Sets the joining participant as a supervisor for the conference. A conference
        # can have multiple supervisors. "barge" means the supervisor enters the
        # conference as a normal participant. This is the same as "none". "monitor" means
        # the supervisor is muted but can hear all participants. "whisper" means that only
        # the specified "whisper_call_control_ids" can hear the supervisor. Defaults to
        # "none".
        #
        # @see Telnyx::Models::CallDialParams::ConferenceConfig#supervisor_role
        module SupervisorRole
          extend Telnyx::Internal::Type::Enum

          BARGE = :barge
          MONITOR = :monitor
          NONE = :none
          WHISPER = :whisper

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      # Defines whether media should be encrypted on the call.
      module MediaEncryption
        extend Telnyx::Internal::Type::Enum

        DISABLED = :disabled
        SRTP = :SRTP
        DTLS = :DTLS

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Start recording automatically after an event. Disabled by default.
      module Record
        extend Telnyx::Internal::Type::Enum

        RECORD_FROM_ANSWER = :"record-from-answer"

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Defines which channel should be recorded ('single' or 'dual') when `record` is
      # specified.
      module RecordChannels
        extend Telnyx::Internal::Type::Enum

        SINGLE = :single
        DUAL = :dual

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Defines the format of the recording ('wav' or 'mp3') when `record` is specified.
      module RecordFormat
        extend Telnyx::Internal::Type::Enum

        WAV = :wav
        MP3 = :mp3

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # The audio track to be recorded. Can be either `both`, `inbound` or `outbound`.
      # If only single track is specified (`inbound`, `outbound`), `channels`
      # configuration is ignored and it will be recorded as mono (single channel).
      module RecordTrack
        extend Telnyx::Internal::Type::Enum

        BOTH = :both
        INBOUND = :inbound
        OUTBOUND = :outbound

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # When set to `trim-silence`, silence will be removed from the beginning and end
      # of the recording.
      module RecordTrim
        extend Telnyx::Internal::Type::Enum

        TRIM_SILENCE = :"trim-silence"

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Defines SIP transport protocol to be used on the call.
      module SipTransportProtocol
        extend Telnyx::Internal::Type::Enum

        UDP = :UDP
        TCP = :TCP
        TLS = :TLS

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Audio sampling rate.
      module StreamBidirectionalSamplingRate
        extend Telnyx::Internal::Type::Enum

        STREAM_BIDIRECTIONAL_SAMPLING_RATE_8000 = 8000
        STREAM_BIDIRECTIONAL_SAMPLING_RATE_16000 = 16_000
        STREAM_BIDIRECTIONAL_SAMPLING_RATE_22050 = 22_050
        STREAM_BIDIRECTIONAL_SAMPLING_RATE_24000 = 24_000
        STREAM_BIDIRECTIONAL_SAMPLING_RATE_48000 = 48_000

        # @!method self.values
        #   @return [Array<Integer>]
      end

      # Specifies which track should be streamed.
      module StreamTrack
        extend Telnyx::Internal::Type::Enum

        INBOUND_TRACK = :inbound_track
        OUTBOUND_TRACK = :outbound_track
        BOTH_TRACKS = :both_tracks

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # The role of the supervisor call. 'barge' means that supervisor call hears and is
      # being heard by both ends of the call (caller & callee). 'whisper' means that
      # only supervised_call_control_id hears supervisor but supervisor can hear
      # everything. 'monitor' means that nobody can hear supervisor call, but supervisor
      # can hear everything on the call.
      module SupervisorRole
        extend Telnyx::Internal::Type::Enum

        BARGE = :barge
        WHISPER = :whisper
        MONITOR = :monitor

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # HTTP request type used for `webhook_url`.
      module WebhookURLMethod
        extend Telnyx::Internal::Type::Enum

        POST = :POST
        GET = :GET

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end

# typed: strong

module Telnyx
  module Models
    class CallDialParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::CallDialParams, Telnyx::Internal::AnyHash)
        end

      # The ID of the Call Control App (formerly ID of the connection) to be used when
      # dialing the destination.
      sig { returns(String) }
      attr_accessor :connection_id

      # The `from` number to be used as the caller id presented to the destination (`to`
      # number). The number should be in +E164 format.
      sig { returns(String) }
      attr_accessor :from

      # The DID or SIP URI to dial out to. Multiple DID or SIP URIs can be provided
      # using an array of strings
      sig { returns(Telnyx::CallDialParams::To::Variants) }
      attr_accessor :to

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
      sig do
        returns(
          T.nilable(Telnyx::CallDialParams::AnsweringMachineDetection::OrSymbol)
        )
      end
      attr_reader :answering_machine_detection

      sig do
        params(
          answering_machine_detection:
            Telnyx::CallDialParams::AnsweringMachineDetection::OrSymbol
        ).void
      end
      attr_writer :answering_machine_detection

      # Optional configuration parameters to modify 'answering_machine_detection'
      # performance.
      sig do
        returns(
          T.nilable(Telnyx::CallDialParams::AnsweringMachineDetectionConfig)
        )
      end
      attr_reader :answering_machine_detection_config

      sig do
        params(
          answering_machine_detection_config:
            Telnyx::CallDialParams::AnsweringMachineDetectionConfig::OrHash
        ).void
      end
      attr_writer :answering_machine_detection_config

      # The URL of a file to be played back to the callee when the call is answered. The
      # URL can point to either a WAV or MP3 file. media_name and audio_url cannot be
      # used together in one request.
      sig { returns(T.nilable(String)) }
      attr_reader :audio_url

      sig { params(audio_url: String).void }
      attr_writer :audio_url

      # Use this field to set the Billing Group ID for the call. Must be a valid and
      # existing Billing Group ID.
      sig { returns(T.nilable(String)) }
      attr_reader :billing_group_id

      sig { params(billing_group_id: String).void }
      attr_writer :billing_group_id

      # Indicates the intent to bridge this call with the call specified in link_to.
      # When bridge_intent is true, link_to becomes required and the from number will be
      # overwritten by the from number from the linked call.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :bridge_intent

      sig { params(bridge_intent: T::Boolean).void }
      attr_writer :bridge_intent

      # Whether to automatically bridge answered call to the call specified in link_to.
      # When bridge_on_answer is true, link_to becomes required.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :bridge_on_answer

      sig { params(bridge_on_answer: T::Boolean).void }
      attr_writer :bridge_on_answer

      # Use this field to add state to every subsequent webhook. It must be a valid
      # Base-64 encoded string.
      sig { returns(T.nilable(String)) }
      attr_reader :client_state

      sig { params(client_state: String).void }
      attr_writer :client_state

      # Use this field to avoid duplicate commands. Telnyx will ignore others Dial
      # commands with the same `command_id`.
      sig { returns(T.nilable(String)) }
      attr_reader :command_id

      sig { params(command_id: String).void }
      attr_writer :command_id

      # Optional configuration parameters to dial new participant into a conference.
      sig { returns(T.nilable(Telnyx::CallDialParams::ConferenceConfig)) }
      attr_reader :conference_config

      sig do
        params(
          conference_config: Telnyx::CallDialParams::ConferenceConfig::OrHash
        ).void
      end
      attr_writer :conference_config

      # Custom headers to be added to the SIP INVITE.
      sig { returns(T.nilable(T::Array[Telnyx::CustomSipHeader])) }
      attr_reader :custom_headers

      sig do
        params(custom_headers: T::Array[Telnyx::CustomSipHeader::OrHash]).void
      end
      attr_writer :custom_headers

      sig { returns(T.nilable(Telnyx::DialogflowConfig)) }
      attr_reader :dialogflow_config

      sig { params(dialogflow_config: Telnyx::DialogflowConfig::OrHash).void }
      attr_writer :dialogflow_config

      # Enables Dialogflow for the current call. The default value is false.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :enable_dialogflow

      sig { params(enable_dialogflow: T::Boolean).void }
      attr_writer :enable_dialogflow

      # The `from_display_name` string to be used as the caller id name (SIP From
      # Display Name) presented to the destination (`to` number). The string should have
      # a maximum of 128 characters, containing only letters, numbers, spaces, and
      # -\_~!.+ special characters. If ommited, the display name will be the same as the
      # number in the `from` field.
      sig { returns(T.nilable(String)) }
      attr_reader :from_display_name

      sig { params(from_display_name: String).void }
      attr_writer :from_display_name

      # Use another call's control id for sharing the same call session id
      sig { returns(T.nilable(String)) }
      attr_reader :link_to

      sig { params(link_to: String).void }
      attr_writer :link_to

      # Defines whether media should be encrypted on the call.
      sig do
        returns(T.nilable(Telnyx::CallDialParams::MediaEncryption::OrSymbol))
      end
      attr_reader :media_encryption

      sig do
        params(
          media_encryption: Telnyx::CallDialParams::MediaEncryption::OrSymbol
        ).void
      end
      attr_writer :media_encryption

      # The media_name of a file to be played back to the callee when the call is
      # answered. The media_name must point to a file previously uploaded to
      # api.telnyx.com/v2/media by the same user/organization. The file must either be a
      # WAV or MP3 file.
      sig { returns(T.nilable(String)) }
      attr_reader :media_name

      sig { params(media_name: String).void }
      attr_writer :media_name

      # If supplied with the value `self`, the current leg will be parked after
      # unbridge. If not set, the default behavior is to hang up the leg. When
      # park_after_unbridge is set, link_to becomes required.
      sig { returns(T.nilable(String)) }
      attr_reader :park_after_unbridge

      sig { params(park_after_unbridge: String).void }
      attr_writer :park_after_unbridge

      # The list of comma-separated codecs in a preferred order for the forked media to
      # be received.
      sig { returns(T.nilable(String)) }
      attr_reader :preferred_codecs

      sig { params(preferred_codecs: String).void }
      attr_writer :preferred_codecs

      # Start recording automatically after an event. Disabled by default.
      sig { returns(T.nilable(Telnyx::CallDialParams::Record::OrSymbol)) }
      attr_reader :record

      sig { params(record: Telnyx::CallDialParams::Record::OrSymbol).void }
      attr_writer :record

      # Defines which channel should be recorded ('single' or 'dual') when `record` is
      # specified.
      sig do
        returns(T.nilable(Telnyx::CallDialParams::RecordChannels::OrSymbol))
      end
      attr_reader :record_channels

      sig do
        params(
          record_channels: Telnyx::CallDialParams::RecordChannels::OrSymbol
        ).void
      end
      attr_writer :record_channels

      # The custom recording file name to be used instead of the default `call_leg_id`.
      # Telnyx will still add a Unix timestamp suffix.
      sig { returns(T.nilable(String)) }
      attr_reader :record_custom_file_name

      sig { params(record_custom_file_name: String).void }
      attr_writer :record_custom_file_name

      # Defines the format of the recording ('wav' or 'mp3') when `record` is specified.
      sig { returns(T.nilable(Telnyx::CallDialParams::RecordFormat::OrSymbol)) }
      attr_reader :record_format

      sig do
        params(
          record_format: Telnyx::CallDialParams::RecordFormat::OrSymbol
        ).void
      end
      attr_writer :record_format

      # Defines the maximum length for the recording in seconds when `record` is
      # specified. The minimum value is 0. The maximum value is 43200. The default value
      # is 0 (infinite).
      sig { returns(T.nilable(Integer)) }
      attr_reader :record_max_length

      sig { params(record_max_length: Integer).void }
      attr_writer :record_max_length

      # The number of seconds that Telnyx will wait for the recording to be stopped if
      # silence is detected when `record` is specified. The timer only starts when the
      # speech is detected. Please note that call transcription is used to detect
      # silence and the related charge will be applied. The minimum value is 0. The
      # default value is 0 (infinite).
      sig { returns(T.nilable(Integer)) }
      attr_reader :record_timeout_secs

      sig { params(record_timeout_secs: Integer).void }
      attr_writer :record_timeout_secs

      # The audio track to be recorded. Can be either `both`, `inbound` or `outbound`.
      # If only single track is specified (`inbound`, `outbound`), `channels`
      # configuration is ignored and it will be recorded as mono (single channel).
      sig { returns(T.nilable(Telnyx::CallDialParams::RecordTrack::OrSymbol)) }
      attr_reader :record_track

      sig do
        params(record_track: Telnyx::CallDialParams::RecordTrack::OrSymbol).void
      end
      attr_writer :record_track

      # When set to `trim-silence`, silence will be removed from the beginning and end
      # of the recording.
      sig { returns(T.nilable(Telnyx::CallDialParams::RecordTrim::OrSymbol)) }
      attr_reader :record_trim

      sig do
        params(record_trim: Telnyx::CallDialParams::RecordTrim::OrSymbol).void
      end
      attr_writer :record_trim

      # Generate silence RTP packets when no transmission available.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :send_silence_when_idle

      sig { params(send_silence_when_idle: T::Boolean).void }
      attr_writer :send_silence_when_idle

      # SIP Authentication password used for SIP challenges.
      sig { returns(T.nilable(String)) }
      attr_reader :sip_auth_password

      sig { params(sip_auth_password: String).void }
      attr_writer :sip_auth_password

      # SIP Authentication username used for SIP challenges.
      sig { returns(T.nilable(String)) }
      attr_reader :sip_auth_username

      sig { params(sip_auth_username: String).void }
      attr_writer :sip_auth_username

      # SIP headers to be added to the SIP INVITE request. Currently only User-to-User
      # header is supported.
      sig { returns(T.nilable(T::Array[Telnyx::SipHeader])) }
      attr_reader :sip_headers

      sig { params(sip_headers: T::Array[Telnyx::SipHeader::OrHash]).void }
      attr_writer :sip_headers

      # Defines the SIP region to be used for the call.
      sig { returns(T.nilable(Telnyx::CallDialParams::SipRegion::OrSymbol)) }
      attr_reader :sip_region

      sig do
        params(sip_region: Telnyx::CallDialParams::SipRegion::OrSymbol).void
      end
      attr_writer :sip_region

      # Defines SIP transport protocol to be used on the call.
      sig do
        returns(
          T.nilable(Telnyx::CallDialParams::SipTransportProtocol::OrSymbol)
        )
      end
      attr_reader :sip_transport_protocol

      sig do
        params(
          sip_transport_protocol:
            Telnyx::CallDialParams::SipTransportProtocol::OrSymbol
        ).void
      end
      attr_writer :sip_transport_protocol

      # Use this field to modify sound effects, for example adjust the pitch.
      sig { returns(T.nilable(Telnyx::SoundModifications)) }
      attr_reader :sound_modifications

      sig do
        params(sound_modifications: Telnyx::SoundModifications::OrHash).void
      end
      attr_writer :sound_modifications

      # An authentication token to be sent as part of the WebSocket connection when
      # using streaming. Maximum length is 4000 characters.
      sig { returns(T.nilable(String)) }
      attr_reader :stream_auth_token

      sig { params(stream_auth_token: String).void }
      attr_writer :stream_auth_token

      # Indicates codec for bidirectional streaming RTP payloads. Used only with
      # stream_bidirectional_mode=rtp. Case sensitive.
      sig { returns(T.nilable(Telnyx::StreamBidirectionalCodec::OrSymbol)) }
      attr_reader :stream_bidirectional_codec

      sig do
        params(
          stream_bidirectional_codec: Telnyx::StreamBidirectionalCodec::OrSymbol
        ).void
      end
      attr_writer :stream_bidirectional_codec

      # Configures method of bidirectional streaming (mp3, rtp).
      sig { returns(T.nilable(Telnyx::StreamBidirectionalMode::OrSymbol)) }
      attr_reader :stream_bidirectional_mode

      sig do
        params(
          stream_bidirectional_mode: Telnyx::StreamBidirectionalMode::OrSymbol
        ).void
      end
      attr_writer :stream_bidirectional_mode

      # Audio sampling rate.
      sig do
        returns(T.nilable(Telnyx::StreamBidirectionalSamplingRate::OrInteger))
      end
      attr_reader :stream_bidirectional_sampling_rate

      sig do
        params(
          stream_bidirectional_sampling_rate:
            Telnyx::StreamBidirectionalSamplingRate::OrInteger
        ).void
      end
      attr_writer :stream_bidirectional_sampling_rate

      # Specifies which call legs should receive the bidirectional stream audio.
      sig do
        returns(T.nilable(Telnyx::StreamBidirectionalTargetLegs::OrSymbol))
      end
      attr_reader :stream_bidirectional_target_legs

      sig do
        params(
          stream_bidirectional_target_legs:
            Telnyx::StreamBidirectionalTargetLegs::OrSymbol
        ).void
      end
      attr_writer :stream_bidirectional_target_legs

      # Specifies the codec to be used for the streamed audio. When set to 'default' or
      # when transcoding is not possible, the codec from the call will be used.
      sig { returns(T.nilable(Telnyx::StreamCodec::OrSymbol)) }
      attr_reader :stream_codec

      sig { params(stream_codec: Telnyx::StreamCodec::OrSymbol).void }
      attr_writer :stream_codec

      # Establish websocket connection before dialing the destination. This is useful
      # for cases where the websocket connection takes a long time to establish.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :stream_establish_before_call_originate

      sig { params(stream_establish_before_call_originate: T::Boolean).void }
      attr_writer :stream_establish_before_call_originate

      # Specifies which track should be streamed.
      sig { returns(T.nilable(Telnyx::CallDialParams::StreamTrack::OrSymbol)) }
      attr_reader :stream_track

      sig do
        params(stream_track: Telnyx::CallDialParams::StreamTrack::OrSymbol).void
      end
      attr_writer :stream_track

      # The destination WebSocket address where the stream is going to be delivered.
      sig { returns(T.nilable(String)) }
      attr_reader :stream_url

      sig { params(stream_url: String).void }
      attr_writer :stream_url

      # The call leg which will be supervised by the new call.
      sig { returns(T.nilable(String)) }
      attr_reader :supervise_call_control_id

      sig { params(supervise_call_control_id: String).void }
      attr_writer :supervise_call_control_id

      # The role of the supervisor call. 'barge' means that supervisor call hears and is
      # being heard by both ends of the call (caller & callee). 'whisper' means that
      # only supervised_call_control_id hears supervisor but supervisor can hear
      # everything. 'monitor' means that nobody can hear supervisor call, but supervisor
      # can hear everything on the call.
      sig do
        returns(T.nilable(Telnyx::CallDialParams::SupervisorRole::OrSymbol))
      end
      attr_reader :supervisor_role

      sig do
        params(
          supervisor_role: Telnyx::CallDialParams::SupervisorRole::OrSymbol
        ).void
      end
      attr_writer :supervisor_role

      # Sets the maximum duration of a Call Control Leg in seconds. If the time limit is
      # reached, the call will hangup and a `call.hangup` webhook with a `hangup_cause`
      # of `time_limit` will be sent. For example, by setting a time limit of 120
      # seconds, a Call Leg will be automatically terminated two minutes after being
      # answered. The default time limit is 14400 seconds or 4 hours and this is also
      # the maximum allowed call length.
      sig { returns(T.nilable(Integer)) }
      attr_reader :time_limit_secs

      sig { params(time_limit_secs: Integer).void }
      attr_writer :time_limit_secs

      # The number of seconds that Telnyx will wait for the call to be answered by the
      # destination to which it is being called. If the timeout is reached before an
      # answer is received, the call will hangup and a `call.hangup` webhook with a
      # `hangup_cause` of `timeout` will be sent. Minimum value is 5 seconds. Maximum
      # value is 600 seconds.
      sig { returns(T.nilable(Integer)) }
      attr_reader :timeout_secs

      sig { params(timeout_secs: Integer).void }
      attr_writer :timeout_secs

      # Enable transcription upon call answer. The default value is false.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :transcription

      sig { params(transcription: T::Boolean).void }
      attr_writer :transcription

      sig { returns(T.nilable(Telnyx::Calls::TranscriptionStartRequest)) }
      attr_reader :transcription_config

      sig do
        params(
          transcription_config: Telnyx::Calls::TranscriptionStartRequest::OrHash
        ).void
      end
      attr_writer :transcription_config

      # Use this field to override the URL for which Telnyx will send subsequent
      # webhooks to for this call.
      sig { returns(T.nilable(String)) }
      attr_reader :webhook_url

      sig { params(webhook_url: String).void }
      attr_writer :webhook_url

      # HTTP request type used for `webhook_url`.
      sig do
        returns(T.nilable(Telnyx::CallDialParams::WebhookURLMethod::OrSymbol))
      end
      attr_reader :webhook_url_method

      sig do
        params(
          webhook_url_method: Telnyx::CallDialParams::WebhookURLMethod::OrSymbol
        ).void
      end
      attr_writer :webhook_url_method

      sig do
        params(
          connection_id: String,
          from: String,
          to: Telnyx::CallDialParams::To::Variants,
          answering_machine_detection:
            Telnyx::CallDialParams::AnsweringMachineDetection::OrSymbol,
          answering_machine_detection_config:
            Telnyx::CallDialParams::AnsweringMachineDetectionConfig::OrHash,
          audio_url: String,
          billing_group_id: String,
          bridge_intent: T::Boolean,
          bridge_on_answer: T::Boolean,
          client_state: String,
          command_id: String,
          conference_config: Telnyx::CallDialParams::ConferenceConfig::OrHash,
          custom_headers: T::Array[Telnyx::CustomSipHeader::OrHash],
          dialogflow_config: Telnyx::DialogflowConfig::OrHash,
          enable_dialogflow: T::Boolean,
          from_display_name: String,
          link_to: String,
          media_encryption: Telnyx::CallDialParams::MediaEncryption::OrSymbol,
          media_name: String,
          park_after_unbridge: String,
          preferred_codecs: String,
          record: Telnyx::CallDialParams::Record::OrSymbol,
          record_channels: Telnyx::CallDialParams::RecordChannels::OrSymbol,
          record_custom_file_name: String,
          record_format: Telnyx::CallDialParams::RecordFormat::OrSymbol,
          record_max_length: Integer,
          record_timeout_secs: Integer,
          record_track: Telnyx::CallDialParams::RecordTrack::OrSymbol,
          record_trim: Telnyx::CallDialParams::RecordTrim::OrSymbol,
          send_silence_when_idle: T::Boolean,
          sip_auth_password: String,
          sip_auth_username: String,
          sip_headers: T::Array[Telnyx::SipHeader::OrHash],
          sip_region: Telnyx::CallDialParams::SipRegion::OrSymbol,
          sip_transport_protocol:
            Telnyx::CallDialParams::SipTransportProtocol::OrSymbol,
          sound_modifications: Telnyx::SoundModifications::OrHash,
          stream_auth_token: String,
          stream_bidirectional_codec:
            Telnyx::StreamBidirectionalCodec::OrSymbol,
          stream_bidirectional_mode: Telnyx::StreamBidirectionalMode::OrSymbol,
          stream_bidirectional_sampling_rate:
            Telnyx::StreamBidirectionalSamplingRate::OrInteger,
          stream_bidirectional_target_legs:
            Telnyx::StreamBidirectionalTargetLegs::OrSymbol,
          stream_codec: Telnyx::StreamCodec::OrSymbol,
          stream_establish_before_call_originate: T::Boolean,
          stream_track: Telnyx::CallDialParams::StreamTrack::OrSymbol,
          stream_url: String,
          supervise_call_control_id: String,
          supervisor_role: Telnyx::CallDialParams::SupervisorRole::OrSymbol,
          time_limit_secs: Integer,
          timeout_secs: Integer,
          transcription: T::Boolean,
          transcription_config:
            Telnyx::Calls::TranscriptionStartRequest::OrHash,
          webhook_url: String,
          webhook_url_method:
            Telnyx::CallDialParams::WebhookURLMethod::OrSymbol,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The ID of the Call Control App (formerly ID of the connection) to be used when
        # dialing the destination.
        connection_id:,
        # The `from` number to be used as the caller id presented to the destination (`to`
        # number). The number should be in +E164 format.
        from:,
        # The DID or SIP URI to dial out to. Multiple DID or SIP URIs can be provided
        # using an array of strings
        to:,
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
        answering_machine_detection: nil,
        # Optional configuration parameters to modify 'answering_machine_detection'
        # performance.
        answering_machine_detection_config: nil,
        # The URL of a file to be played back to the callee when the call is answered. The
        # URL can point to either a WAV or MP3 file. media_name and audio_url cannot be
        # used together in one request.
        audio_url: nil,
        # Use this field to set the Billing Group ID for the call. Must be a valid and
        # existing Billing Group ID.
        billing_group_id: nil,
        # Indicates the intent to bridge this call with the call specified in link_to.
        # When bridge_intent is true, link_to becomes required and the from number will be
        # overwritten by the from number from the linked call.
        bridge_intent: nil,
        # Whether to automatically bridge answered call to the call specified in link_to.
        # When bridge_on_answer is true, link_to becomes required.
        bridge_on_answer: nil,
        # Use this field to add state to every subsequent webhook. It must be a valid
        # Base-64 encoded string.
        client_state: nil,
        # Use this field to avoid duplicate commands. Telnyx will ignore others Dial
        # commands with the same `command_id`.
        command_id: nil,
        # Optional configuration parameters to dial new participant into a conference.
        conference_config: nil,
        # Custom headers to be added to the SIP INVITE.
        custom_headers: nil,
        dialogflow_config: nil,
        # Enables Dialogflow for the current call. The default value is false.
        enable_dialogflow: nil,
        # The `from_display_name` string to be used as the caller id name (SIP From
        # Display Name) presented to the destination (`to` number). The string should have
        # a maximum of 128 characters, containing only letters, numbers, spaces, and
        # -\_~!.+ special characters. If ommited, the display name will be the same as the
        # number in the `from` field.
        from_display_name: nil,
        # Use another call's control id for sharing the same call session id
        link_to: nil,
        # Defines whether media should be encrypted on the call.
        media_encryption: nil,
        # The media_name of a file to be played back to the callee when the call is
        # answered. The media_name must point to a file previously uploaded to
        # api.telnyx.com/v2/media by the same user/organization. The file must either be a
        # WAV or MP3 file.
        media_name: nil,
        # If supplied with the value `self`, the current leg will be parked after
        # unbridge. If not set, the default behavior is to hang up the leg. When
        # park_after_unbridge is set, link_to becomes required.
        park_after_unbridge: nil,
        # The list of comma-separated codecs in a preferred order for the forked media to
        # be received.
        preferred_codecs: nil,
        # Start recording automatically after an event. Disabled by default.
        record: nil,
        # Defines which channel should be recorded ('single' or 'dual') when `record` is
        # specified.
        record_channels: nil,
        # The custom recording file name to be used instead of the default `call_leg_id`.
        # Telnyx will still add a Unix timestamp suffix.
        record_custom_file_name: nil,
        # Defines the format of the recording ('wav' or 'mp3') when `record` is specified.
        record_format: nil,
        # Defines the maximum length for the recording in seconds when `record` is
        # specified. The minimum value is 0. The maximum value is 43200. The default value
        # is 0 (infinite).
        record_max_length: nil,
        # The number of seconds that Telnyx will wait for the recording to be stopped if
        # silence is detected when `record` is specified. The timer only starts when the
        # speech is detected. Please note that call transcription is used to detect
        # silence and the related charge will be applied. The minimum value is 0. The
        # default value is 0 (infinite).
        record_timeout_secs: nil,
        # The audio track to be recorded. Can be either `both`, `inbound` or `outbound`.
        # If only single track is specified (`inbound`, `outbound`), `channels`
        # configuration is ignored and it will be recorded as mono (single channel).
        record_track: nil,
        # When set to `trim-silence`, silence will be removed from the beginning and end
        # of the recording.
        record_trim: nil,
        # Generate silence RTP packets when no transmission available.
        send_silence_when_idle: nil,
        # SIP Authentication password used for SIP challenges.
        sip_auth_password: nil,
        # SIP Authentication username used for SIP challenges.
        sip_auth_username: nil,
        # SIP headers to be added to the SIP INVITE request. Currently only User-to-User
        # header is supported.
        sip_headers: nil,
        # Defines the SIP region to be used for the call.
        sip_region: nil,
        # Defines SIP transport protocol to be used on the call.
        sip_transport_protocol: nil,
        # Use this field to modify sound effects, for example adjust the pitch.
        sound_modifications: nil,
        # An authentication token to be sent as part of the WebSocket connection when
        # using streaming. Maximum length is 4000 characters.
        stream_auth_token: nil,
        # Indicates codec for bidirectional streaming RTP payloads. Used only with
        # stream_bidirectional_mode=rtp. Case sensitive.
        stream_bidirectional_codec: nil,
        # Configures method of bidirectional streaming (mp3, rtp).
        stream_bidirectional_mode: nil,
        # Audio sampling rate.
        stream_bidirectional_sampling_rate: nil,
        # Specifies which call legs should receive the bidirectional stream audio.
        stream_bidirectional_target_legs: nil,
        # Specifies the codec to be used for the streamed audio. When set to 'default' or
        # when transcoding is not possible, the codec from the call will be used.
        stream_codec: nil,
        # Establish websocket connection before dialing the destination. This is useful
        # for cases where the websocket connection takes a long time to establish.
        stream_establish_before_call_originate: nil,
        # Specifies which track should be streamed.
        stream_track: nil,
        # The destination WebSocket address where the stream is going to be delivered.
        stream_url: nil,
        # The call leg which will be supervised by the new call.
        supervise_call_control_id: nil,
        # The role of the supervisor call. 'barge' means that supervisor call hears and is
        # being heard by both ends of the call (caller & callee). 'whisper' means that
        # only supervised_call_control_id hears supervisor but supervisor can hear
        # everything. 'monitor' means that nobody can hear supervisor call, but supervisor
        # can hear everything on the call.
        supervisor_role: nil,
        # Sets the maximum duration of a Call Control Leg in seconds. If the time limit is
        # reached, the call will hangup and a `call.hangup` webhook with a `hangup_cause`
        # of `time_limit` will be sent. For example, by setting a time limit of 120
        # seconds, a Call Leg will be automatically terminated two minutes after being
        # answered. The default time limit is 14400 seconds or 4 hours and this is also
        # the maximum allowed call length.
        time_limit_secs: nil,
        # The number of seconds that Telnyx will wait for the call to be answered by the
        # destination to which it is being called. If the timeout is reached before an
        # answer is received, the call will hangup and a `call.hangup` webhook with a
        # `hangup_cause` of `timeout` will be sent. Minimum value is 5 seconds. Maximum
        # value is 600 seconds.
        timeout_secs: nil,
        # Enable transcription upon call answer. The default value is false.
        transcription: nil,
        transcription_config: nil,
        # Use this field to override the URL for which Telnyx will send subsequent
        # webhooks to for this call.
        webhook_url: nil,
        # HTTP request type used for `webhook_url`.
        webhook_url_method: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            connection_id: String,
            from: String,
            to: Telnyx::CallDialParams::To::Variants,
            answering_machine_detection:
              Telnyx::CallDialParams::AnsweringMachineDetection::OrSymbol,
            answering_machine_detection_config:
              Telnyx::CallDialParams::AnsweringMachineDetectionConfig,
            audio_url: String,
            billing_group_id: String,
            bridge_intent: T::Boolean,
            bridge_on_answer: T::Boolean,
            client_state: String,
            command_id: String,
            conference_config: Telnyx::CallDialParams::ConferenceConfig,
            custom_headers: T::Array[Telnyx::CustomSipHeader],
            dialogflow_config: Telnyx::DialogflowConfig,
            enable_dialogflow: T::Boolean,
            from_display_name: String,
            link_to: String,
            media_encryption: Telnyx::CallDialParams::MediaEncryption::OrSymbol,
            media_name: String,
            park_after_unbridge: String,
            preferred_codecs: String,
            record: Telnyx::CallDialParams::Record::OrSymbol,
            record_channels: Telnyx::CallDialParams::RecordChannels::OrSymbol,
            record_custom_file_name: String,
            record_format: Telnyx::CallDialParams::RecordFormat::OrSymbol,
            record_max_length: Integer,
            record_timeout_secs: Integer,
            record_track: Telnyx::CallDialParams::RecordTrack::OrSymbol,
            record_trim: Telnyx::CallDialParams::RecordTrim::OrSymbol,
            send_silence_when_idle: T::Boolean,
            sip_auth_password: String,
            sip_auth_username: String,
            sip_headers: T::Array[Telnyx::SipHeader],
            sip_region: Telnyx::CallDialParams::SipRegion::OrSymbol,
            sip_transport_protocol:
              Telnyx::CallDialParams::SipTransportProtocol::OrSymbol,
            sound_modifications: Telnyx::SoundModifications,
            stream_auth_token: String,
            stream_bidirectional_codec:
              Telnyx::StreamBidirectionalCodec::OrSymbol,
            stream_bidirectional_mode:
              Telnyx::StreamBidirectionalMode::OrSymbol,
            stream_bidirectional_sampling_rate:
              Telnyx::StreamBidirectionalSamplingRate::OrInteger,
            stream_bidirectional_target_legs:
              Telnyx::StreamBidirectionalTargetLegs::OrSymbol,
            stream_codec: Telnyx::StreamCodec::OrSymbol,
            stream_establish_before_call_originate: T::Boolean,
            stream_track: Telnyx::CallDialParams::StreamTrack::OrSymbol,
            stream_url: String,
            supervise_call_control_id: String,
            supervisor_role: Telnyx::CallDialParams::SupervisorRole::OrSymbol,
            time_limit_secs: Integer,
            timeout_secs: Integer,
            transcription: T::Boolean,
            transcription_config: Telnyx::Calls::TranscriptionStartRequest,
            webhook_url: String,
            webhook_url_method:
              Telnyx::CallDialParams::WebhookURLMethod::OrSymbol,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end

      # The DID or SIP URI to dial out to. Multiple DID or SIP URIs can be provided
      # using an array of strings
      module To
        extend Telnyx::Internal::Type::Union

        Variants = T.type_alias { T.any(String, T::Array[String]) }

        sig { override.returns(T::Array[Telnyx::CallDialParams::To::Variants]) }
        def self.variants
        end

        StringArray =
          T.let(
            Telnyx::Internal::Type::ArrayOf[String],
            Telnyx::Internal::Type::Converter
          )
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

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Telnyx::CallDialParams::AnsweringMachineDetection)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PREMIUM =
          T.let(
            :premium,
            Telnyx::CallDialParams::AnsweringMachineDetection::TaggedSymbol
          )
        DETECT =
          T.let(
            :detect,
            Telnyx::CallDialParams::AnsweringMachineDetection::TaggedSymbol
          )
        DETECT_BEEP =
          T.let(
            :detect_beep,
            Telnyx::CallDialParams::AnsweringMachineDetection::TaggedSymbol
          )
        DETECT_WORDS =
          T.let(
            :detect_words,
            Telnyx::CallDialParams::AnsweringMachineDetection::TaggedSymbol
          )
        GREETING_END =
          T.let(
            :greeting_end,
            Telnyx::CallDialParams::AnsweringMachineDetection::TaggedSymbol
          )
        DISABLED =
          T.let(
            :disabled,
            Telnyx::CallDialParams::AnsweringMachineDetection::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::CallDialParams::AnsweringMachineDetection::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      class AnsweringMachineDetectionConfig < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::CallDialParams::AnsweringMachineDetectionConfig,
              Telnyx::Internal::AnyHash
            )
          end

        # Silence duration threshold after a greeting message or voice for it be
        # considered human.
        sig { returns(T.nilable(Integer)) }
        attr_reader :after_greeting_silence_millis

        sig { params(after_greeting_silence_millis: Integer).void }
        attr_writer :after_greeting_silence_millis

        # Maximum threshold for silence between words.
        sig { returns(T.nilable(Integer)) }
        attr_reader :between_words_silence_millis

        sig { params(between_words_silence_millis: Integer).void }
        attr_writer :between_words_silence_millis

        # Maximum threshold of a human greeting. If greeting longer than this value,
        # considered machine.
        sig { returns(T.nilable(Integer)) }
        attr_reader :greeting_duration_millis

        sig { params(greeting_duration_millis: Integer).void }
        attr_writer :greeting_duration_millis

        # If machine already detected, maximum threshold for silence between words. If
        # exceeded, the greeting is considered ended.
        sig { returns(T.nilable(Integer)) }
        attr_reader :greeting_silence_duration_millis

        sig { params(greeting_silence_duration_millis: Integer).void }
        attr_writer :greeting_silence_duration_millis

        # If machine already detected, maximum timeout threshold to determine the end of
        # the machine greeting.
        sig { returns(T.nilable(Integer)) }
        attr_reader :greeting_total_analysis_time_millis

        sig { params(greeting_total_analysis_time_millis: Integer).void }
        attr_writer :greeting_total_analysis_time_millis

        # If initial silence duration is greater than this value, consider it a machine.
        sig { returns(T.nilable(Integer)) }
        attr_reader :initial_silence_millis

        sig { params(initial_silence_millis: Integer).void }
        attr_writer :initial_silence_millis

        # If number of detected words is greater than this value, consder it a machine.
        sig { returns(T.nilable(Integer)) }
        attr_reader :maximum_number_of_words

        sig { params(maximum_number_of_words: Integer).void }
        attr_writer :maximum_number_of_words

        # If a single word lasts longer than this threshold, consider it a machine.
        sig { returns(T.nilable(Integer)) }
        attr_reader :maximum_word_length_millis

        sig { params(maximum_word_length_millis: Integer).void }
        attr_writer :maximum_word_length_millis

        # Minimum noise threshold for any analysis.
        sig { returns(T.nilable(Integer)) }
        attr_reader :silence_threshold

        sig { params(silence_threshold: Integer).void }
        attr_writer :silence_threshold

        # Maximum timeout threshold for overall detection.
        sig { returns(T.nilable(Integer)) }
        attr_reader :total_analysis_time_millis

        sig { params(total_analysis_time_millis: Integer).void }
        attr_writer :total_analysis_time_millis

        # Optional configuration parameters to modify 'answering_machine_detection'
        # performance.
        sig do
          params(
            after_greeting_silence_millis: Integer,
            between_words_silence_millis: Integer,
            greeting_duration_millis: Integer,
            greeting_silence_duration_millis: Integer,
            greeting_total_analysis_time_millis: Integer,
            initial_silence_millis: Integer,
            maximum_number_of_words: Integer,
            maximum_word_length_millis: Integer,
            silence_threshold: Integer,
            total_analysis_time_millis: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          # Silence duration threshold after a greeting message or voice for it be
          # considered human.
          after_greeting_silence_millis: nil,
          # Maximum threshold for silence between words.
          between_words_silence_millis: nil,
          # Maximum threshold of a human greeting. If greeting longer than this value,
          # considered machine.
          greeting_duration_millis: nil,
          # If machine already detected, maximum threshold for silence between words. If
          # exceeded, the greeting is considered ended.
          greeting_silence_duration_millis: nil,
          # If machine already detected, maximum timeout threshold to determine the end of
          # the machine greeting.
          greeting_total_analysis_time_millis: nil,
          # If initial silence duration is greater than this value, consider it a machine.
          initial_silence_millis: nil,
          # If number of detected words is greater than this value, consder it a machine.
          maximum_number_of_words: nil,
          # If a single word lasts longer than this threshold, consider it a machine.
          maximum_word_length_millis: nil,
          # Minimum noise threshold for any analysis.
          silence_threshold: nil,
          # Maximum timeout threshold for overall detection.
          total_analysis_time_millis: nil
        )
        end

        sig do
          override.returns(
            {
              after_greeting_silence_millis: Integer,
              between_words_silence_millis: Integer,
              greeting_duration_millis: Integer,
              greeting_silence_duration_millis: Integer,
              greeting_total_analysis_time_millis: Integer,
              initial_silence_millis: Integer,
              maximum_number_of_words: Integer,
              maximum_word_length_millis: Integer,
              silence_threshold: Integer,
              total_analysis_time_millis: Integer
            }
          )
        end
        def to_hash
        end
      end

      class ConferenceConfig < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::CallDialParams::ConferenceConfig,
              Telnyx::Internal::AnyHash
            )
          end

        # Conference ID to be joined
        sig { returns(T.nilable(String)) }
        attr_reader :id

        sig { params(id: String).void }
        attr_writer :id

        # Whether a beep sound should be played when the participant joins and/or leaves
        # the conference. Can be used to override the conference-level setting.
        sig do
          returns(
            T.nilable(
              Telnyx::CallDialParams::ConferenceConfig::BeepEnabled::OrSymbol
            )
          )
        end
        attr_reader :beep_enabled

        sig do
          params(
            beep_enabled:
              Telnyx::CallDialParams::ConferenceConfig::BeepEnabled::OrSymbol
          ).void
        end
        attr_writer :beep_enabled

        # Conference name to be joined
        sig { returns(T.nilable(String)) }
        attr_reader :conference_name

        sig { params(conference_name: String).void }
        attr_writer :conference_name

        # Controls the moment when dialled call is joined into conference. If set to
        # `true` user will be joined as soon as media is available (ringback). If `false`
        # user will be joined when call is answered. Defaults to `true`
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :early_media

        sig { params(early_media: T::Boolean).void }
        attr_writer :early_media

        # Whether the conference should end and all remaining participants be hung up
        # after the participant leaves the conference. Defaults to "false".
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :end_conference_on_exit

        sig { params(end_conference_on_exit: T::Boolean).void }
        attr_writer :end_conference_on_exit

        # Whether the participant should be put on hold immediately after joining the
        # conference. Defaults to "false".
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :hold

        sig { params(hold: T::Boolean).void }
        attr_writer :hold

        # The URL of a file to be played to the participant when they are put on hold
        # after joining the conference. hold_media_name and hold_audio_url cannot be used
        # together in one request. Takes effect only when "start_conference_on_create" is
        # set to "false". This property takes effect only if "hold" is set to "true".
        sig { returns(T.nilable(String)) }
        attr_reader :hold_audio_url

        sig { params(hold_audio_url: String).void }
        attr_writer :hold_audio_url

        # The media_name of a file to be played to the participant when they are put on
        # hold after joining the conference. The media_name must point to a file
        # previously uploaded to api.telnyx.com/v2/media by the same user/organization.
        # The file must either be a WAV or MP3 file. Takes effect only when
        # "start_conference_on_create" is set to "false". This property takes effect only
        # if "hold" is set to "true".
        sig { returns(T.nilable(String)) }
        attr_reader :hold_media_name

        sig { params(hold_media_name: String).void }
        attr_writer :hold_media_name

        # Whether the participant should be muted immediately after joining the
        # conference. Defaults to "false".
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :mute

        sig { params(mute: T::Boolean).void }
        attr_writer :mute

        # Whether the conference should end after the participant leaves the conference.
        # NOTE this doesn't hang up the other participants. Defaults to "false".
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :soft_end_conference_on_exit

        sig { params(soft_end_conference_on_exit: T::Boolean).void }
        attr_writer :soft_end_conference_on_exit

        # Whether the conference should be started on creation. If the conference isn't
        # started all participants that join are automatically put on hold. Defaults to
        # "true".
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :start_conference_on_create

        sig { params(start_conference_on_create: T::Boolean).void }
        attr_writer :start_conference_on_create

        # Whether the conference should be started after the participant joins the
        # conference. Defaults to "false".
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :start_conference_on_enter

        sig { params(start_conference_on_enter: T::Boolean).void }
        attr_writer :start_conference_on_enter

        # Sets the joining participant as a supervisor for the conference. A conference
        # can have multiple supervisors. "barge" means the supervisor enters the
        # conference as a normal participant. This is the same as "none". "monitor" means
        # the supervisor is muted but can hear all participants. "whisper" means that only
        # the specified "whisper_call_control_ids" can hear the supervisor. Defaults to
        # "none".
        sig do
          returns(
            T.nilable(
              Telnyx::CallDialParams::ConferenceConfig::SupervisorRole::OrSymbol
            )
          )
        end
        attr_reader :supervisor_role

        sig do
          params(
            supervisor_role:
              Telnyx::CallDialParams::ConferenceConfig::SupervisorRole::OrSymbol
          ).void
        end
        attr_writer :supervisor_role

        # Array of unique call_control_ids the joining supervisor can whisper to. If none
        # provided, the supervisor will join the conference as a monitoring participant
        # only.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :whisper_call_control_ids

        sig { params(whisper_call_control_ids: T::Array[String]).void }
        attr_writer :whisper_call_control_ids

        # Optional configuration parameters to dial new participant into a conference.
        sig do
          params(
            id: String,
            beep_enabled:
              Telnyx::CallDialParams::ConferenceConfig::BeepEnabled::OrSymbol,
            conference_name: String,
            early_media: T::Boolean,
            end_conference_on_exit: T::Boolean,
            hold: T::Boolean,
            hold_audio_url: String,
            hold_media_name: String,
            mute: T::Boolean,
            soft_end_conference_on_exit: T::Boolean,
            start_conference_on_create: T::Boolean,
            start_conference_on_enter: T::Boolean,
            supervisor_role:
              Telnyx::CallDialParams::ConferenceConfig::SupervisorRole::OrSymbol,
            whisper_call_control_ids: T::Array[String]
          ).returns(T.attached_class)
        end
        def self.new(
          # Conference ID to be joined
          id: nil,
          # Whether a beep sound should be played when the participant joins and/or leaves
          # the conference. Can be used to override the conference-level setting.
          beep_enabled: nil,
          # Conference name to be joined
          conference_name: nil,
          # Controls the moment when dialled call is joined into conference. If set to
          # `true` user will be joined as soon as media is available (ringback). If `false`
          # user will be joined when call is answered. Defaults to `true`
          early_media: nil,
          # Whether the conference should end and all remaining participants be hung up
          # after the participant leaves the conference. Defaults to "false".
          end_conference_on_exit: nil,
          # Whether the participant should be put on hold immediately after joining the
          # conference. Defaults to "false".
          hold: nil,
          # The URL of a file to be played to the participant when they are put on hold
          # after joining the conference. hold_media_name and hold_audio_url cannot be used
          # together in one request. Takes effect only when "start_conference_on_create" is
          # set to "false". This property takes effect only if "hold" is set to "true".
          hold_audio_url: nil,
          # The media_name of a file to be played to the participant when they are put on
          # hold after joining the conference. The media_name must point to a file
          # previously uploaded to api.telnyx.com/v2/media by the same user/organization.
          # The file must either be a WAV or MP3 file. Takes effect only when
          # "start_conference_on_create" is set to "false". This property takes effect only
          # if "hold" is set to "true".
          hold_media_name: nil,
          # Whether the participant should be muted immediately after joining the
          # conference. Defaults to "false".
          mute: nil,
          # Whether the conference should end after the participant leaves the conference.
          # NOTE this doesn't hang up the other participants. Defaults to "false".
          soft_end_conference_on_exit: nil,
          # Whether the conference should be started on creation. If the conference isn't
          # started all participants that join are automatically put on hold. Defaults to
          # "true".
          start_conference_on_create: nil,
          # Whether the conference should be started after the participant joins the
          # conference. Defaults to "false".
          start_conference_on_enter: nil,
          # Sets the joining participant as a supervisor for the conference. A conference
          # can have multiple supervisors. "barge" means the supervisor enters the
          # conference as a normal participant. This is the same as "none". "monitor" means
          # the supervisor is muted but can hear all participants. "whisper" means that only
          # the specified "whisper_call_control_ids" can hear the supervisor. Defaults to
          # "none".
          supervisor_role: nil,
          # Array of unique call_control_ids the joining supervisor can whisper to. If none
          # provided, the supervisor will join the conference as a monitoring participant
          # only.
          whisper_call_control_ids: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              beep_enabled:
                Telnyx::CallDialParams::ConferenceConfig::BeepEnabled::OrSymbol,
              conference_name: String,
              early_media: T::Boolean,
              end_conference_on_exit: T::Boolean,
              hold: T::Boolean,
              hold_audio_url: String,
              hold_media_name: String,
              mute: T::Boolean,
              soft_end_conference_on_exit: T::Boolean,
              start_conference_on_create: T::Boolean,
              start_conference_on_enter: T::Boolean,
              supervisor_role:
                Telnyx::CallDialParams::ConferenceConfig::SupervisorRole::OrSymbol,
              whisper_call_control_ids: T::Array[String]
            }
          )
        end
        def to_hash
        end

        # Whether a beep sound should be played when the participant joins and/or leaves
        # the conference. Can be used to override the conference-level setting.
        module BeepEnabled
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::CallDialParams::ConferenceConfig::BeepEnabled
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ALWAYS =
            T.let(
              :always,
              Telnyx::CallDialParams::ConferenceConfig::BeepEnabled::TaggedSymbol
            )
          NEVER =
            T.let(
              :never,
              Telnyx::CallDialParams::ConferenceConfig::BeepEnabled::TaggedSymbol
            )
          ON_ENTER =
            T.let(
              :on_enter,
              Telnyx::CallDialParams::ConferenceConfig::BeepEnabled::TaggedSymbol
            )
          ON_EXIT =
            T.let(
              :on_exit,
              Telnyx::CallDialParams::ConferenceConfig::BeepEnabled::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::CallDialParams::ConferenceConfig::BeepEnabled::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Sets the joining participant as a supervisor for the conference. A conference
        # can have multiple supervisors. "barge" means the supervisor enters the
        # conference as a normal participant. This is the same as "none". "monitor" means
        # the supervisor is muted but can hear all participants. "whisper" means that only
        # the specified "whisper_call_control_ids" can hear the supervisor. Defaults to
        # "none".
        module SupervisorRole
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::CallDialParams::ConferenceConfig::SupervisorRole
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          BARGE =
            T.let(
              :barge,
              Telnyx::CallDialParams::ConferenceConfig::SupervisorRole::TaggedSymbol
            )
          MONITOR =
            T.let(
              :monitor,
              Telnyx::CallDialParams::ConferenceConfig::SupervisorRole::TaggedSymbol
            )
          NONE =
            T.let(
              :none,
              Telnyx::CallDialParams::ConferenceConfig::SupervisorRole::TaggedSymbol
            )
          WHISPER =
            T.let(
              :whisper,
              Telnyx::CallDialParams::ConferenceConfig::SupervisorRole::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::CallDialParams::ConferenceConfig::SupervisorRole::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      # Defines whether media should be encrypted on the call.
      module MediaEncryption
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Telnyx::CallDialParams::MediaEncryption)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        DISABLED =
          T.let(
            :disabled,
            Telnyx::CallDialParams::MediaEncryption::TaggedSymbol
          )
        SRTP =
          T.let(:SRTP, Telnyx::CallDialParams::MediaEncryption::TaggedSymbol)
        DTLS =
          T.let(:DTLS, Telnyx::CallDialParams::MediaEncryption::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Telnyx::CallDialParams::MediaEncryption::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # Start recording automatically after an event. Disabled by default.
      module Record
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::CallDialParams::Record) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        RECORD_FROM_ANSWER =
          T.let(
            :"record-from-answer",
            Telnyx::CallDialParams::Record::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Telnyx::CallDialParams::Record::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # Defines which channel should be recorded ('single' or 'dual') when `record` is
      # specified.
      module RecordChannels
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::CallDialParams::RecordChannels) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        SINGLE =
          T.let(:single, Telnyx::CallDialParams::RecordChannels::TaggedSymbol)
        DUAL =
          T.let(:dual, Telnyx::CallDialParams::RecordChannels::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Telnyx::CallDialParams::RecordChannels::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # Defines the format of the recording ('wav' or 'mp3') when `record` is specified.
      module RecordFormat
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::CallDialParams::RecordFormat) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        WAV = T.let(:wav, Telnyx::CallDialParams::RecordFormat::TaggedSymbol)
        MP3 = T.let(:mp3, Telnyx::CallDialParams::RecordFormat::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Telnyx::CallDialParams::RecordFormat::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # The audio track to be recorded. Can be either `both`, `inbound` or `outbound`.
      # If only single track is specified (`inbound`, `outbound`), `channels`
      # configuration is ignored and it will be recorded as mono (single channel).
      module RecordTrack
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::CallDialParams::RecordTrack) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        BOTH = T.let(:both, Telnyx::CallDialParams::RecordTrack::TaggedSymbol)
        INBOUND =
          T.let(:inbound, Telnyx::CallDialParams::RecordTrack::TaggedSymbol)
        OUTBOUND =
          T.let(:outbound, Telnyx::CallDialParams::RecordTrack::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Telnyx::CallDialParams::RecordTrack::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # When set to `trim-silence`, silence will be removed from the beginning and end
      # of the recording.
      module RecordTrim
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::CallDialParams::RecordTrim) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        TRIM_SILENCE =
          T.let(
            :"trim-silence",
            Telnyx::CallDialParams::RecordTrim::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Telnyx::CallDialParams::RecordTrim::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # Defines the SIP region to be used for the call.
      module SipRegion
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::CallDialParams::SipRegion) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        US = T.let(:US, Telnyx::CallDialParams::SipRegion::TaggedSymbol)
        EUROPE = T.let(:Europe, Telnyx::CallDialParams::SipRegion::TaggedSymbol)
        CANADA = T.let(:Canada, Telnyx::CallDialParams::SipRegion::TaggedSymbol)
        AUSTRALIA =
          T.let(:Australia, Telnyx::CallDialParams::SipRegion::TaggedSymbol)
        MIDDLE_EAST =
          T.let(:"Middle East", Telnyx::CallDialParams::SipRegion::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Telnyx::CallDialParams::SipRegion::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # Defines SIP transport protocol to be used on the call.
      module SipTransportProtocol
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Telnyx::CallDialParams::SipTransportProtocol)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        UDP =
          T.let(
            :UDP,
            Telnyx::CallDialParams::SipTransportProtocol::TaggedSymbol
          )
        TCP =
          T.let(
            :TCP,
            Telnyx::CallDialParams::SipTransportProtocol::TaggedSymbol
          )
        TLS =
          T.let(
            :TLS,
            Telnyx::CallDialParams::SipTransportProtocol::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Telnyx::CallDialParams::SipTransportProtocol::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # Specifies which track should be streamed.
      module StreamTrack
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::CallDialParams::StreamTrack) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        INBOUND_TRACK =
          T.let(
            :inbound_track,
            Telnyx::CallDialParams::StreamTrack::TaggedSymbol
          )
        OUTBOUND_TRACK =
          T.let(
            :outbound_track,
            Telnyx::CallDialParams::StreamTrack::TaggedSymbol
          )
        BOTH_TRACKS =
          T.let(:both_tracks, Telnyx::CallDialParams::StreamTrack::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Telnyx::CallDialParams::StreamTrack::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # The role of the supervisor call. 'barge' means that supervisor call hears and is
      # being heard by both ends of the call (caller & callee). 'whisper' means that
      # only supervised_call_control_id hears supervisor but supervisor can hear
      # everything. 'monitor' means that nobody can hear supervisor call, but supervisor
      # can hear everything on the call.
      module SupervisorRole
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::CallDialParams::SupervisorRole) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        BARGE =
          T.let(:barge, Telnyx::CallDialParams::SupervisorRole::TaggedSymbol)
        WHISPER =
          T.let(:whisper, Telnyx::CallDialParams::SupervisorRole::TaggedSymbol)
        MONITOR =
          T.let(:monitor, Telnyx::CallDialParams::SupervisorRole::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Telnyx::CallDialParams::SupervisorRole::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # HTTP request type used for `webhook_url`.
      module WebhookURLMethod
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Telnyx::CallDialParams::WebhookURLMethod)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        POST =
          T.let(:POST, Telnyx::CallDialParams::WebhookURLMethod::TaggedSymbol)
        GET =
          T.let(:GET, Telnyx::CallDialParams::WebhookURLMethod::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Telnyx::CallDialParams::WebhookURLMethod::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end

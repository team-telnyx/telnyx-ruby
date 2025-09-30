# typed: strong

module Telnyx
  module Resources
    class Calls
      sig { returns(Telnyx::Resources::Calls::Actions) }
      attr_reader :actions

      # Dial a number or SIP URI from a given connection. A successful response will
      # include a `call_leg_id` which can be used to correlate the command with
      # subsequent webhooks.
      #
      # **Expected Webhooks:**
      #
      # - `call.initiated`
      # - `call.answered` or `call.hangup`
      # - `call.machine.detection.ended` if `answering_machine_detection` was requested
      # - `call.machine.greeting.ended` if `answering_machine_detection` was requested
      #   to detect the end of machine greeting
      # - `call.machine.premium.detection.ended` if
      #   `answering_machine_detection=premium` was requested
      # - `call.machine.premium.greeting.ended` if `answering_machine_detection=premium`
      #   was requested and a beep was detected
      # - `streaming.started`, `streaming.stopped` or `streaming.failed` if `stream_url`
      #   was set
      #
      # When the `record` parameter is set to `record-from-answer`, the response will
      # include a `recording_id` field.
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
          sip_transport_protocol:
            Telnyx::CallDialParams::SipTransportProtocol::OrSymbol,
          sound_modifications: Telnyx::SoundModifications::OrHash,
          stream_bidirectional_codec:
            Telnyx::StreamBidirectionalCodec::OrSymbol,
          stream_bidirectional_mode: Telnyx::StreamBidirectionalMode::OrSymbol,
          stream_bidirectional_sampling_rate:
            Telnyx::CallDialParams::StreamBidirectionalSamplingRate::OrInteger,
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
        ).returns(Telnyx::Models::CallDialResponse)
      end
      def dial(
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
        # Defines SIP transport protocol to be used on the call.
        sip_transport_protocol: nil,
        # Use this field to modify sound effects, for example adjust the pitch.
        sound_modifications: nil,
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

      # Returns the status of a call (data is available 10 minutes after call ended).
      sig do
        params(
          call_control_id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::CallRetrieveStatusResponse)
      end
      def retrieve_status(
        # Unique identifier and token for controlling the call
        call_control_id,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: Telnyx::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end

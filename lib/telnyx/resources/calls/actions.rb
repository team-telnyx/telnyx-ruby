# frozen_string_literal: true

module Telnyx
  module Resources
    class Calls
      class Actions
        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::Calls::ActionAnswerParams} for more details.
        #
        # Answer an incoming call. You must issue this command before executing subsequent
        # commands on an incoming call.
        #
        # **Expected Webhooks:**
        #
        # - `call.answered`
        # - `streaming.started`, `streaming.stopped` or `streaming.failed` if `stream_url`
        #   was set
        #
        # When the `record` parameter is set to `record-from-answer`, the response will
        # include a `recording_id` field.
        #
        # @overload answer(call_control_id, billing_group_id: nil, client_state: nil, command_id: nil, custom_headers: nil, preferred_codecs: nil, record: nil, record_channels: nil, record_custom_file_name: nil, record_format: nil, record_max_length: nil, record_timeout_secs: nil, record_track: nil, record_trim: nil, send_silence_when_idle: nil, sip_headers: nil, sound_modifications: nil, stream_bidirectional_codec: nil, stream_bidirectional_mode: nil, stream_bidirectional_target_legs: nil, stream_codec: nil, stream_track: nil, stream_url: nil, transcription: nil, transcription_config: nil, webhook_url: nil, webhook_url_method: nil, request_options: {})
        #
        # @param call_control_id [String] Unique identifier and token for controlling the call
        #
        # @param billing_group_id [String] Use this field to set the Billing Group ID for the call. Must be a valid and exi
        #
        # @param client_state [String] Use this field to add state to every subsequent webhook. It must be a valid Base
        #
        # @param command_id [String] Use this field to avoid duplicate commands. Telnyx will ignore any command with
        #
        # @param custom_headers [Array<Telnyx::Models::CustomSipHeader>] Custom headers to be added to the SIP INVITE response.
        #
        # @param preferred_codecs [Symbol, Telnyx::Models::Calls::ActionAnswerParams::PreferredCodecs] The list of comma-separated codecs in a preferred order for the forked media to
        #
        # @param record [Symbol, Telnyx::Models::Calls::ActionAnswerParams::Record] Start recording automatically after an event. Disabled by default.
        #
        # @param record_channels [Symbol, Telnyx::Models::Calls::ActionAnswerParams::RecordChannels] Defines which channel should be recorded ('single' or 'dual') when `record` is s
        #
        # @param record_custom_file_name [String] The custom recording file name to be used instead of the default `call_leg_id`.
        #
        # @param record_format [Symbol, Telnyx::Models::Calls::ActionAnswerParams::RecordFormat] Defines the format of the recording ('wav' or 'mp3') when `record` is specified.
        #
        # @param record_max_length [Integer] Defines the maximum length for the recording in seconds when `record` is specifi
        #
        # @param record_timeout_secs [Integer] The number of seconds that Telnyx will wait for the recording to be stopped if s
        #
        # @param record_track [Symbol, Telnyx::Models::Calls::ActionAnswerParams::RecordTrack] The audio track to be recorded. Can be either `both`, `inbound` or `outbound`. I
        #
        # @param record_trim [Symbol, Telnyx::Models::Calls::ActionAnswerParams::RecordTrim] When set to `trim-silence`, silence will be removed from the beginning and end o
        #
        # @param send_silence_when_idle [Boolean] Generate silence RTP packets when no transmission available.
        #
        # @param sip_headers [Array<Telnyx::Models::SipHeader>] SIP headers to be added to the SIP INVITE response. Currently only User-to-User
        #
        # @param sound_modifications [Telnyx::Models::SoundModifications] Use this field to modify sound effects, for example adjust the pitch.
        #
        # @param stream_bidirectional_codec [Symbol, Telnyx::Models::StreamBidirectionalCodec] Indicates codec for bidirectional streaming RTP payloads. Used only with
        # stream\_
        #
        # @param stream_bidirectional_mode [Symbol, Telnyx::Models::StreamBidirectionalMode] Configures method of bidirectional streaming (mp3, rtp).
        #
        # @param stream_bidirectional_target_legs [Symbol, Telnyx::Models::StreamBidirectionalTargetLegs] Specifies which call legs should receive the bidirectional stream audio.
        #
        # @param stream_codec [Symbol, Telnyx::Models::StreamCodec] Specifies the codec to be used for the streamed audio. When set to 'default' or
        #
        # @param stream_track [Symbol, Telnyx::Models::Calls::ActionAnswerParams::StreamTrack] Specifies which track should be streamed.
        #
        # @param stream_url [String] The destination WebSocket address where the stream is going to be delivered.
        #
        # @param transcription [Boolean] Enable transcription upon call answer. The default value is false.
        #
        # @param transcription_config [Telnyx::Models::Calls::TranscriptionStartRequest]
        #
        # @param webhook_url [String] Use this field to override the URL for which Telnyx will send subsequent webhook
        #
        # @param webhook_url_method [Symbol, Telnyx::Models::Calls::ActionAnswerParams::WebhookURLMethod] HTTP request type used for `webhook_url`.
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Calls::ActionAnswerResponse]
        #
        # @see Telnyx::Models::Calls::ActionAnswerParams
        def answer(call_control_id, params = {})
          parsed, options = Telnyx::Calls::ActionAnswerParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["calls/%1$s/actions/answer", call_control_id],
            body: parsed,
            model: Telnyx::Models::Calls::ActionAnswerResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::Calls::ActionBridgeParams} for more details.
        #
        # Bridge two call control calls.
        #
        # **Expected Webhooks:**
        #
        # - `call.bridged` for Leg A
        # - `call.bridged` for Leg B
        #
        # @overload bridge(path_call_control_id, body_call_control_id:, client_state: nil, command_id: nil, mute_dtmf: nil, park_after_unbridge: nil, play_ringtone: nil, queue: nil, record: nil, record_channels: nil, record_custom_file_name: nil, record_format: nil, record_max_length: nil, record_timeout_secs: nil, record_track: nil, record_trim: nil, ringtone: nil, video_room_context: nil, video_room_id: nil, request_options: {})
        #
        # @param path_call_control_id [String] Unique identifier and token for controlling the call
        #
        # @param body_call_control_id [String] The Call Control ID of the call you want to bridge with, can't be used together
        #
        # @param client_state [String] Use this field to add state to every subsequent webhook. It must be a valid Base
        #
        # @param command_id [String] Use this field to avoid duplicate commands. Telnyx will ignore any command with
        #
        # @param mute_dtmf [Symbol, Telnyx::Models::Calls::ActionBridgeParams::MuteDtmf] When enabled, DTMF tones are not passed to the call participant. The webhooks co
        #
        # @param park_after_unbridge [String] Specifies behavior after the bridge ends (i.e. the opposite leg either hangs up
        #
        # @param play_ringtone [Boolean] Specifies whether to play a ringtone if the call you want to bridge with has not
        #
        # @param queue [String] The name of the queue you want to bridge with, can't be used together with
        # call\_
        #
        # @param record [Symbol, Telnyx::Models::Calls::ActionBridgeParams::Record] Start recording automatically after an event. Disabled by default.
        #
        # @param record_channels [Symbol, Telnyx::Models::Calls::ActionBridgeParams::RecordChannels] Defines which channel should be recorded ('single' or 'dual') when `record` is s
        #
        # @param record_custom_file_name [String] The custom recording file name to be used instead of the default `call_leg_id`.
        #
        # @param record_format [Symbol, Telnyx::Models::Calls::ActionBridgeParams::RecordFormat] Defines the format of the recording ('wav' or 'mp3') when `record` is specified.
        #
        # @param record_max_length [Integer] Defines the maximum length for the recording in seconds when `record` is specifi
        #
        # @param record_timeout_secs [Integer] The number of seconds that Telnyx will wait for the recording to be stopped if s
        #
        # @param record_track [Symbol, Telnyx::Models::Calls::ActionBridgeParams::RecordTrack] The audio track to be recorded. Can be either `both`, `inbound` or `outbound`. I
        #
        # @param record_trim [Symbol, Telnyx::Models::Calls::ActionBridgeParams::RecordTrim] When set to `trim-silence`, silence will be removed from the beginning and end o
        #
        # @param ringtone [Symbol, Telnyx::Models::Calls::ActionBridgeParams::Ringtone] Specifies which country ringtone to play when `play_ringtone` is set to `true`.
        #
        # @param video_room_context [String] The additional parameter that will be passed to the video conference. It is a te
        #
        # @param video_room_id [String] The ID of the video room you want to bridge with, can't be used together with ca
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Calls::ActionBridgeResponse]
        #
        # @see Telnyx::Models::Calls::ActionBridgeParams
        def bridge(path_call_control_id, params)
          parsed, options = Telnyx::Calls::ActionBridgeParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["calls/%1$s/actions/bridge", path_call_control_id],
            body: parsed,
            model: Telnyx::Models::Calls::ActionBridgeResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::Calls::ActionEnqueueParams} for more details.
        #
        # Put the call in a queue.
        #
        # @overload enqueue(call_control_id, queue_name:, client_state: nil, command_id: nil, keep_after_hangup: nil, max_size: nil, max_wait_time_secs: nil, request_options: {})
        #
        # @param call_control_id [String] Unique identifier and token for controlling the call
        #
        # @param queue_name [String] The name of the queue the call should be put in. If a queue with a given name do
        #
        # @param client_state [String] Use this field to add state to every subsequent webhook. It must be a valid Base
        #
        # @param command_id [String] Use this field to avoid duplicate commands. Telnyx will ignore any command with
        #
        # @param keep_after_hangup [Boolean] If set to true, the call will remain in the queue after hangup. In this case bri
        #
        # @param max_size [Integer] The maximum number of calls allowed in the queue at a given time. Can't be modif
        #
        # @param max_wait_time_secs [Integer] The number of seconds after which the call will be removed from the queue.
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Calls::ActionEnqueueResponse]
        #
        # @see Telnyx::Models::Calls::ActionEnqueueParams
        def enqueue(call_control_id, params)
          parsed, options = Telnyx::Calls::ActionEnqueueParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["calls/%1$s/actions/enqueue", call_control_id],
            body: parsed,
            model: Telnyx::Models::Calls::ActionEnqueueResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::Calls::ActionGatherParams} for more details.
        #
        # Gather DTMF signals to build interactive menus.
        #
        # You can pass a list of valid digits. The `Answer` command must be issued before
        # the `gather` command.
        #
        # **Expected Webhooks:**
        #
        # - `call.dtmf.received` (you may receive many of these webhooks)
        # - `call.gather.ended`
        #
        # @overload gather(call_control_id, client_state: nil, command_id: nil, gather_id: nil, initial_timeout_millis: nil, inter_digit_timeout_millis: nil, maximum_digits: nil, minimum_digits: nil, terminating_digit: nil, timeout_millis: nil, valid_digits: nil, request_options: {})
        #
        # @param call_control_id [String] Unique identifier and token for controlling the call
        #
        # @param client_state [String] Use this field to add state to every subsequent webhook. It must be a valid Base
        #
        # @param command_id [String] Use this field to avoid duplicate commands. Telnyx will ignore any command with
        #
        # @param gather_id [String] An id that will be sent back in the corresponding `call.gather.ended` webhook. W
        #
        # @param initial_timeout_millis [Integer] The number of milliseconds to wait for the first DTMF.
        #
        # @param inter_digit_timeout_millis [Integer] The number of milliseconds to wait for input between digits.
        #
        # @param maximum_digits [Integer] The maximum number of digits to fetch. This parameter has a maximum value of 128
        #
        # @param minimum_digits [Integer] The minimum number of digits to fetch. This parameter has a minimum value of 1.
        #
        # @param terminating_digit [String] The digit used to terminate input if fewer than `maximum_digits` digits have bee
        #
        # @param timeout_millis [Integer] The number of milliseconds to wait to complete the request.
        #
        # @param valid_digits [String] A list of all digits accepted as valid.
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Calls::ActionGatherResponse]
        #
        # @see Telnyx::Models::Calls::ActionGatherParams
        def gather(call_control_id, params = {})
          parsed, options = Telnyx::Calls::ActionGatherParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["calls/%1$s/actions/gather", call_control_id],
            body: parsed,
            model: Telnyx::Models::Calls::ActionGatherResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::Calls::ActionGatherUsingAIParams} for more details.
        #
        # Gather parameters defined in the request payload using a voice assistant.
        #
        # You can pass parameters described as a JSON Schema object and the voice
        # assistant will attempt to gather these informations.
        #
        # **Expected Webhooks:**
        #
        # - `call.ai_gather.ended`
        # - `call.conversation.ended`
        # - `call.ai_gather.partial_results` (if `send_partial_results` is set to `true`)
        # - `call.ai_gather.message_history_updated` (if `send_message_history_updates` is
        #   set to `true`)
        #
        # @overload gather_using_ai(call_control_id, parameters:, assistant: nil, client_state: nil, command_id: nil, greeting: nil, interruption_settings: nil, language: nil, message_history: nil, send_message_history_updates: nil, send_partial_results: nil, transcription: nil, user_response_timeout_ms: nil, voice: nil, voice_settings: nil, request_options: {})
        #
        # @param call_control_id [String] Unique identifier and token for controlling the call
        #
        # @param parameters [Object] The parameters described as a JSON Schema object that needs to be gathered by th
        #
        # @param assistant [Telnyx::Models::AI::Assistant] Assistant configuration including choice of LLM, custom instructions, and tools.
        #
        # @param client_state [String] Use this field to add state to every subsequent webhook. It must be a valid Base
        #
        # @param command_id [String] Use this field to avoid duplicate commands. Telnyx will ignore any command with
        #
        # @param greeting [String] Text that will be played when the gathering starts, if none then nothing will be
        #
        # @param interruption_settings [Telnyx::Models::Calls::InterruptionSettings] Settings for handling user interruptions during assistant speech
        #
        # @param language [Symbol, Telnyx::Models::Calls::GoogleTranscriptionLanguage] Language to use for speech recognition
        #
        # @param message_history [Array<Telnyx::Models::Calls::ActionGatherUsingAIParams::MessageHistory>] The message history you want the voice assistant to be aware of, this can be use
        #
        # @param send_message_history_updates [Boolean] Default is `false`. If set to `true`, the voice assistant will send updates to t
        #
        # @param send_partial_results [Boolean] Default is `false`. If set to `true`, the voice assistant will send partial resu
        #
        # @param transcription [Telnyx::Models::Calls::TranscriptionConfig] The settings associated with speech to text for the voice assistant. This is onl
        #
        # @param user_response_timeout_ms [Integer] The number of milliseconds to wait for a user response before the voice assistan
        #
        # @param voice [String] The voice to be used by the voice assistant. Currently we support ElevenLabs, Te
        #
        # @param voice_settings [Telnyx::Models::Calls::ElevenLabsVoiceSettings, Telnyx::Models::Calls::TelnyxVoiceSettings, Object] The settings associated with the voice selected
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Calls::ActionGatherUsingAIResponse]
        #
        # @see Telnyx::Models::Calls::ActionGatherUsingAIParams
        def gather_using_ai(call_control_id, params)
          parsed, options = Telnyx::Calls::ActionGatherUsingAIParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["calls/%1$s/actions/gather_using_ai", call_control_id],
            body: parsed,
            model: Telnyx::Models::Calls::ActionGatherUsingAIResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::Calls::ActionGatherUsingAudioParams} for more details.
        #
        # Play an audio file on the call until the required DTMF signals are gathered to
        # build interactive menus.
        #
        # You can pass a list of valid digits along with an 'invalid_audio_url', which
        # will be played back at the beginning of each prompt. Playback will be
        # interrupted when a DTMF signal is received. The
        # `Answer command must be issued before the `gather_using_audio` command.
        #
        # **Expected Webhooks:**
        #
        # - `call.playback.started`
        # - `call.playback.ended`
        # - `call.dtmf.received` (you may receive many of these webhooks)
        # - `call.gather.ended`
        #
        # @overload gather_using_audio(call_control_id, audio_url: nil, client_state: nil, command_id: nil, inter_digit_timeout_millis: nil, invalid_audio_url: nil, invalid_media_name: nil, maximum_digits: nil, maximum_tries: nil, media_name: nil, minimum_digits: nil, terminating_digit: nil, timeout_millis: nil, valid_digits: nil, request_options: {})
        #
        # @param call_control_id [String] Unique identifier and token for controlling the call
        #
        # @param audio_url [String] The URL of a file to be played back at the beginning of each prompt. The URL can
        #
        # @param client_state [String] Use this field to add state to every subsequent webhook. It must be a valid Base
        #
        # @param command_id [String] Use this field to avoid duplicate commands. Telnyx will ignore any command with
        #
        # @param inter_digit_timeout_millis [Integer] The number of milliseconds to wait for input between digits.
        #
        # @param invalid_audio_url [String] The URL of a file to play when digits don't match the `valid_digits` parameter o
        #
        # @param invalid_media_name [String] The media_name of a file to be played back when digits don't match the `valid_di
        #
        # @param maximum_digits [Integer] The maximum number of digits to fetch. This parameter has a maximum value of 128
        #
        # @param maximum_tries [Integer] The maximum number of times the file should be played if there is no input from
        #
        # @param media_name [String] The media_name of a file to be played back at the beginning of each prompt. The
        #
        # @param minimum_digits [Integer] The minimum number of digits to fetch. This parameter has a minimum value of 1.
        #
        # @param terminating_digit [String] The digit used to terminate input if fewer than `maximum_digits` digits have bee
        #
        # @param timeout_millis [Integer] The number of milliseconds to wait for a DTMF response after file playback ends
        #
        # @param valid_digits [String] A list of all digits accepted as valid.
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Calls::ActionGatherUsingAudioResponse]
        #
        # @see Telnyx::Models::Calls::ActionGatherUsingAudioParams
        def gather_using_audio(call_control_id, params = {})
          parsed, options = Telnyx::Calls::ActionGatherUsingAudioParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["calls/%1$s/actions/gather_using_audio", call_control_id],
            body: parsed,
            model: Telnyx::Models::Calls::ActionGatherUsingAudioResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::Calls::ActionGatherUsingSpeakParams} for more details.
        #
        # Convert text to speech and play it on the call until the required DTMF signals
        # are gathered to build interactive menus.
        #
        # You can pass a list of valid digits along with an 'invalid_payload', which will
        # be played back at the beginning of each prompt. Speech will be interrupted when
        # a DTMF signal is received. The `Answer` command must be issued before the
        # `gather_using_speak` command.
        #
        # **Expected Webhooks:**
        #
        # - `call.dtmf.received` (you may receive many of these webhooks)
        # - `call.gather.ended`
        #
        # @overload gather_using_speak(call_control_id, payload:, voice:, client_state: nil, command_id: nil, inter_digit_timeout_millis: nil, invalid_payload: nil, language: nil, maximum_digits: nil, maximum_tries: nil, minimum_digits: nil, payload_type: nil, service_level: nil, terminating_digit: nil, timeout_millis: nil, valid_digits: nil, voice_settings: nil, request_options: {})
        #
        # @param call_control_id [String] Unique identifier and token for controlling the call
        #
        # @param payload [String] The text or SSML to be converted into speech. There is a 3,000 character limit.
        #
        # @param voice [String] Specifies the voice used in speech synthesis.
        #
        # @param client_state [String] Use this field to add state to every subsequent webhook. It must be a valid Base
        #
        # @param command_id [String] Use this field to avoid duplicate commands. Telnyx will ignore any command with
        #
        # @param inter_digit_timeout_millis [Integer] The number of milliseconds to wait for input between digits.
        #
        # @param invalid_payload [String] The text or SSML to be converted into speech when digits don't match the
        # `valid\_
        #
        # @param language [Symbol, Telnyx::Models::Calls::ActionGatherUsingSpeakParams::Language] The language you want spoken. This parameter is ignored when a `Polly.*` voice i
        #
        # @param maximum_digits [Integer] The maximum number of digits to fetch. This parameter has a maximum value of 128
        #
        # @param maximum_tries [Integer] The maximum number of times that a file should be played back if there is no inp
        #
        # @param minimum_digits [Integer] The minimum number of digits to fetch. This parameter has a minimum value of 1.
        #
        # @param payload_type [Symbol, Telnyx::Models::Calls::ActionGatherUsingSpeakParams::PayloadType] The type of the provided payload. The payload can either be plain text, or Speec
        #
        # @param service_level [Symbol, Telnyx::Models::Calls::ActionGatherUsingSpeakParams::ServiceLevel] This parameter impacts speech quality, language options and payload types. When
        #
        # @param terminating_digit [String] The digit used to terminate input if fewer than `maximum_digits` digits have bee
        #
        # @param timeout_millis [Integer] The number of milliseconds to wait for a DTMF response after speak ends before a
        #
        # @param valid_digits [String] A list of all digits accepted as valid.
        #
        # @param voice_settings [Telnyx::Models::Calls::ElevenLabsVoiceSettings, Telnyx::Models::Calls::TelnyxVoiceSettings, Object] The settings associated with the voice selected
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Calls::ActionGatherUsingSpeakResponse]
        #
        # @see Telnyx::Models::Calls::ActionGatherUsingSpeakParams
        def gather_using_speak(call_control_id, params)
          parsed, options = Telnyx::Calls::ActionGatherUsingSpeakParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["calls/%1$s/actions/gather_using_speak", call_control_id],
            body: parsed,
            model: Telnyx::Models::Calls::ActionGatherUsingSpeakResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::Calls::ActionHangupParams} for more details.
        #
        # Hang up the call.
        #
        # **Expected Webhooks:**
        #
        # - `call.hangup`
        # - `call.recording.saved`
        #
        # @overload hangup(call_control_id, client_state: nil, command_id: nil, request_options: {})
        #
        # @param call_control_id [String] Unique identifier and token for controlling the call
        #
        # @param client_state [String] Use this field to add state to every subsequent webhook. It must be a valid Base
        #
        # @param command_id [String] Use this field to avoid duplicate commands. Telnyx will ignore any command with
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Calls::ActionHangupResponse]
        #
        # @see Telnyx::Models::Calls::ActionHangupParams
        def hangup(call_control_id, params = {})
          parsed, options = Telnyx::Calls::ActionHangupParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["calls/%1$s/actions/hangup", call_control_id],
            body: parsed,
            model: Telnyx::Models::Calls::ActionHangupResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::Calls::ActionLeaveQueueParams} for more details.
        #
        # Removes the call from a queue.
        #
        # @overload leave_queue(call_control_id, client_state: nil, command_id: nil, request_options: {})
        #
        # @param call_control_id [String] Unique identifier and token for controlling the call
        #
        # @param client_state [String] Use this field to add state to every subsequent webhook. It must be a valid Base
        #
        # @param command_id [String] Use this field to avoid duplicate commands. Telnyx will ignore any command with
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Calls::ActionLeaveQueueResponse]
        #
        # @see Telnyx::Models::Calls::ActionLeaveQueueParams
        def leave_queue(call_control_id, params = {})
          parsed, options = Telnyx::Calls::ActionLeaveQueueParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["calls/%1$s/actions/leave_queue", call_control_id],
            body: parsed,
            model: Telnyx::Models::Calls::ActionLeaveQueueResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::Calls::ActionPauseRecordingParams} for more details.
        #
        # Pause recording the call. Recording can be resumed via Resume recording command.
        #
        # **Expected Webhooks:**
        #
        # There are no webhooks associated with this command.
        #
        # @overload pause_recording(call_control_id, client_state: nil, command_id: nil, recording_id: nil, request_options: {})
        #
        # @param call_control_id [String] Unique identifier and token for controlling the call
        #
        # @param client_state [String] Use this field to add state to every subsequent webhook. It must be a valid Base
        #
        # @param command_id [String] Use this field to avoid duplicate commands. Telnyx will ignore any command with
        #
        # @param recording_id [String] Uniquely identifies the resource.
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Calls::ActionPauseRecordingResponse]
        #
        # @see Telnyx::Models::Calls::ActionPauseRecordingParams
        def pause_recording(call_control_id, params = {})
          parsed, options = Telnyx::Calls::ActionPauseRecordingParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["calls/%1$s/actions/record_pause", call_control_id],
            body: parsed,
            model: Telnyx::Models::Calls::ActionPauseRecordingResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::Calls::ActionReferParams} for more details.
        #
        # Initiate a SIP Refer on a Call Control call. You can initiate a SIP Refer at any
        # point in the duration of a call.
        #
        # **Expected Webhooks:**
        #
        # - `call.refer.started`
        # - `call.refer.completed`
        # - `call.refer.failed`
        #
        # @overload refer(call_control_id, sip_address:, client_state: nil, command_id: nil, custom_headers: nil, sip_auth_password: nil, sip_auth_username: nil, sip_headers: nil, request_options: {})
        #
        # @param call_control_id [String] Unique identifier and token for controlling the call
        #
        # @param sip_address [String] The SIP URI to which the call will be referred to.
        #
        # @param client_state [String] Use this field to add state to every subsequent webhook. It must be a valid Base
        #
        # @param command_id [String] Use this field to avoid execution of duplicate commands. Telnyx will ignore subs
        #
        # @param custom_headers [Array<Telnyx::Models::CustomSipHeader>] Custom headers to be added to the SIP INVITE.
        #
        # @param sip_auth_password [String] SIP Authentication password used for SIP challenges.
        #
        # @param sip_auth_username [String] SIP Authentication username used for SIP challenges.
        #
        # @param sip_headers [Array<Telnyx::Models::SipHeader>] SIP headers to be added to the request. Currently only User-to-User header is su
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Calls::ActionReferResponse]
        #
        # @see Telnyx::Models::Calls::ActionReferParams
        def refer(call_control_id, params)
          parsed, options = Telnyx::Calls::ActionReferParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["calls/%1$s/actions/refer", call_control_id],
            body: parsed,
            model: Telnyx::Models::Calls::ActionReferResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::Calls::ActionRejectParams} for more details.
        #
        # Reject an incoming call.
        #
        # **Expected Webhooks:**
        #
        # - `call.hangup`
        #
        # @overload reject(call_control_id, cause:, client_state: nil, command_id: nil, request_options: {})
        #
        # @param call_control_id [String] Unique identifier and token for controlling the call
        #
        # @param cause [Symbol, Telnyx::Models::Calls::ActionRejectParams::Cause] Cause for call rejection.
        #
        # @param client_state [String] Use this field to add state to every subsequent webhook. It must be a valid Base
        #
        # @param command_id [String] Use this field to avoid duplicate commands. Telnyx will ignore any command with
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Calls::ActionRejectResponse]
        #
        # @see Telnyx::Models::Calls::ActionRejectParams
        def reject(call_control_id, params)
          parsed, options = Telnyx::Calls::ActionRejectParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["calls/%1$s/actions/reject", call_control_id],
            body: parsed,
            model: Telnyx::Models::Calls::ActionRejectResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::Calls::ActionResumeRecordingParams} for more details.
        #
        # Resume recording the call.
        #
        # **Expected Webhooks:**
        #
        # There are no webhooks associated with this command.
        #
        # @overload resume_recording(call_control_id, client_state: nil, command_id: nil, recording_id: nil, request_options: {})
        #
        # @param call_control_id [String] Unique identifier and token for controlling the call
        #
        # @param client_state [String] Use this field to add state to every subsequent webhook. It must be a valid Base
        #
        # @param command_id [String] Use this field to avoid duplicate commands. Telnyx will ignore any command with
        #
        # @param recording_id [String] Uniquely identifies the resource.
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Calls::ActionResumeRecordingResponse]
        #
        # @see Telnyx::Models::Calls::ActionResumeRecordingParams
        def resume_recording(call_control_id, params = {})
          parsed, options = Telnyx::Calls::ActionResumeRecordingParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["calls/%1$s/actions/record_resume", call_control_id],
            body: parsed,
            model: Telnyx::Models::Calls::ActionResumeRecordingResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::Calls::ActionSendDtmfParams} for more details.
        #
        # Sends DTMF tones from this leg. DTMF tones will be heard by the other end of the
        # call.
        #
        # **Expected Webhooks:**
        #
        # There are no webhooks associated with this command.
        #
        # @overload send_dtmf(call_control_id, digits:, client_state: nil, command_id: nil, duration_millis: nil, request_options: {})
        #
        # @param call_control_id [String] Unique identifier and token for controlling the call
        #
        # @param digits [String] DTMF digits to send. Valid digits are 0-9, A-D, \*, and #. Pauses can be added
        # us
        #
        # @param client_state [String] Use this field to add state to every subsequent webhook. It must be a valid Base
        #
        # @param command_id [String] Use this field to avoid duplicate commands. Telnyx will ignore any command with
        #
        # @param duration_millis [Integer] Specifies for how many milliseconds each digit will be played in the audio strea
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Calls::ActionSendDtmfResponse]
        #
        # @see Telnyx::Models::Calls::ActionSendDtmfParams
        def send_dtmf(call_control_id, params)
          parsed, options = Telnyx::Calls::ActionSendDtmfParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["calls/%1$s/actions/send_dtmf", call_control_id],
            body: parsed,
            model: Telnyx::Models::Calls::ActionSendDtmfResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::Calls::ActionSendSipInfoParams} for more details.
        #
        # Sends SIP info from this leg.
        #
        # **Expected Webhooks:**
        #
        # - `call.sip_info.received` (to be received on the target call leg)
        #
        # @overload send_sip_info(call_control_id, body:, content_type:, client_state: nil, command_id: nil, request_options: {})
        #
        # @param call_control_id [String] Unique identifier and token for controlling the call
        #
        # @param body [String] Content of the SIP INFO
        #
        # @param content_type [String] Content type of the INFO body. Must be MIME type compliant. There is a 1,400 byt
        #
        # @param client_state [String] Use this field to add state to every subsequent webhook. It must be a valid Base
        #
        # @param command_id [String] Use this field to avoid duplicate commands. Telnyx will ignore any command with
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Calls::ActionSendSipInfoResponse]
        #
        # @see Telnyx::Models::Calls::ActionSendSipInfoParams
        def send_sip_info(call_control_id, params)
          parsed, options = Telnyx::Calls::ActionSendSipInfoParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["calls/%1$s/actions/send_sip_info", call_control_id],
            body: parsed,
            model: Telnyx::Models::Calls::ActionSendSipInfoResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::Calls::ActionSpeakParams} for more details.
        #
        # Convert text to speech and play it back on the call. If multiple speak text
        # commands are issued consecutively, the audio files will be placed in a queue
        # awaiting playback.
        #
        # **Expected Webhooks:**
        #
        # - `call.speak.started`
        # - `call.speak.ended`
        #
        # @overload speak(call_control_id, payload:, voice:, client_state: nil, command_id: nil, language: nil, payload_type: nil, service_level: nil, stop: nil, voice_settings: nil, request_options: {})
        #
        # @param call_control_id [String] Unique identifier and token for controlling the call
        #
        # @param payload [String] The text or SSML to be converted into speech. There is a 3,000 character limit.
        #
        # @param voice [String] Specifies the voice used in speech synthesis.
        #
        # @param client_state [String] Use this field to add state to every subsequent webhook. It must be a valid Base
        #
        # @param command_id [String] Use this field to avoid duplicate commands. Telnyx will ignore any command with
        #
        # @param language [Symbol, Telnyx::Models::Calls::ActionSpeakParams::Language] The language you want spoken. This parameter is ignored when a `Polly.*` voice i
        #
        # @param payload_type [Symbol, Telnyx::Models::Calls::ActionSpeakParams::PayloadType] The type of the provided payload. The payload can either be plain text, or Speec
        #
        # @param service_level [Symbol, Telnyx::Models::Calls::ActionSpeakParams::ServiceLevel] This parameter impacts speech quality, language options and payload types. When
        #
        # @param stop [String] When specified, it stops the current audio being played. Specify `current` to st
        #
        # @param voice_settings [Telnyx::Models::Calls::ElevenLabsVoiceSettings, Telnyx::Models::Calls::TelnyxVoiceSettings, Object] The settings associated with the voice selected
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Calls::ActionSpeakResponse]
        #
        # @see Telnyx::Models::Calls::ActionSpeakParams
        def speak(call_control_id, params)
          parsed, options = Telnyx::Calls::ActionSpeakParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["calls/%1$s/actions/speak", call_control_id],
            body: parsed,
            model: Telnyx::Models::Calls::ActionSpeakResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::Calls::ActionStartAIAssistantParams} for more details.
        #
        # Start an AI assistant on the call.
        #
        # **Expected Webhooks:**
        #
        # - `call.conversation.ended`
        # - `call.conversation_insights.generated`
        #
        # @overload start_ai_assistant(call_control_id, assistant: nil, client_state: nil, command_id: nil, greeting: nil, interruption_settings: nil, transcription: nil, voice: nil, voice_settings: nil, request_options: {})
        #
        # @param call_control_id [String] Unique identifier and token for controlling the call
        #
        # @param assistant [Telnyx::Models::Calls::ActionStartAIAssistantParams::Assistant] AI Assistant configuration
        #
        # @param client_state [String] Use this field to add state to every subsequent webhook. It must be a valid Base
        #
        # @param command_id [String] Use this field to avoid duplicate commands. Telnyx will ignore any command with
        #
        # @param greeting [String] Text that will be played when the assistant starts, if none then nothing will be
        #
        # @param interruption_settings [Telnyx::Models::Calls::InterruptionSettings] Settings for handling user interruptions during assistant speech
        #
        # @param transcription [Telnyx::Models::Calls::TranscriptionConfig] The settings associated with speech to text for the voice assistant. This is onl
        #
        # @param voice [String] The voice to be used by the voice assistant. Currently we support ElevenLabs, Te
        #
        # @param voice_settings [Telnyx::Models::Calls::ElevenLabsVoiceSettings, Telnyx::Models::Calls::TelnyxVoiceSettings, Object] The settings associated with the voice selected
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Calls::ActionStartAIAssistantResponse]
        #
        # @see Telnyx::Models::Calls::ActionStartAIAssistantParams
        def start_ai_assistant(call_control_id, params = {})
          parsed, options = Telnyx::Calls::ActionStartAIAssistantParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["calls/%1$s/actions/ai_assistant_start", call_control_id],
            body: parsed,
            model: Telnyx::Models::Calls::ActionStartAIAssistantResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::Calls::ActionStartForkingParams} for more details.
        #
        # Call forking allows you to stream the media from a call to a specific target in
        # realtime. This stream can be used to enable realtime audio analysis to support a
        # variety of use cases, including fraud detection, or the creation of AI-generated
        # audio responses. Requests must specify either the `target` attribute or the `rx`
        # and `tx` attributes.
        #
        # **Expected Webhooks:**
        #
        # - `call.fork.started`
        # - `call.fork.stopped`
        #
        # @overload start_forking(call_control_id, client_state: nil, command_id: nil, rx: nil, stream_type: nil, tx: nil, request_options: {})
        #
        # @param call_control_id [String] Unique identifier and token for controlling the call
        #
        # @param client_state [String] Use this field to add state to every subsequent webhook. It must be a valid Base
        #
        # @param command_id [String] Use this field to avoid duplicate commands. Telnyx will ignore any command with
        #
        # @param rx [String] The network target, <udp:ip_address:port>, where the call's incoming RTP media p
        #
        # @param stream_type [Symbol, Telnyx::Models::Calls::ActionStartForkingParams::StreamType] Optionally specify a media type to stream. If `decrypted` selected, Telnyx will
        #
        # @param tx [String] The network target, <udp:ip_address:port>, where the call's outgoing RTP media p
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Calls::ActionStartForkingResponse]
        #
        # @see Telnyx::Models::Calls::ActionStartForkingParams
        def start_forking(call_control_id, params = {})
          parsed, options = Telnyx::Calls::ActionStartForkingParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["calls/%1$s/actions/fork_start", call_control_id],
            body: parsed,
            model: Telnyx::Models::Calls::ActionStartForkingResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::Calls::ActionStartNoiseSuppressionParams} for more details.
        #
        # Noise Suppression Start (BETA)
        #
        # @overload start_noise_suppression(call_control_id, client_state: nil, command_id: nil, direction: nil, noise_suppression_engine: nil, noise_suppression_engine_config: nil, request_options: {})
        #
        # @param call_control_id [String] Unique identifier and token for controlling the call
        #
        # @param client_state [String] Use this field to add state to every subsequent webhook. It must be a valid Base
        #
        # @param command_id [String] Use this field to avoid duplicate commands. Telnyx will ignore any command with
        #
        # @param direction [Symbol, Telnyx::Models::Calls::ActionStartNoiseSuppressionParams::Direction] The direction of the audio stream to be noise suppressed.
        #
        # @param noise_suppression_engine [Symbol, Telnyx::Models::Calls::ActionStartNoiseSuppressionParams::NoiseSuppressionEngine] The engine to use for noise suppression.
        #
        # @param noise_suppression_engine_config [Telnyx::Models::Calls::ActionStartNoiseSuppressionParams::NoiseSuppressionEngineConfig] Configuration parameters for noise suppression engines.
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Calls::ActionStartNoiseSuppressionResponse]
        #
        # @see Telnyx::Models::Calls::ActionStartNoiseSuppressionParams
        def start_noise_suppression(call_control_id, params = {})
          parsed, options = Telnyx::Calls::ActionStartNoiseSuppressionParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["calls/%1$s/actions/suppression_start", call_control_id],
            body: parsed,
            model: Telnyx::Models::Calls::ActionStartNoiseSuppressionResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::Calls::ActionStartPlaybackParams} for more details.
        #
        # Play an audio file on the call. If multiple play audio commands are issued
        # consecutively, the audio files will be placed in a queue awaiting playback.
        #
        # _Notes:_
        #
        # - When `overlay` is enabled, `target_legs` is limited to `self`.
        # - A customer cannot Play Audio with `overlay=true` unless there is a Play Audio
        #   with `overlay=false` actively playing.
        #
        # **Expected Webhooks:**
        #
        # - `call.playback.started`
        # - `call.playback.ended`
        #
        # @overload start_playback(call_control_id, audio_type: nil, audio_url: nil, cache_audio: nil, client_state: nil, command_id: nil, loop_: nil, media_name: nil, overlay: nil, playback_content: nil, stop: nil, target_legs: nil, request_options: {})
        #
        # @param call_control_id [String] Unique identifier and token for controlling the call
        #
        # @param audio_type [Symbol, Telnyx::Models::Calls::ActionStartPlaybackParams::AudioType] Specifies the type of audio provided in `audio_url` or `playback_content`.
        #
        # @param audio_url [String] The URL of a file to be played back on the call. The URL can point to either a W
        #
        # @param cache_audio [Boolean] Caches the audio file. Useful when playing the same audio file multiple times du
        #
        # @param client_state [String] Use this field to add state to every subsequent webhook. It must be a valid Base
        #
        # @param command_id [String] Use this field to avoid duplicate commands. Telnyx will ignore any command with
        #
        # @param loop_ [String, Integer] The number of times the audio file should be played. If supplied, the value must
        #
        # @param media_name [String] The media_name of a file to be played back on the call. The media_name must poin
        #
        # @param overlay [Boolean] When enabled, audio will be mixed on top of any other audio that is actively bei
        #
        # @param playback_content [String] Allows a user to provide base64 encoded mp3 or wav. Note: when using this parame
        #
        # @param stop [String] When specified, it stops the current audio being played. Specify `current` to st
        #
        # @param target_legs [String] Specifies the leg or legs on which audio will be played. If supplied, the value
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Calls::ActionStartPlaybackResponse]
        #
        # @see Telnyx::Models::Calls::ActionStartPlaybackParams
        def start_playback(call_control_id, params = {})
          parsed, options = Telnyx::Calls::ActionStartPlaybackParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["calls/%1$s/actions/playback_start", call_control_id],
            body: parsed,
            model: Telnyx::Models::Calls::ActionStartPlaybackResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::Calls::ActionStartRecordingParams} for more details.
        #
        # Start recording the call. Recording will stop on call hang-up, or can be
        # initiated via the Stop Recording command.
        #
        # **Expected Webhooks:**
        #
        # - `call.recording.saved`
        # - `call.recording.transcription.saved`
        # - `call.recording.error`
        #
        # @overload start_recording(call_control_id, channels:, format_:, client_state: nil, command_id: nil, custom_file_name: nil, max_length: nil, play_beep: nil, recording_track: nil, timeout_secs: nil, transcription: nil, transcription_engine: nil, transcription_language: nil, transcription_max_speaker_count: nil, transcription_min_speaker_count: nil, transcription_profanity_filter: nil, transcription_speaker_diarization: nil, trim: nil, request_options: {})
        #
        # @param call_control_id [String] Unique identifier and token for controlling the call
        #
        # @param channels [Symbol, Telnyx::Models::Calls::ActionStartRecordingParams::Channels] When `dual`, final audio file will be stereo recorded with the first leg on chan
        #
        # @param format_ [Symbol, Telnyx::Models::Calls::ActionStartRecordingParams::Format] The audio file format used when storing the call recording. Can be either `mp3`
        #
        # @param client_state [String] Use this field to add state to every subsequent webhook. It must be a valid Base
        #
        # @param command_id [String] Use this field to avoid duplicate commands. Telnyx will ignore any command with
        #
        # @param custom_file_name [String] The custom recording file name to be used instead of the default `call_leg_id`.
        #
        # @param max_length [Integer] Defines the maximum length for the recording in seconds. The minimum value is 0.
        #
        # @param play_beep [Boolean] If enabled, a beep sound will be played at the start of a recording.
        #
        # @param recording_track [Symbol, Telnyx::Models::Calls::ActionStartRecordingParams::RecordingTrack] The audio track to be recorded. Can be either `both`, `inbound` or `outbound`. I
        #
        # @param timeout_secs [Integer] The number of seconds that Telnyx will wait for the recording to be stopped if s
        #
        # @param transcription [Boolean] Enable post recording transcription. The default value is false.
        #
        # @param transcription_engine [String] Engine to use for speech recognition. `A` - `Google`
        #
        # @param transcription_language [Symbol, Telnyx::Models::Calls::ActionStartRecordingParams::TranscriptionLanguage] Language to use for speech recognition
        #
        # @param transcription_max_speaker_count [Integer] Defines maximum number of speakers in the conversation. Applies to `google` engi
        #
        # @param transcription_min_speaker_count [Integer] Defines minimum number of speakers in the conversation. Applies to `google` engi
        #
        # @param transcription_profanity_filter [Boolean] Enables profanity_filter. Applies to `google` engine only.
        #
        # @param transcription_speaker_diarization [Boolean] Enables speaker diarization. Applies to `google` engine only.
        #
        # @param trim [Symbol, Telnyx::Models::Calls::ActionStartRecordingParams::Trim] When set to `trim-silence`, silence will be removed from the beginning and end o
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Calls::ActionStartRecordingResponse]
        #
        # @see Telnyx::Models::Calls::ActionStartRecordingParams
        def start_recording(call_control_id, params)
          parsed, options = Telnyx::Calls::ActionStartRecordingParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["calls/%1$s/actions/record_start", call_control_id],
            body: parsed,
            model: Telnyx::Models::Calls::ActionStartRecordingResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::Calls::ActionStartSiprecParams} for more details.
        #
        # Start siprec session to configured in SIPREC connector SRS.
        #
        # **Expected Webhooks:**
        #
        # - `siprec.started`
        # - `siprec.stopped`
        # - `siprec.failed`
        #
        # @overload start_siprec(call_control_id, client_state: nil, connector_name: nil, include_metadata_custom_headers: nil, secure: nil, session_timeout_secs: nil, sip_transport: nil, siprec_track: nil, request_options: {})
        #
        # @param call_control_id [String] Unique identifier and token for controlling the call
        #
        # @param client_state [String] Use this field to add state to every subsequent webhook. It must be a valid Base
        #
        # @param connector_name [String] Name of configured SIPREC connector to be used.
        #
        # @param include_metadata_custom_headers [Boolean, Telnyx::Models::Calls::ActionStartSiprecParams::IncludeMetadataCustomHeaders] When set, custom parameters will be added as metadata (recording.session.Extensi
        #
        # @param secure [Boolean, Telnyx::Models::Calls::ActionStartSiprecParams::Secure] Controls whether to encrypt media sent to your SRS using SRTP and TLS. When set
        #
        # @param session_timeout_secs [Integer] Sets `Session-Expires` header to the INVITE. A reinvite is sent every half the v
        #
        # @param sip_transport [Symbol, Telnyx::Models::Calls::ActionStartSiprecParams::SipTransport] Specifies SIP transport protocol.
        #
        # @param siprec_track [Symbol, Telnyx::Models::Calls::ActionStartSiprecParams::SiprecTrack] Specifies which track should be sent on siprec session.
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Calls::ActionStartSiprecResponse]
        #
        # @see Telnyx::Models::Calls::ActionStartSiprecParams
        def start_siprec(call_control_id, params = {})
          parsed, options = Telnyx::Calls::ActionStartSiprecParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["calls/%1$s/actions/siprec_start", call_control_id],
            body: parsed,
            model: Telnyx::Models::Calls::ActionStartSiprecResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::Calls::ActionStartStreamingParams} for more details.
        #
        # Start streaming the media from a call to a specific WebSocket address or
        # Dialogflow connection in near-realtime. Audio will be delivered as
        # base64-encoded RTP payload (raw audio), wrapped in JSON payloads.
        #
        # Please find more details about media streaming messages specification under the
        # [link](https://developers.telnyx.com/docs/voice/programmable-voice/media-streaming).
        #
        # @overload start_streaming(call_control_id, client_state: nil, command_id: nil, dialogflow_config: nil, enable_dialogflow: nil, stream_bidirectional_codec: nil, stream_bidirectional_mode: nil, stream_bidirectional_sampling_rate: nil, stream_bidirectional_target_legs: nil, stream_codec: nil, stream_track: nil, stream_url: nil, request_options: {})
        #
        # @param call_control_id [String] Unique identifier and token for controlling the call
        #
        # @param client_state [String] Use this field to add state to every subsequent webhook. It must be a valid Base
        #
        # @param command_id [String] Use this field to avoid duplicate commands. Telnyx will ignore any command with
        #
        # @param dialogflow_config [Telnyx::Models::DialogflowConfig]
        #
        # @param enable_dialogflow [Boolean] Enables Dialogflow for the current call. The default value is false.
        #
        # @param stream_bidirectional_codec [Symbol, Telnyx::Models::StreamBidirectionalCodec] Indicates codec for bidirectional streaming RTP payloads. Used only with
        # stream\_
        #
        # @param stream_bidirectional_mode [Symbol, Telnyx::Models::StreamBidirectionalMode] Configures method of bidirectional streaming (mp3, rtp).
        #
        # @param stream_bidirectional_sampling_rate [Integer, Telnyx::Models::StreamBidirectionalSamplingRate] Audio sampling rate.
        #
        # @param stream_bidirectional_target_legs [Symbol, Telnyx::Models::StreamBidirectionalTargetLegs] Specifies which call legs should receive the bidirectional stream audio.
        #
        # @param stream_codec [Symbol, Telnyx::Models::StreamCodec] Specifies the codec to be used for the streamed audio. When set to 'default' or
        #
        # @param stream_track [Symbol, Telnyx::Models::Calls::ActionStartStreamingParams::StreamTrack] Specifies which track should be streamed.
        #
        # @param stream_url [String] The destination WebSocket address where the stream is going to be delivered.
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Calls::ActionStartStreamingResponse]
        #
        # @see Telnyx::Models::Calls::ActionStartStreamingParams
        def start_streaming(call_control_id, params = {})
          parsed, options = Telnyx::Calls::ActionStartStreamingParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["calls/%1$s/actions/streaming_start", call_control_id],
            body: parsed,
            model: Telnyx::Models::Calls::ActionStartStreamingResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::Calls::ActionStartTranscriptionParams} for more details.
        #
        # Start real-time transcription. Transcription will stop on call hang-up, or can
        # be initiated via the Transcription stop command.
        #
        # **Expected Webhooks:**
        #
        # - `call.transcription`
        #
        # @overload start_transcription(call_control_id, client_state: nil, command_id: nil, transcription_engine: nil, transcription_engine_config: nil, transcription_tracks: nil, request_options: {})
        #
        # @param call_control_id [String] Unique identifier and token for controlling the call
        #
        # @param client_state [String] Use this field to add state to every subsequent webhook. It must be a valid Base
        #
        # @param command_id [String] Use this field to avoid duplicate commands. Telnyx will ignore any command with
        #
        # @param transcription_engine [Symbol, Telnyx::Models::Calls::TranscriptionStartRequest::TranscriptionEngine] Engine to use for speech recognition. Legacy values `A` - `Google`, `B` - `Telny
        #
        # @param transcription_engine_config [::Telnyx::Models::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Google, ::Telnyx::Models::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Telnyx, ::Telnyx::Models::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Deepgram, ::Telnyx::Models::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Azure, ::Telnyx::Models::Calls::TranscriptionEngineAConfig, ::Telnyx::Models::Calls::TranscriptionEngineBConfig]
        #
        # @param transcription_tracks [String] Indicates which leg of the call will be transcribed. Use `inbound` for the leg t
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Calls::ActionStartTranscriptionResponse]
        #
        # @see Telnyx::Models::Calls::ActionStartTranscriptionParams
        def start_transcription(call_control_id, params = {})
          parsed, options = Telnyx::Calls::ActionStartTranscriptionParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["calls/%1$s/actions/transcription_start", call_control_id],
            body: parsed,
            model: Telnyx::Models::Calls::ActionStartTranscriptionResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::Calls::ActionStopAIAssistantParams} for more details.
        #
        # Stop an AI assistant on the call.
        #
        # @overload stop_ai_assistant(call_control_id, client_state: nil, command_id: nil, request_options: {})
        #
        # @param call_control_id [String] Unique identifier and token for controlling the call
        #
        # @param client_state [String] Use this field to add state to every subsequent webhook. It must be a valid Base
        #
        # @param command_id [String] Use this field to avoid duplicate commands. Telnyx will ignore any command with
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Calls::ActionStopAIAssistantResponse]
        #
        # @see Telnyx::Models::Calls::ActionStopAIAssistantParams
        def stop_ai_assistant(call_control_id, params = {})
          parsed, options = Telnyx::Calls::ActionStopAIAssistantParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["calls/%1$s/actions/ai_assistant_stop", call_control_id],
            body: parsed,
            model: Telnyx::Models::Calls::ActionStopAIAssistantResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::Calls::ActionStopForkingParams} for more details.
        #
        # Stop forking a call.
        #
        # **Expected Webhooks:**
        #
        # - `call.fork.stopped`
        #
        # @overload stop_forking(call_control_id, client_state: nil, command_id: nil, stream_type: nil, request_options: {})
        #
        # @param call_control_id [String] Unique identifier and token for controlling the call
        #
        # @param client_state [String] Use this field to add state to every subsequent webhook. It must be a valid Base
        #
        # @param command_id [String] Use this field to avoid duplicate commands. Telnyx will ignore any command with
        #
        # @param stream_type [Symbol, Telnyx::Models::Calls::ActionStopForkingParams::StreamType] Optionally specify a `stream_type`. This should match the `stream_type` that was
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Calls::ActionStopForkingResponse]
        #
        # @see Telnyx::Models::Calls::ActionStopForkingParams
        def stop_forking(call_control_id, params = {})
          parsed, options = Telnyx::Calls::ActionStopForkingParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["calls/%1$s/actions/fork_stop", call_control_id],
            body: parsed,
            model: Telnyx::Models::Calls::ActionStopForkingResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::Calls::ActionStopGatherParams} for more details.
        #
        # Stop current gather.
        #
        # **Expected Webhooks:**
        #
        # - `call.gather.ended`
        #
        # @overload stop_gather(call_control_id, client_state: nil, command_id: nil, request_options: {})
        #
        # @param call_control_id [String] Unique identifier and token for controlling the call
        #
        # @param client_state [String] Use this field to add state to every subsequent webhook. It must be a valid Base
        #
        # @param command_id [String] Use this field to avoid duplicate commands. Telnyx will ignore any command with
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Calls::ActionStopGatherResponse]
        #
        # @see Telnyx::Models::Calls::ActionStopGatherParams
        def stop_gather(call_control_id, params = {})
          parsed, options = Telnyx::Calls::ActionStopGatherParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["calls/%1$s/actions/gather_stop", call_control_id],
            body: parsed,
            model: Telnyx::Models::Calls::ActionStopGatherResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::Calls::ActionStopNoiseSuppressionParams} for more details.
        #
        # Noise Suppression Stop (BETA)
        #
        # @overload stop_noise_suppression(call_control_id, client_state: nil, command_id: nil, request_options: {})
        #
        # @param call_control_id [String] Unique identifier and token for controlling the call
        #
        # @param client_state [String] Use this field to add state to every subsequent webhook. It must be a valid Base
        #
        # @param command_id [String] Use this field to avoid duplicate commands. Telnyx will ignore any command with
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Calls::ActionStopNoiseSuppressionResponse]
        #
        # @see Telnyx::Models::Calls::ActionStopNoiseSuppressionParams
        def stop_noise_suppression(call_control_id, params = {})
          parsed, options = Telnyx::Calls::ActionStopNoiseSuppressionParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["calls/%1$s/actions/suppression_stop", call_control_id],
            body: parsed,
            model: Telnyx::Models::Calls::ActionStopNoiseSuppressionResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::Calls::ActionStopPlaybackParams} for more details.
        #
        # Stop audio being played on the call.
        #
        # **Expected Webhooks:**
        #
        # - `call.playback.ended` or `call.speak.ended`
        #
        # @overload stop_playback(call_control_id, client_state: nil, command_id: nil, overlay: nil, stop: nil, request_options: {})
        #
        # @param call_control_id [String] Unique identifier and token for controlling the call
        #
        # @param client_state [String] Use this field to add state to every subsequent webhook. It must be a valid Base
        #
        # @param command_id [String] Use this field to avoid duplicate commands. Telnyx will ignore any command with
        #
        # @param overlay [Boolean] When enabled, it stops the audio being played in the overlay queue.
        #
        # @param stop [String] Use `current` to stop the current audio being played. Use `all` to stop the curr
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Calls::ActionStopPlaybackResponse]
        #
        # @see Telnyx::Models::Calls::ActionStopPlaybackParams
        def stop_playback(call_control_id, params = {})
          parsed, options = Telnyx::Calls::ActionStopPlaybackParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["calls/%1$s/actions/playback_stop", call_control_id],
            body: parsed,
            model: Telnyx::Models::Calls::ActionStopPlaybackResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::Calls::ActionStopRecordingParams} for more details.
        #
        # Stop recording the call.
        #
        # **Expected Webhooks:**
        #
        # - `call.recording.saved`
        #
        # @overload stop_recording(call_control_id, client_state: nil, command_id: nil, recording_id: nil, request_options: {})
        #
        # @param call_control_id [String] Unique identifier and token for controlling the call
        #
        # @param client_state [String] Use this field to add state to every subsequent webhook. It must be a valid Base
        #
        # @param command_id [String] Use this field to avoid duplicate commands. Telnyx will ignore any command with
        #
        # @param recording_id [String] Uniquely identifies the resource.
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Calls::ActionStopRecordingResponse]
        #
        # @see Telnyx::Models::Calls::ActionStopRecordingParams
        def stop_recording(call_control_id, params = {})
          parsed, options = Telnyx::Calls::ActionStopRecordingParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["calls/%1$s/actions/record_stop", call_control_id],
            body: parsed,
            model: Telnyx::Models::Calls::ActionStopRecordingResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::Calls::ActionStopSiprecParams} for more details.
        #
        # Stop SIPREC session.
        #
        # **Expected Webhooks:**
        #
        # - `siprec.stopped`
        #
        # @overload stop_siprec(call_control_id, client_state: nil, command_id: nil, request_options: {})
        #
        # @param call_control_id [String] Unique identifier and token for controlling the call
        #
        # @param client_state [String] Use this field to add state to every subsequent webhook. It must be a valid Base
        #
        # @param command_id [String] Use this field to avoid duplicate commands. Telnyx will ignore any command with
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Calls::ActionStopSiprecResponse]
        #
        # @see Telnyx::Models::Calls::ActionStopSiprecParams
        def stop_siprec(call_control_id, params = {})
          parsed, options = Telnyx::Calls::ActionStopSiprecParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["calls/%1$s/actions/siprec_stop", call_control_id],
            body: parsed,
            model: Telnyx::Models::Calls::ActionStopSiprecResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::Calls::ActionStopStreamingParams} for more details.
        #
        # Stop streaming a call to a WebSocket.
        #
        # **Expected Webhooks:**
        #
        # - `streaming.stopped`
        #
        # @overload stop_streaming(call_control_id, client_state: nil, command_id: nil, stream_id: nil, request_options: {})
        #
        # @param call_control_id [String] Unique identifier and token for controlling the call
        #
        # @param client_state [String] Use this field to add state to every subsequent webhook. It must be a valid Base
        #
        # @param command_id [String] Use this field to avoid duplicate commands. Telnyx will ignore any command with
        #
        # @param stream_id [String] Identifies the stream. If the `stream_id` is not provided the command stops all
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Calls::ActionStopStreamingResponse]
        #
        # @see Telnyx::Models::Calls::ActionStopStreamingParams
        def stop_streaming(call_control_id, params = {})
          parsed, options = Telnyx::Calls::ActionStopStreamingParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["calls/%1$s/actions/streaming_stop", call_control_id],
            body: parsed,
            model: Telnyx::Models::Calls::ActionStopStreamingResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::Calls::ActionStopTranscriptionParams} for more details.
        #
        # Stop real-time transcription.
        #
        # @overload stop_transcription(call_control_id, client_state: nil, command_id: nil, request_options: {})
        #
        # @param call_control_id [String] Unique identifier and token for controlling the call
        #
        # @param client_state [String] Use this field to add state to every subsequent webhook. It must be a valid Base
        #
        # @param command_id [String] Use this field to avoid duplicate commands. Telnyx will ignore any command with
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Calls::ActionStopTranscriptionResponse]
        #
        # @see Telnyx::Models::Calls::ActionStopTranscriptionParams
        def stop_transcription(call_control_id, params = {})
          parsed, options = Telnyx::Calls::ActionStopTranscriptionParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["calls/%1$s/actions/transcription_stop", call_control_id],
            body: parsed,
            model: Telnyx::Models::Calls::ActionStopTranscriptionResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::Calls::ActionSwitchSupervisorRoleParams} for more details.
        #
        # Switch the supervisor role for a bridged call. This allows switching between
        # different supervisor modes during an active call
        #
        # @overload switch_supervisor_role(call_control_id, role:, request_options: {})
        #
        # @param call_control_id [String] Unique identifier and token for controlling the call
        #
        # @param role [Symbol, Telnyx::Models::Calls::ActionSwitchSupervisorRoleParams::Role] The supervisor role to switch to. 'barge' allows speaking to both parties, 'whis
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Calls::ActionSwitchSupervisorRoleResponse]
        #
        # @see Telnyx::Models::Calls::ActionSwitchSupervisorRoleParams
        def switch_supervisor_role(call_control_id, params)
          parsed, options = Telnyx::Calls::ActionSwitchSupervisorRoleParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["calls/%1$s/actions/switch_supervisor_role", call_control_id],
            body: parsed,
            model: Telnyx::Models::Calls::ActionSwitchSupervisorRoleResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::Calls::ActionTransferParams} for more details.
        #
        # Transfer a call to a new destination. If the transfer is unsuccessful, a
        # `call.hangup` webhook for the other call (Leg B) will be sent indicating that
        # the transfer could not be completed. The original call will remain active and
        # may be issued additional commands, potentially transfering the call to an
        # alternate destination.
        #
        # **Expected Webhooks:**
        #
        # - `call.initiated`
        # - `call.bridged` to Leg B
        # - `call.answered` or `call.hangup`
        # - `call.machine.detection.ended` if `answering_machine_detection` was requested
        # - `call.machine.greeting.ended` if `answering_machine_detection` was requested
        #   to detect the end of machine greeting
        # - `call.machine.premium.detection.ended` if
        #   `answering_machine_detection=premium` was requested
        # - `call.machine.premium.greeting.ended` if `answering_machine_detection=premium`
        #   was requested and a beep was detected
        #
        # @overload transfer(call_control_id, to:, answering_machine_detection: nil, answering_machine_detection_config: nil, audio_url: nil, client_state: nil, command_id: nil, custom_headers: nil, early_media: nil, from: nil, from_display_name: nil, media_encryption: nil, media_name: nil, mute_dtmf: nil, park_after_unbridge: nil, record: nil, record_channels: nil, record_custom_file_name: nil, record_format: nil, record_max_length: nil, record_timeout_secs: nil, record_track: nil, record_trim: nil, sip_auth_password: nil, sip_auth_username: nil, sip_headers: nil, sip_region: nil, sip_transport_protocol: nil, sound_modifications: nil, target_leg_client_state: nil, time_limit_secs: nil, timeout_secs: nil, webhook_url: nil, webhook_url_method: nil, request_options: {})
        #
        # @param call_control_id [String] Unique identifier and token for controlling the call
        #
        # @param to [String] The DID or SIP URI to dial out to.
        #
        # @param answering_machine_detection [Symbol, Telnyx::Models::Calls::ActionTransferParams::AnsweringMachineDetection] Enables Answering Machine Detection. When a call is answered, Telnyx runs real-t
        #
        # @param answering_machine_detection_config [Telnyx::Models::Calls::ActionTransferParams::AnsweringMachineDetectionConfig] Optional configuration parameters to modify 'answering_machine_detection' perfor
        #
        # @param audio_url [String] The URL of a file to be played back when the transfer destination answers before
        #
        # @param client_state [String] Use this field to add state to every subsequent webhook. It must be a valid Base
        #
        # @param command_id [String] Use this field to avoid duplicate commands. Telnyx will ignore any command with
        #
        # @param custom_headers [Array<Telnyx::Models::CustomSipHeader>] Custom headers to be added to the SIP INVITE.
        #
        # @param early_media [Boolean] If set to false, early media will not be passed to the originating leg.
        #
        # @param from [String] The `from` number to be used as the caller id presented to the destination (`to`
        #
        # @param from_display_name [String] The `from_display_name` string to be used as the caller id name (SIP From Displa
        #
        # @param media_encryption [Symbol, Telnyx::Models::Calls::ActionTransferParams::MediaEncryption] Defines whether media should be encrypted on the new call leg.
        #
        # @param media_name [String] The media_name of a file to be played back when the transfer destination answers
        #
        # @param mute_dtmf [Symbol, Telnyx::Models::Calls::ActionTransferParams::MuteDtmf] When enabled, DTMF tones are not passed to the call participant. The webhooks co
        #
        # @param park_after_unbridge [String] Specifies behavior after the bridge ends (i.e. the opposite leg either hangs up
        #
        # @param record [Symbol, Telnyx::Models::Calls::ActionTransferParams::Record] Start recording automatically after an event. Disabled by default.
        #
        # @param record_channels [Symbol, Telnyx::Models::Calls::ActionTransferParams::RecordChannels] Defines which channel should be recorded ('single' or 'dual') when `record` is s
        #
        # @param record_custom_file_name [String] The custom recording file name to be used instead of the default `call_leg_id`.
        #
        # @param record_format [Symbol, Telnyx::Models::Calls::ActionTransferParams::RecordFormat] Defines the format of the recording ('wav' or 'mp3') when `record` is specified.
        #
        # @param record_max_length [Integer] Defines the maximum length for the recording in seconds when `record` is specifi
        #
        # @param record_timeout_secs [Integer] The number of seconds that Telnyx will wait for the recording to be stopped if s
        #
        # @param record_track [Symbol, Telnyx::Models::Calls::ActionTransferParams::RecordTrack] The audio track to be recorded. Can be either `both`, `inbound` or `outbound`. I
        #
        # @param record_trim [Symbol, Telnyx::Models::Calls::ActionTransferParams::RecordTrim] When set to `trim-silence`, silence will be removed from the beginning and end o
        #
        # @param sip_auth_password [String] SIP Authentication password used for SIP challenges.
        #
        # @param sip_auth_username [String] SIP Authentication username used for SIP challenges.
        #
        # @param sip_headers [Array<Telnyx::Models::SipHeader>] SIP headers to be added to the SIP INVITE. Currently only User-to-User header is
        #
        # @param sip_region [Symbol, Telnyx::Models::Calls::ActionTransferParams::SipRegion] Defines the SIP region to be used for the call.
        #
        # @param sip_transport_protocol [Symbol, Telnyx::Models::Calls::ActionTransferParams::SipTransportProtocol] Defines SIP transport protocol to be used on the call.
        #
        # @param sound_modifications [Telnyx::Models::SoundModifications] Use this field to modify sound effects, for example adjust the pitch.
        #
        # @param target_leg_client_state [String] Use this field to add state to every subsequent webhook for the new leg. It must
        #
        # @param time_limit_secs [Integer] Sets the maximum duration of a Call Control Leg in seconds. If the time limit is
        #
        # @param timeout_secs [Integer] The number of seconds that Telnyx will wait for the call to be answered by the d
        #
        # @param webhook_url [String] Use this field to override the URL for which Telnyx will send subsequent webhook
        #
        # @param webhook_url_method [Symbol, Telnyx::Models::Calls::ActionTransferParams::WebhookURLMethod] HTTP request type used for `webhook_url`.
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Calls::ActionTransferResponse]
        #
        # @see Telnyx::Models::Calls::ActionTransferParams
        def transfer(call_control_id, params)
          parsed, options = Telnyx::Calls::ActionTransferParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["calls/%1$s/actions/transfer", call_control_id],
            body: parsed,
            model: Telnyx::Models::Calls::ActionTransferResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::Calls::ActionUpdateClientStateParams} for more details.
        #
        # Updates client state
        #
        # @overload update_client_state(call_control_id, client_state:, request_options: {})
        #
        # @param call_control_id [String] Unique identifier and token for controlling the call
        #
        # @param client_state [String] Use this field to add state to every subsequent webhook. It must be a valid Base
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Calls::ActionUpdateClientStateResponse]
        #
        # @see Telnyx::Models::Calls::ActionUpdateClientStateParams
        def update_client_state(call_control_id, params)
          parsed, options = Telnyx::Calls::ActionUpdateClientStateParams.dump_request(params)
          @client.request(
            method: :put,
            path: ["calls/%1$s/actions/client_state_update", call_control_id],
            body: parsed,
            model: Telnyx::Models::Calls::ActionUpdateClientStateResponse,
            options: options
          )
        end

        # @api private
        #
        # @param client [Telnyx::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end

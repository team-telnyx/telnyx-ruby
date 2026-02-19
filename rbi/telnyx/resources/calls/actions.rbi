# typed: strong

module Telnyx
  module Resources
    class Calls
      class Actions
        # Add messages to the conversation started by an AI assistant on the call.
        sig do
          params(
            call_control_id: String,
            client_state: String,
            command_id: String,
            messages:
              T::Array[
                T.any(
                  Telnyx::Calls::ActionAddAIAssistantMessagesParams::Message::User::OrHash,
                  Telnyx::Calls::ActionAddAIAssistantMessagesParams::Message::Assistant::OrHash,
                  Telnyx::Calls::ActionAddAIAssistantMessagesParams::Message::Tool::OrHash,
                  Telnyx::Calls::ActionAddAIAssistantMessagesParams::Message::System::OrHash,
                  Telnyx::Calls::ActionAddAIAssistantMessagesParams::Message::Developer::OrHash
                )
              ],
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::Calls::ActionAddAIAssistantMessagesResponse)
        end
        def add_ai_assistant_messages(
          # Unique identifier and token for controlling the call
          call_control_id,
          # Use this field to add state to every subsequent webhook. It must be a valid
          # Base-64 encoded string.
          client_state: nil,
          # Use this field to avoid duplicate commands. Telnyx will ignore any command with
          # the same `command_id` for the same `call_control_id`.
          command_id: nil,
          # The messages to add to the conversation.
          messages: nil,
          request_options: {}
        )
        end

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
        sig do
          params(
            call_control_id: String,
            billing_group_id: String,
            client_state: String,
            command_id: String,
            custom_headers: T::Array[Telnyx::CustomSipHeader::OrHash],
            preferred_codecs:
              Telnyx::Calls::ActionAnswerParams::PreferredCodecs::OrSymbol,
            record: Telnyx::Calls::ActionAnswerParams::Record::OrSymbol,
            record_channels:
              Telnyx::Calls::ActionAnswerParams::RecordChannels::OrSymbol,
            record_custom_file_name: String,
            record_format:
              Telnyx::Calls::ActionAnswerParams::RecordFormat::OrSymbol,
            record_max_length: Integer,
            record_timeout_secs: Integer,
            record_track:
              Telnyx::Calls::ActionAnswerParams::RecordTrack::OrSymbol,
            record_trim:
              Telnyx::Calls::ActionAnswerParams::RecordTrim::OrSymbol,
            send_silence_when_idle: T::Boolean,
            sip_headers: T::Array[Telnyx::SipHeader::OrHash],
            sound_modifications: Telnyx::SoundModifications::OrHash,
            stream_bidirectional_codec:
              Telnyx::StreamBidirectionalCodec::OrSymbol,
            stream_bidirectional_mode:
              Telnyx::StreamBidirectionalMode::OrSymbol,
            stream_bidirectional_target_legs:
              Telnyx::StreamBidirectionalTargetLegs::OrSymbol,
            stream_codec: Telnyx::StreamCodec::OrSymbol,
            stream_track:
              Telnyx::Calls::ActionAnswerParams::StreamTrack::OrSymbol,
            stream_url: String,
            transcription: T::Boolean,
            transcription_config:
              Telnyx::Calls::TranscriptionStartRequest::OrHash,
            webhook_url: String,
            webhook_url_method:
              Telnyx::Calls::ActionAnswerParams::WebhookURLMethod::OrSymbol,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::Calls::ActionAnswerResponse)
        end
        def answer(
          # Unique identifier and token for controlling the call
          call_control_id,
          # Use this field to set the Billing Group ID for the call. Must be a valid and
          # existing Billing Group ID.
          billing_group_id: nil,
          # Use this field to add state to every subsequent webhook. It must be a valid
          # Base-64 encoded string.
          client_state: nil,
          # Use this field to avoid duplicate commands. Telnyx will ignore any command with
          # the same `command_id` for the same `call_control_id`.
          command_id: nil,
          # Custom headers to be added to the SIP INVITE response.
          custom_headers: nil,
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
          # SIP headers to be added to the SIP INVITE response. Currently only User-to-User
          # header is supported.
          sip_headers: nil,
          # Use this field to modify sound effects, for example adjust the pitch.
          sound_modifications: nil,
          # Indicates codec for bidirectional streaming RTP payloads. Used only with
          # stream_bidirectional_mode=rtp. Case sensitive.
          stream_bidirectional_codec: nil,
          # Configures method of bidirectional streaming (mp3, rtp).
          stream_bidirectional_mode: nil,
          # Specifies which call legs should receive the bidirectional stream audio.
          stream_bidirectional_target_legs: nil,
          # Specifies the codec to be used for the streamed audio. When set to 'default' or
          # when transcoding is not possible, the codec from the call will be used.
          stream_codec: nil,
          # Specifies which track should be streamed.
          stream_track: nil,
          # The destination WebSocket address where the stream is going to be delivered.
          stream_url: nil,
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

        # Bridge two call control calls.
        #
        # **Expected Webhooks:**
        #
        # - `call.bridged` for Leg A
        # - `call.bridged` for Leg B
        sig do
          params(
            call_control_id_to_bridge: String,
            call_control_id_to_bridge_with: String,
            client_state: String,
            command_id: String,
            mute_dtmf: Telnyx::Calls::ActionBridgeParams::MuteDtmf::OrSymbol,
            park_after_unbridge: String,
            play_ringtone: T::Boolean,
            queue: String,
            record: Telnyx::Calls::ActionBridgeParams::Record::OrSymbol,
            record_channels:
              Telnyx::Calls::ActionBridgeParams::RecordChannels::OrSymbol,
            record_custom_file_name: String,
            record_format:
              Telnyx::Calls::ActionBridgeParams::RecordFormat::OrSymbol,
            record_max_length: Integer,
            record_timeout_secs: Integer,
            record_track:
              Telnyx::Calls::ActionBridgeParams::RecordTrack::OrSymbol,
            record_trim:
              Telnyx::Calls::ActionBridgeParams::RecordTrim::OrSymbol,
            ringtone: Telnyx::Calls::ActionBridgeParams::Ringtone::OrSymbol,
            video_room_context: String,
            video_room_id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::Calls::ActionBridgeResponse)
        end
        def bridge(
          # Unique identifier and token for controlling the call
          call_control_id_to_bridge,
          # The Call Control ID of the call you want to bridge with, can't be used together
          # with queue parameter or video_room_id parameter.
          call_control_id_to_bridge_with:,
          # Use this field to add state to every subsequent webhook. It must be a valid
          # Base-64 encoded string.
          client_state: nil,
          # Use this field to avoid duplicate commands. Telnyx will ignore any command with
          # the same `command_id` for the same `call_control_id`.
          command_id: nil,
          # When enabled, DTMF tones are not passed to the call participant. The webhooks
          # containing the DTMF information will be sent.
          mute_dtmf: nil,
          # Specifies behavior after the bridge ends (i.e. the opposite leg either hangs up
          # or is transferred). If supplied with the value `self`, the current leg will be
          # parked after unbridge. If not set, the default behavior is to hang up the leg.
          park_after_unbridge: nil,
          # Specifies whether to play a ringtone if the call you want to bridge with has not
          # yet been answered.
          play_ringtone: nil,
          # The name of the queue you want to bridge with, can't be used together with
          # call_control_id parameter or video_room_id parameter. Bridging with a queue
          # means bridging with the first call in the queue. The call will always be removed
          # from the queue regardless of whether bridging succeeds. Returns an error when
          # the queue is empty.
          queue: nil,
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
          # Specifies which country ringtone to play when `play_ringtone` is set to `true`.
          # If not set, the US ringtone will be played.
          ringtone: nil,
          # The additional parameter that will be passed to the video conference. It is a
          # text field and the user can decide how to use it. For example, you can set the
          # participant name or pass JSON text. It can be used only with video_room_id
          # parameter.
          video_room_context: nil,
          # The ID of the video room you want to bridge with, can't be used together with
          # call_control_id parameter or queue parameter.
          video_room_id: nil,
          request_options: {}
        )
        end

        # Put the call in a queue.
        sig do
          params(
            call_control_id: String,
            queue_name: String,
            client_state: String,
            command_id: String,
            keep_after_hangup: T::Boolean,
            max_size: Integer,
            max_wait_time_secs: Integer,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::Calls::ActionEnqueueResponse)
        end
        def enqueue(
          # Unique identifier and token for controlling the call
          call_control_id,
          # The name of the queue the call should be put in. If a queue with a given name
          # doesn't exist yet it will be created.
          queue_name:,
          # Use this field to add state to every subsequent webhook. It must be a valid
          # Base-64 encoded string.
          client_state: nil,
          # Use this field to avoid duplicate commands. Telnyx will ignore any command with
          # the same `command_id` for the same `call_control_id`.
          command_id: nil,
          # If set to true, the call will remain in the queue after hangup. In this case
          # bridging to such call will fail with necessary information needed to
          # re-establish the call.
          keep_after_hangup: nil,
          # The maximum number of calls allowed in the queue at a given time. Can't be
          # modified for an existing queue.
          max_size: nil,
          # The number of seconds after which the call will be removed from the queue.
          max_wait_time_secs: nil,
          request_options: {}
        )
        end

        # Gather DTMF signals to build interactive menus.
        #
        # You can pass a list of valid digits. The `Answer` command must be issued before
        # the `gather` command.
        #
        # **Expected Webhooks:**
        #
        # - `call.dtmf.received` (you may receive many of these webhooks)
        # - `call.gather.ended`
        sig do
          params(
            call_control_id: String,
            client_state: String,
            command_id: String,
            gather_id: String,
            initial_timeout_millis: Integer,
            inter_digit_timeout_millis: Integer,
            maximum_digits: Integer,
            minimum_digits: Integer,
            terminating_digit: String,
            timeout_millis: Integer,
            valid_digits: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::Calls::ActionGatherResponse)
        end
        def gather(
          # Unique identifier and token for controlling the call
          call_control_id,
          # Use this field to add state to every subsequent webhook. It must be a valid
          # Base-64 encoded string.
          client_state: nil,
          # Use this field to avoid duplicate commands. Telnyx will ignore any command with
          # the same `command_id` for the same `call_control_id`.
          command_id: nil,
          # An id that will be sent back in the corresponding `call.gather.ended` webhook.
          # Will be randomly generated if not specified.
          gather_id: nil,
          # The number of milliseconds to wait for the first DTMF.
          initial_timeout_millis: nil,
          # The number of milliseconds to wait for input between digits.
          inter_digit_timeout_millis: nil,
          # The maximum number of digits to fetch. This parameter has a maximum value
          # of 128.
          maximum_digits: nil,
          # The minimum number of digits to fetch. This parameter has a minimum value of 1.
          minimum_digits: nil,
          # The digit used to terminate input if fewer than `maximum_digits` digits have
          # been gathered.
          terminating_digit: nil,
          # The number of milliseconds to wait to complete the request.
          timeout_millis: nil,
          # A list of all digits accepted as valid.
          valid_digits: nil,
          request_options: {}
        )
        end

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
        sig do
          params(
            call_control_id: String,
            parameters: T::Hash[Symbol, T.anything],
            assistant: Telnyx::AI::Assistant::OrHash,
            client_state: String,
            command_id: String,
            gather_ended_speech: String,
            greeting: String,
            interruption_settings: Telnyx::Calls::InterruptionSettings::OrHash,
            language: Telnyx::Calls::GoogleTranscriptionLanguage::OrSymbol,
            message_history:
              T::Array[
                Telnyx::Calls::ActionGatherUsingAIParams::MessageHistory::OrHash
              ],
            send_message_history_updates: T::Boolean,
            send_partial_results: T::Boolean,
            transcription: Telnyx::Calls::TranscriptionConfig::OrHash,
            user_response_timeout_ms: Integer,
            voice: String,
            voice_settings:
              T.any(
                Telnyx::Calls::ElevenLabsVoiceSettings::OrHash,
                Telnyx::Calls::TelnyxVoiceSettings::OrHash,
                Telnyx::Calls::AwsVoiceSettings::OrHash
              ),
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::Calls::ActionGatherUsingAIResponse)
        end
        def gather_using_ai(
          # Unique identifier and token for controlling the call
          call_control_id,
          # The parameters described as a JSON Schema object that needs to be gathered by
          # the voice assistant. See the
          # [JSON Schema reference](https://json-schema.org/understanding-json-schema) for
          # documentation about the format
          parameters:,
          # Assistant configuration including choice of LLM, custom instructions, and tools.
          assistant: nil,
          # Use this field to add state to every subsequent webhook. It must be a valid
          # Base-64 encoded string.
          client_state: nil,
          # Use this field to avoid duplicate commands. Telnyx will ignore any command with
          # the same `command_id` for the same `call_control_id`.
          command_id: nil,
          # Text that will be played when the gathering has finished. There is a 3,000
          # character limit.
          gather_ended_speech: nil,
          # Text that will be played when the gathering starts, if none then nothing will be
          # played when the gathering starts. The greeting can be text for any voice or SSML
          # for `AWS.Polly.<voice_id>` voices. There is a 3,000 character limit.
          greeting: nil,
          # Settings for handling user interruptions during assistant speech
          interruption_settings: nil,
          # Language to use for speech recognition
          language: nil,
          # The message history you want the voice assistant to be aware of, this can be
          # useful to keep the context of the conversation, or to pass additional
          # information to the voice assistant.
          message_history: nil,
          # Default is `false`. If set to `true`, the voice assistant will send updates to
          # the message history via the `call.ai_gather.message_history_updated` callback in
          # real time as the message history is updated.
          send_message_history_updates: nil,
          # Default is `false`. If set to `true`, the voice assistant will send partial
          # results via the `call.ai_gather.partial_results` callback in real time as
          # individual fields are gathered. If set to `false`, the voice assistant will only
          # send the final result via the `call.ai_gather.ended` callback.
          send_partial_results: nil,
          # The settings associated with speech to text for the voice assistant. This is
          # only relevant if the assistant uses a text-to-text language model. Any assistant
          # using a model with native audio support (e.g. `fixie-ai/ultravox-v0_4`) will
          # ignore this field.
          transcription: nil,
          # The maximum time in milliseconds to wait for user response before timing out.
          user_response_timeout_ms: nil,
          # The voice to be used by the voice assistant. Currently we support ElevenLabs,
          # Telnyx and AWS voices.
          #
          # **Supported Providers:**
          #
          # - **AWS:** Use `AWS.Polly.<VoiceId>` (e.g., `AWS.Polly.Joanna`). For neural
          #   voices, which provide more realistic, human-like speech, append `-Neural` to
          #   the `VoiceId` (e.g., `AWS.Polly.Joanna-Neural`). Check the
          #   [available voices](https://docs.aws.amazon.com/polly/latest/dg/available-voices.html)
          #   for compatibility.
          # - **Azure:** Use `Azure.<VoiceId>. (e.g. Azure.en-CA-ClaraNeural,
          #   Azure.en-CA-LiamNeural, Azure.en-US-BrianMultilingualNeural,
          #   Azure.en-US-Ava:DragonHDLatestNeural. For a complete list of voices, go to
          #   [Azure Voice Gallery](https://speech.microsoft.com/portal/voicegallery).)
          # - **ElevenLabs:** Use `ElevenLabs.<ModelId>.<VoiceId>` (e.g.,
          #   `ElevenLabs.BaseModel.John`). The `ModelId` part is optional. To use
          #   ElevenLabs, you must provide your ElevenLabs API key as an integration secret
          #   under `"voice_settings": {"api_key_ref": "<secret_id>"}`. See
          #   [integration secrets documentation](https://developers.telnyx.com/api/secrets-manager/integration-secrets/create-integration-secret)
          #   for details. Check
          #   [available voices](https://elevenlabs.io/docs/api-reference/get-voices).
          # - **Telnyx:** Use `Telnyx.<model_id>.<voice_id>`
          voice: nil,
          # The settings associated with the voice selected
          voice_settings: nil,
          request_options: {}
        )
        end

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
        sig do
          params(
            call_control_id: String,
            audio_url: String,
            client_state: String,
            command_id: String,
            inter_digit_timeout_millis: Integer,
            invalid_audio_url: String,
            invalid_media_name: String,
            maximum_digits: Integer,
            maximum_tries: Integer,
            media_name: String,
            minimum_digits: Integer,
            terminating_digit: String,
            timeout_millis: Integer,
            valid_digits: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::Calls::ActionGatherUsingAudioResponse)
        end
        def gather_using_audio(
          # Unique identifier and token for controlling the call
          call_control_id,
          # The URL of a file to be played back at the beginning of each prompt. The URL can
          # point to either a WAV or MP3 file. media_name and audio_url cannot be used
          # together in one request.
          audio_url: nil,
          # Use this field to add state to every subsequent webhook. It must be a valid
          # Base-64 encoded string.
          client_state: nil,
          # Use this field to avoid duplicate commands. Telnyx will ignore any command with
          # the same `command_id` for the same `call_control_id`.
          command_id: nil,
          # The number of milliseconds to wait for input between digits.
          inter_digit_timeout_millis: nil,
          # The URL of a file to play when digits don't match the `valid_digits` parameter
          # or the number of digits is not between `min` and `max`. The URL can point to
          # either a WAV or MP3 file. invalid_media_name and invalid_audio_url cannot be
          # used together in one request.
          invalid_audio_url: nil,
          # The media_name of a file to be played back when digits don't match the
          # `valid_digits` parameter or the number of digits is not between `min` and `max`.
          # The media_name must point to a file previously uploaded to
          # api.telnyx.com/v2/media by the same user/organization. The file must either be a
          # WAV or MP3 file.
          invalid_media_name: nil,
          # The maximum number of digits to fetch. This parameter has a maximum value
          # of 128.
          maximum_digits: nil,
          # The maximum number of times the file should be played if there is no input from
          # the user on the call.
          maximum_tries: nil,
          # The media_name of a file to be played back at the beginning of each prompt. The
          # media_name must point to a file previously uploaded to api.telnyx.com/v2/media
          # by the same user/organization. The file must either be a WAV or MP3 file.
          media_name: nil,
          # The minimum number of digits to fetch. This parameter has a minimum value of 1.
          minimum_digits: nil,
          # The digit used to terminate input if fewer than `maximum_digits` digits have
          # been gathered.
          terminating_digit: nil,
          # The number of milliseconds to wait for a DTMF response after file playback ends
          # before a replaying the sound file.
          timeout_millis: nil,
          # A list of all digits accepted as valid.
          valid_digits: nil,
          request_options: {}
        )
        end

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
        sig do
          params(
            call_control_id: String,
            payload: String,
            voice: String,
            client_state: String,
            command_id: String,
            inter_digit_timeout_millis: Integer,
            invalid_payload: String,
            language:
              Telnyx::Calls::ActionGatherUsingSpeakParams::Language::OrSymbol,
            maximum_digits: Integer,
            maximum_tries: Integer,
            minimum_digits: Integer,
            payload_type:
              Telnyx::Calls::ActionGatherUsingSpeakParams::PayloadType::OrSymbol,
            service_level:
              Telnyx::Calls::ActionGatherUsingSpeakParams::ServiceLevel::OrSymbol,
            terminating_digit: String,
            timeout_millis: Integer,
            valid_digits: String,
            voice_settings:
              T.any(
                Telnyx::Calls::ElevenLabsVoiceSettings::OrHash,
                Telnyx::Calls::TelnyxVoiceSettings::OrHash,
                Telnyx::Calls::AwsVoiceSettings::OrHash,
                Telnyx::Calls::ActionGatherUsingSpeakParams::VoiceSettings::Minimax::OrHash
              ),
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::Calls::ActionGatherUsingSpeakResponse)
        end
        def gather_using_speak(
          # Unique identifier and token for controlling the call
          call_control_id,
          # The text or SSML to be converted into speech. There is a 3,000 character limit.
          payload:,
          # Specifies the voice used in speech synthesis.
          #
          # - Define voices using the format `<Provider>.<Model>.<VoiceId>`. Specifying only
          #   the provider will give default values for voice_id and model_id.
          #
          #   **Supported Providers:**
          #
          # - **AWS:** Use `AWS.Polly.<VoiceId>` (e.g., `AWS.Polly.Joanna`). For neural
          #   voices, which provide more realistic, human-like speech, append `-Neural` to
          #   the `VoiceId` (e.g., `AWS.Polly.Joanna-Neural`). Check the
          #   [available voices](https://docs.aws.amazon.com/polly/latest/dg/available-voices.html)
          #   for compatibility.
          # - **Azure:** Use `Azure.<VoiceId>. (e.g. Azure.en-CA-ClaraNeural,
          #   Azure.en-CA-LiamNeural, Azure.en-US-BrianMultilingualNeural,
          #   Azure.en-US-Ava:DragonHDLatestNeural. For a complete list of voices, go to
          #   [Azure Voice Gallery](https://speech.microsoft.com/portal/voicegallery).)
          # - **ElevenLabs:** Use `ElevenLabs.<ModelId>.<VoiceId>` (e.g.,
          #   `ElevenLabs.eleven_multilingual_v2.21m00Tcm4TlvDq8ikWAM`). The `ModelId` part
          #   is optional. To use ElevenLabs, you must provide your ElevenLabs API key as an
          #   integration identifier secret in
          #   `"voice_settings": {"api_key_ref": "<secret_identifier>"}`. Check
          #   [available voices](https://elevenlabs.io/docs/api-reference/get-voices).
          # - **Telnyx:** Use `Telnyx.<model_id>.<voice_id>`
          # - **Minimax:** Use `Minimax.<ModelId>.<VoiceId>` (e.g.,
          #   `Minimax.speech-02-hd.Wise_Woman`). Supported models: `speech-02-turbo`,
          #   `speech-02-hd`, `speech-2.6-turbo`, `speech-2.8-turbo`. Optional parameters:
          #   `speed` (float, default 1.0), `vol` (float, default 1.0), `pitch` (integer,
          #   default 0).
          # - **Resemble:** Use `Resemble.<ModelId>.<VoiceId>` (e.g.,
          #   `Resemble.Pro.my_voice`). Supported models: `Pro` (multilingual) and `Turbo`
          #   (English only).
          voice:,
          # Use this field to add state to every subsequent webhook. It must be a valid
          # Base-64 encoded string.
          client_state: nil,
          # Use this field to avoid duplicate commands. Telnyx will ignore any command with
          # the same `command_id` for the same `call_control_id`.
          command_id: nil,
          # The number of milliseconds to wait for input between digits.
          inter_digit_timeout_millis: nil,
          # The text or SSML to be converted into speech when digits don't match the
          # `valid_digits` parameter or the number of digits is not between `min` and `max`.
          # There is a 3,000 character limit.
          invalid_payload: nil,
          # The language you want spoken. This parameter is ignored when a `Polly.*` voice
          # is specified.
          language: nil,
          # The maximum number of digits to fetch. This parameter has a maximum value
          # of 128.
          maximum_digits: nil,
          # The maximum number of times that a file should be played back if there is no
          # input from the user on the call.
          maximum_tries: nil,
          # The minimum number of digits to fetch. This parameter has a minimum value of 1.
          minimum_digits: nil,
          # The type of the provided payload. The payload can either be plain text, or
          # Speech Synthesis Markup Language (SSML).
          payload_type: nil,
          # This parameter impacts speech quality, language options and payload types. When
          # using `basic`, only the `en-US` language and payload type `text` are allowed.
          service_level: nil,
          # The digit used to terminate input if fewer than `maximum_digits` digits have
          # been gathered.
          terminating_digit: nil,
          # The number of milliseconds to wait for a DTMF response after speak ends before a
          # replaying the sound file.
          timeout_millis: nil,
          # A list of all digits accepted as valid.
          valid_digits: nil,
          # The settings associated with the voice selected
          voice_settings: nil,
          request_options: {}
        )
        end

        # Hang up the call.
        #
        # **Expected Webhooks:**
        #
        # - `call.hangup`
        # - `call.recording.saved`
        sig do
          params(
            call_control_id: String,
            client_state: String,
            command_id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::Calls::ActionHangupResponse)
        end
        def hangup(
          # Unique identifier and token for controlling the call
          call_control_id,
          # Use this field to add state to every subsequent webhook. It must be a valid
          # Base-64 encoded string.
          client_state: nil,
          # Use this field to avoid duplicate commands. Telnyx will ignore any command with
          # the same `command_id` for the same `call_control_id`.
          command_id: nil,
          request_options: {}
        )
        end

        # Removes the call from a queue.
        sig do
          params(
            call_control_id: String,
            client_state: String,
            command_id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::Calls::ActionLeaveQueueResponse)
        end
        def leave_queue(
          # Unique identifier and token for controlling the call
          call_control_id,
          # Use this field to add state to every subsequent webhook. It must be a valid
          # Base-64 encoded string.
          client_state: nil,
          # Use this field to avoid duplicate commands. Telnyx will ignore any command with
          # the same `command_id` for the same `call_control_id`.
          command_id: nil,
          request_options: {}
        )
        end

        # Pause recording the call. Recording can be resumed via Resume recording command.
        #
        # **Expected Webhooks:**
        #
        # There are no webhooks associated with this command.
        sig do
          params(
            call_control_id: String,
            client_state: String,
            command_id: String,
            recording_id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::Calls::ActionPauseRecordingResponse)
        end
        def pause_recording(
          # Unique identifier and token for controlling the call
          call_control_id,
          # Use this field to add state to every subsequent webhook. It must be a valid
          # Base-64 encoded string.
          client_state: nil,
          # Use this field to avoid duplicate commands. Telnyx will ignore any command with
          # the same `command_id` for the same `call_control_id`.
          command_id: nil,
          # Uniquely identifies the resource.
          recording_id: nil,
          request_options: {}
        )
        end

        # Initiate a SIP Refer on a Call Control call. You can initiate a SIP Refer at any
        # point in the duration of a call.
        #
        # **Expected Webhooks:**
        #
        # - `call.refer.started`
        # - `call.refer.completed`
        # - `call.refer.failed`
        sig do
          params(
            call_control_id: String,
            sip_address: String,
            client_state: String,
            command_id: String,
            custom_headers: T::Array[Telnyx::CustomSipHeader::OrHash],
            sip_auth_password: String,
            sip_auth_username: String,
            sip_headers: T::Array[Telnyx::SipHeader::OrHash],
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::Calls::ActionReferResponse)
        end
        def refer(
          # Unique identifier and token for controlling the call
          call_control_id,
          # The SIP URI to which the call will be referred to.
          sip_address:,
          # Use this field to add state to every subsequent webhook. It must be a valid
          # Base-64 encoded string.
          client_state: nil,
          # Use this field to avoid execution of duplicate commands. Telnyx will ignore
          # subsequent commands with the same `command_id` as one that has already been
          # executed.
          command_id: nil,
          # Custom headers to be added to the SIP INVITE.
          custom_headers: nil,
          # SIP Authentication password used for SIP challenges.
          sip_auth_password: nil,
          # SIP Authentication username used for SIP challenges.
          sip_auth_username: nil,
          # SIP headers to be added to the request. Currently only User-to-User header is
          # supported.
          sip_headers: nil,
          request_options: {}
        )
        end

        # Reject an incoming call.
        #
        # **Expected Webhooks:**
        #
        # - `call.hangup`
        sig do
          params(
            call_control_id: String,
            cause: Telnyx::Calls::ActionRejectParams::Cause::OrSymbol,
            client_state: String,
            command_id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::Calls::ActionRejectResponse)
        end
        def reject(
          # Unique identifier and token for controlling the call
          call_control_id,
          # Cause for call rejection.
          cause:,
          # Use this field to add state to every subsequent webhook. It must be a valid
          # Base-64 encoded string.
          client_state: nil,
          # Use this field to avoid duplicate commands. Telnyx will ignore any command with
          # the same `command_id` for the same `call_control_id`.
          command_id: nil,
          request_options: {}
        )
        end

        # Resume recording the call.
        #
        # **Expected Webhooks:**
        #
        # There are no webhooks associated with this command.
        sig do
          params(
            call_control_id: String,
            client_state: String,
            command_id: String,
            recording_id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::Calls::ActionResumeRecordingResponse)
        end
        def resume_recording(
          # Unique identifier and token for controlling the call
          call_control_id,
          # Use this field to add state to every subsequent webhook. It must be a valid
          # Base-64 encoded string.
          client_state: nil,
          # Use this field to avoid duplicate commands. Telnyx will ignore any command with
          # the same `command_id` for the same `call_control_id`.
          command_id: nil,
          # Uniquely identifies the resource.
          recording_id: nil,
          request_options: {}
        )
        end

        # Sends DTMF tones from this leg. DTMF tones will be heard by the other end of the
        # call.
        #
        # **Expected Webhooks:**
        #
        # There are no webhooks associated with this command.
        sig do
          params(
            call_control_id: String,
            digits: String,
            client_state: String,
            command_id: String,
            duration_millis: Integer,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::Calls::ActionSendDtmfResponse)
        end
        def send_dtmf(
          # Unique identifier and token for controlling the call
          call_control_id,
          # DTMF digits to send. Valid digits are 0-9, A-D, \*, and #. Pauses can be added
          # using w (0.5s) and W (1s).
          digits:,
          # Use this field to add state to every subsequent webhook. It must be a valid
          # Base-64 encoded string.
          client_state: nil,
          # Use this field to avoid duplicate commands. Telnyx will ignore any command with
          # the same `command_id` for the same `call_control_id`.
          command_id: nil,
          # Specifies for how many milliseconds each digit will be played in the audio
          # stream. Ranges from 100 to 500ms
          duration_millis: nil,
          request_options: {}
        )
        end

        # Sends SIP info from this leg.
        #
        # **Expected Webhooks:**
        #
        # - `call.sip_info.received` (to be received on the target call leg)
        sig do
          params(
            call_control_id: String,
            body: String,
            content_type: String,
            client_state: String,
            command_id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::Calls::ActionSendSipInfoResponse)
        end
        def send_sip_info(
          # Unique identifier and token for controlling the call
          call_control_id,
          # Content of the SIP INFO
          body:,
          # Content type of the INFO body. Must be MIME type compliant. There is a 1,400
          # bytes limit
          content_type:,
          # Use this field to add state to every subsequent webhook. It must be a valid
          # Base-64 encoded string.
          client_state: nil,
          # Use this field to avoid duplicate commands. Telnyx will ignore any command with
          # the same `command_id` for the same `call_control_id`.
          command_id: nil,
          request_options: {}
        )
        end

        # Convert text to speech and play it back on the call. If multiple speak text
        # commands are issued consecutively, the audio files will be placed in a queue
        # awaiting playback.
        #
        # **Expected Webhooks:**
        #
        # - `call.speak.started`
        # - `call.speak.ended`
        sig do
          params(
            call_control_id: String,
            payload: String,
            voice: String,
            client_state: String,
            command_id: String,
            language: Telnyx::Calls::ActionSpeakParams::Language::OrSymbol,
            loop_: Telnyx::Calls::Loopcount::Variants,
            payload_type:
              Telnyx::Calls::ActionSpeakParams::PayloadType::OrSymbol,
            service_level:
              Telnyx::Calls::ActionSpeakParams::ServiceLevel::OrSymbol,
            stop: String,
            target_legs: Telnyx::Calls::ActionSpeakParams::TargetLegs::OrSymbol,
            voice_settings:
              T.any(
                Telnyx::Calls::ElevenLabsVoiceSettings::OrHash,
                Telnyx::Calls::TelnyxVoiceSettings::OrHash,
                Telnyx::Calls::AwsVoiceSettings::OrHash,
                Telnyx::Calls::ActionSpeakParams::VoiceSettings::Minimax::OrHash
              ),
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::Calls::ActionSpeakResponse)
        end
        def speak(
          # Unique identifier and token for controlling the call
          call_control_id,
          # The text or SSML to be converted into speech. There is a 3,000 character limit.
          payload:,
          # Specifies the voice used in speech synthesis.
          #
          # - Define voices using the format `<Provider>.<Model>.<VoiceId>`. Specifying only
          #   the provider will give default values for voice_id and model_id.
          #
          #   **Supported Providers:**
          #
          # - **AWS:** Use `AWS.Polly.<VoiceId>` (e.g., `AWS.Polly.Joanna`). For neural
          #   voices, which provide more realistic, human-like speech, append `-Neural` to
          #   the `VoiceId` (e.g., `AWS.Polly.Joanna-Neural`). Check the
          #   [available voices](https://docs.aws.amazon.com/polly/latest/dg/available-voices.html)
          #   for compatibility.
          # - **Azure:** Use `Azure.<VoiceId>. (e.g. Azure.en-CA-ClaraNeural,
          #   Azure.en-CA-LiamNeural, Azure.en-US-BrianMultilingualNeural,
          #   Azure.en-US-Ava:DragonHDLatestNeural. For a complete list of voices, go to
          #   [Azure Voice Gallery](https://speech.microsoft.com/portal/voicegallery).)
          # - **ElevenLabs:** Use `ElevenLabs.<ModelId>.<VoiceId>` (e.g.,
          #   `ElevenLabs.eleven_multilingual_v2.21m00Tcm4TlvDq8ikWAM`). The `ModelId` part
          #   is optional. To use ElevenLabs, you must provide your ElevenLabs API key as an
          #   integration identifier secret in
          #   `"voice_settings": {"api_key_ref": "<secret_identifier>"}`. Check
          #   [available voices](https://elevenlabs.io/docs/api-reference/get-voices).
          # - **Telnyx:** Use `Telnyx.<model_id>.<voice_id>`
          # - **Minimax:** Use `Minimax.<ModelId>.<VoiceId>` (e.g.,
          #   `Minimax.speech-02-hd.Wise_Woman`). Supported models: `speech-02-turbo`,
          #   `speech-02-hd`, `speech-2.6-turbo`, `speech-2.8-turbo`. Optional parameters:
          #   `speed` (float, default 1.0), `vol` (float, default 1.0), `pitch` (integer,
          #   default 0).
          # - **Resemble:** Use `Resemble.<ModelId>.<VoiceId>` (e.g.,
          #   `Resemble.Pro.my_voice`). Supported models: `Pro` (multilingual) and `Turbo`
          #   (English only).
          voice:,
          # Use this field to add state to every subsequent webhook. It must be a valid
          # Base-64 encoded string.
          client_state: nil,
          # Use this field to avoid duplicate commands. Telnyx will ignore any command with
          # the same `command_id` for the same `call_control_id`.
          command_id: nil,
          # The language you want spoken. This parameter is ignored when a `Polly.*` voice
          # is specified.
          language: nil,
          # The number of times to play the audio file. Use `infinity` to loop indefinitely.
          # Defaults to 1.
          loop_: nil,
          # The type of the provided payload. The payload can either be plain text, or
          # Speech Synthesis Markup Language (SSML).
          payload_type: nil,
          # This parameter impacts speech quality, language options and payload types. When
          # using `basic`, only the `en-US` language and payload type `text` are allowed.
          service_level: nil,
          # When specified, it stops the current audio being played. Specify `current` to
          # stop the current audio being played, and to play the next file in the queue.
          # Specify `all` to stop the current audio file being played and to also clear all
          # audio files from the queue.
          stop: nil,
          # Specifies which legs of the call should receive the spoken audio.
          target_legs: nil,
          # The settings associated with the voice selected
          voice_settings: nil,
          request_options: {}
        )
        end

        # Start an AI assistant on the call.
        #
        # **Expected Webhooks:**
        #
        # - `call.conversation.ended`
        # - `call.conversation_insights.generated`
        sig do
          params(
            call_control_id: String,
            assistant:
              Telnyx::Calls::ActionStartAIAssistantParams::Assistant::OrHash,
            client_state: String,
            command_id: String,
            greeting: String,
            interruption_settings: Telnyx::Calls::InterruptionSettings::OrHash,
            transcription: Telnyx::Calls::TranscriptionConfig::OrHash,
            voice: String,
            voice_settings:
              T.any(
                Telnyx::Calls::ElevenLabsVoiceSettings::OrHash,
                Telnyx::Calls::TelnyxVoiceSettings::OrHash,
                Telnyx::Calls::AwsVoiceSettings::OrHash
              ),
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::Calls::ActionStartAIAssistantResponse)
        end
        def start_ai_assistant(
          # Unique identifier and token for controlling the call
          call_control_id,
          # AI Assistant configuration
          assistant: nil,
          # Use this field to add state to every subsequent webhook. It must be a valid
          # Base-64 encoded string.
          client_state: nil,
          # Use this field to avoid duplicate commands. Telnyx will ignore any command with
          # the same `command_id` for the same `call_control_id`.
          command_id: nil,
          # Text that will be played when the assistant starts, if none then nothing will be
          # played when the assistant starts. The greeting can be text for any voice or SSML
          # for `AWS.Polly.<voice_id>` voices. There is a 3,000 character limit.
          greeting: nil,
          # Settings for handling user interruptions during assistant speech
          interruption_settings: nil,
          # The settings associated with speech to text for the voice assistant. This is
          # only relevant if the assistant uses a text-to-text language model. Any assistant
          # using a model with native audio support (e.g. `fixie-ai/ultravox-v0_4`) will
          # ignore this field.
          transcription: nil,
          # The voice to be used by the voice assistant. Currently we support ElevenLabs,
          # Telnyx and AWS voices.
          #
          # **Supported Providers:**
          #
          # - **AWS:** Use `AWS.Polly.<VoiceId>` (e.g., `AWS.Polly.Joanna`). For neural
          #   voices, which provide more realistic, human-like speech, append `-Neural` to
          #   the `VoiceId` (e.g., `AWS.Polly.Joanna-Neural`). Check the
          #   [available voices](https://docs.aws.amazon.com/polly/latest/dg/available-voices.html)
          #   for compatibility.
          # - **Azure:** Use `Azure.<VoiceId>. (e.g. Azure.en-CA-ClaraNeural,
          #   Azure.en-CA-LiamNeural, Azure.en-US-BrianMultilingualNeural,
          #   Azure.en-US-Ava:DragonHDLatestNeural. For a complete list of voices, go to
          #   [Azure Voice Gallery](https://speech.microsoft.com/portal/voicegallery).)
          # - **ElevenLabs:** Use `ElevenLabs.<ModelId>.<VoiceId>` (e.g.,
          #   `ElevenLabs.BaseModel.John`). The `ModelId` part is optional. To use
          #   ElevenLabs, you must provide your ElevenLabs API key as an integration secret
          #   under `"voice_settings": {"api_key_ref": "<secret_id>"}`. See
          #   [integration secrets documentation](https://developers.telnyx.com/api/secrets-manager/integration-secrets/create-integration-secret)
          #   for details. Check
          #   [available voices](https://elevenlabs.io/docs/api-reference/get-voices).
          # - **Telnyx:** Use `Telnyx.<model_id>.<voice_id>`
          voice: nil,
          # The settings associated with the voice selected
          voice_settings: nil,
          request_options: {}
        )
        end

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
        sig do
          params(
            call_control_id: String,
            client_state: String,
            command_id: String,
            rx: String,
            stream_type:
              Telnyx::Calls::ActionStartForkingParams::StreamType::OrSymbol,
            tx: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::Calls::ActionStartForkingResponse)
        end
        def start_forking(
          # Unique identifier and token for controlling the call
          call_control_id,
          # Use this field to add state to every subsequent webhook. It must be a valid
          # Base-64 encoded string.
          client_state: nil,
          # Use this field to avoid duplicate commands. Telnyx will ignore any command with
          # the same `command_id` for the same `call_control_id`.
          command_id: nil,
          # The network target, <udp:ip_address:port>, where the call's incoming RTP media
          # packets should be forwarded.
          rx: nil,
          # Optionally specify a media type to stream. If `decrypted` selected, Telnyx will
          # decrypt incoming SIP media before forking to the target. `rx` and `tx` are
          # required fields if `decrypted` selected.
          stream_type: nil,
          # The network target, <udp:ip_address:port>, where the call's outgoing RTP media
          # packets should be forwarded.
          tx: nil,
          request_options: {}
        )
        end

        # Noise Suppression Start (BETA)
        sig do
          params(
            call_control_id: String,
            client_state: String,
            command_id: String,
            direction:
              Telnyx::Calls::ActionStartNoiseSuppressionParams::Direction::OrSymbol,
            noise_suppression_engine:
              Telnyx::Calls::ActionStartNoiseSuppressionParams::NoiseSuppressionEngine::OrSymbol,
            noise_suppression_engine_config:
              Telnyx::Calls::ActionStartNoiseSuppressionParams::NoiseSuppressionEngineConfig::OrHash,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::Calls::ActionStartNoiseSuppressionResponse)
        end
        def start_noise_suppression(
          # Unique identifier and token for controlling the call
          call_control_id,
          # Use this field to add state to every subsequent webhook. It must be a valid
          # Base-64 encoded string.
          client_state: nil,
          # Use this field to avoid duplicate commands. Telnyx will ignore any command with
          # the same `command_id` for the same `call_control_id`.
          command_id: nil,
          # The direction of the audio stream to be noise suppressed.
          direction: nil,
          # The engine to use for noise suppression. For backward compatibility, engines A,
          # B, and C are also supported, but are deprecated: A - Denoiser B - DeepFilterNet
          # C - Krisp
          noise_suppression_engine: nil,
          # Configuration parameters for noise suppression engines.
          noise_suppression_engine_config: nil,
          request_options: {}
        )
        end

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
        sig do
          params(
            call_control_id: String,
            audio_type:
              Telnyx::Calls::ActionStartPlaybackParams::AudioType::OrSymbol,
            audio_url: String,
            cache_audio: T::Boolean,
            client_state: String,
            command_id: String,
            loop_: Telnyx::Calls::Loopcount::Variants,
            media_name: String,
            overlay: T::Boolean,
            playback_content: String,
            stop: String,
            target_legs: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::Calls::ActionStartPlaybackResponse)
        end
        def start_playback(
          # Unique identifier and token for controlling the call
          call_control_id,
          # Specifies the type of audio provided in `audio_url` or `playback_content`.
          audio_type: nil,
          # The URL of a file to be played back on the call. The URL can point to either a
          # WAV or MP3 file. media_name and audio_url cannot be used together in one
          # request.
          audio_url: nil,
          # Caches the audio file. Useful when playing the same audio file multiple times
          # during the call.
          cache_audio: nil,
          # Use this field to add state to every subsequent webhook. It must be a valid
          # Base-64 encoded string.
          client_state: nil,
          # Use this field to avoid duplicate commands. Telnyx will ignore any command with
          # the same `command_id` for the same `call_control_id`.
          command_id: nil,
          # The number of times the audio file should be played. If supplied, the value must
          # be an integer between 1 and 100, or the special string `infinity` for an endless
          # loop.
          loop_: nil,
          # The media_name of a file to be played back on the call. The media_name must
          # point to a file previously uploaded to api.telnyx.com/v2/media by the same
          # user/organization. The file must either be a WAV or MP3 file.
          media_name: nil,
          # When enabled, audio will be mixed on top of any other audio that is actively
          # being played back. Note that `overlay: true` will only work if there is another
          # audio file already being played on the call.
          overlay: nil,
          # Allows a user to provide base64 encoded mp3 or wav. Note: when using this
          # parameter, `media_url` and `media_name` in the `playback_started` and
          # `playback_ended` webhooks will be empty
          playback_content: nil,
          # When specified, it stops the current audio being played. Specify `current` to
          # stop the current audio being played, and to play the next file in the queue.
          # Specify `all` to stop the current audio file being played and to also clear all
          # audio files from the queue.
          stop: nil,
          # Specifies the leg or legs on which audio will be played. If supplied, the value
          # must be either `self`, `opposite` or `both`.
          target_legs: nil,
          request_options: {}
        )
        end

        # Start recording the call. Recording will stop on call hang-up, or can be
        # initiated via the Stop Recording command.
        #
        # **Expected Webhooks:**
        #
        # - `call.recording.saved`
        # - `call.recording.transcription.saved`
        # - `call.recording.error`
        sig do
          params(
            call_control_id: String,
            channels:
              Telnyx::Calls::ActionStartRecordingParams::Channels::OrSymbol,
            format_:
              Telnyx::Calls::ActionStartRecordingParams::Format::OrSymbol,
            client_state: String,
            command_id: String,
            custom_file_name: String,
            max_length: Integer,
            play_beep: T::Boolean,
            recording_track:
              Telnyx::Calls::ActionStartRecordingParams::RecordingTrack::OrSymbol,
            timeout_secs: Integer,
            transcription: T::Boolean,
            transcription_engine:
              Telnyx::Calls::ActionStartRecordingParams::TranscriptionEngine::OrSymbol,
            transcription_language:
              Telnyx::Calls::ActionStartRecordingParams::TranscriptionLanguage::OrSymbol,
            transcription_max_speaker_count: Integer,
            transcription_min_speaker_count: Integer,
            transcription_profanity_filter: T::Boolean,
            transcription_speaker_diarization: T::Boolean,
            trim: Telnyx::Calls::ActionStartRecordingParams::Trim::OrSymbol,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::Calls::ActionStartRecordingResponse)
        end
        def start_recording(
          # Unique identifier and token for controlling the call
          call_control_id,
          # When `dual`, final audio file will be stereo recorded with the first leg on
          # channel A, and the rest on channel B.
          channels:,
          # The audio file format used when storing the call recording. Can be either `mp3`
          # or `wav`.
          format_:,
          # Use this field to add state to every subsequent webhook. It must be a valid
          # Base-64 encoded string.
          client_state: nil,
          # Use this field to avoid duplicate commands. Telnyx will ignore any command with
          # the same `command_id` for the same `call_control_id`.
          command_id: nil,
          # The custom recording file name to be used instead of the default `call_leg_id`.
          # Telnyx will still add a Unix timestamp suffix.
          custom_file_name: nil,
          # Defines the maximum length for the recording in seconds. The minimum value is 0.
          # The maximum value is 14400. The default value is 0 (infinite)
          max_length: nil,
          # If enabled, a beep sound will be played at the start of a recording.
          play_beep: nil,
          # The audio track to be recorded. Can be either `both`, `inbound` or `outbound`.
          # If only single track is specified (`inbound`, `outbound`), `channels`
          # configuration is ignored and it will be recorded as mono (single channel).
          recording_track: nil,
          # The number of seconds that Telnyx will wait for the recording to be stopped if
          # silence is detected. The timer only starts when the speech is detected. Please
          # note that call transcription is used to detect silence and the related charge
          # will be applied. The minimum value is 0. The default value is 0 (infinite)
          timeout_secs: nil,
          # Enable post recording transcription. The default value is false.
          transcription: nil,
          # Engine to use for speech recognition. `A` - `Google`, `B` - `Telnyx`,
          # `deepgram/nova-3` - `Deepgram Nova-3`. Note: `deepgram/nova-3` supports only
          # `en` and `en-{Region}` languages.
          transcription_engine: nil,
          # Language code for transcription. Note: Not all languages are supported by all
          # transcription engines (google, telnyx, deepgram). See engine-specific
          # documentation for supported values.
          transcription_language: nil,
          # Defines maximum number of speakers in the conversation. Applies to `google`
          # engine only.
          transcription_max_speaker_count: nil,
          # Defines minimum number of speakers in the conversation. Applies to `google`
          # engine only.
          transcription_min_speaker_count: nil,
          # Enables profanity_filter. Applies to `google` engine only.
          transcription_profanity_filter: nil,
          # Enables speaker diarization. Applies to `google` engine only.
          transcription_speaker_diarization: nil,
          # When set to `trim-silence`, silence will be removed from the beginning and end
          # of the recording.
          trim: nil,
          request_options: {}
        )
        end

        # Start siprec session to configured in SIPREC connector SRS.
        #
        # **Expected Webhooks:**
        #
        # - `siprec.started`
        # - `siprec.stopped`
        # - `siprec.failed`
        sig do
          params(
            call_control_id: String,
            client_state: String,
            connector_name: String,
            include_metadata_custom_headers:
              Telnyx::Calls::ActionStartSiprecParams::IncludeMetadataCustomHeaders::OrBoolean,
            secure: Telnyx::Calls::ActionStartSiprecParams::Secure::OrBoolean,
            session_timeout_secs: Integer,
            sip_transport:
              Telnyx::Calls::ActionStartSiprecParams::SipTransport::OrSymbol,
            siprec_track:
              Telnyx::Calls::ActionStartSiprecParams::SiprecTrack::OrSymbol,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::Calls::ActionStartSiprecResponse)
        end
        def start_siprec(
          # Unique identifier and token for controlling the call
          call_control_id,
          # Use this field to add state to every subsequent webhook. It must be a valid
          # Base-64 encoded string.
          client_state: nil,
          # Name of configured SIPREC connector to be used.
          connector_name: nil,
          # When set, custom parameters will be added as metadata
          # (recording.session.ExtensionParameters). Otherwise, they’ll be added to sip
          # headers.
          include_metadata_custom_headers: nil,
          # Controls whether to encrypt media sent to your SRS using SRTP and TLS. When set
          # you need to configure SRS port in your connector to 5061.
          secure: nil,
          # Sets `Session-Expires` header to the INVITE. A reinvite is sent every half the
          # value set. Usefull for session keep alive. Minimum value is 90, set to 0 to
          # disable.
          session_timeout_secs: nil,
          # Specifies SIP transport protocol.
          sip_transport: nil,
          # Specifies which track should be sent on siprec session.
          siprec_track: nil,
          request_options: {}
        )
        end

        # Start streaming the media from a call to a specific WebSocket address or
        # Dialogflow connection in near-realtime. Audio will be delivered as
        # base64-encoded RTP payload (raw audio), wrapped in JSON payloads.
        #
        # Please find more details about media streaming messages specification under the
        # [link](https://developers.telnyx.com/docs/voice/programmable-voice/media-streaming).
        sig do
          params(
            call_control_id: String,
            client_state: String,
            command_id: String,
            custom_parameters:
              T::Array[
                Telnyx::Calls::ActionStartStreamingParams::CustomParameter::OrHash
              ],
            dialogflow_config: Telnyx::DialogflowConfig::OrHash,
            enable_dialogflow: T::Boolean,
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
            stream_track:
              Telnyx::Calls::ActionStartStreamingParams::StreamTrack::OrSymbol,
            stream_url: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::Calls::ActionStartStreamingResponse)
        end
        def start_streaming(
          # Unique identifier and token for controlling the call
          call_control_id,
          # Use this field to add state to every subsequent webhook. It must be a valid
          # Base-64 encoded string.
          client_state: nil,
          # Use this field to avoid duplicate commands. Telnyx will ignore any command with
          # the same `command_id` for the same `call_control_id`.
          command_id: nil,
          # Custom parameters to be sent as part of the WebSocket connection.
          custom_parameters: nil,
          dialogflow_config: nil,
          # Enables Dialogflow for the current call. The default value is false.
          enable_dialogflow: nil,
          # An authentication token to be sent as part of the WebSocket connection. Maximum
          # length is 4000 characters.
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
          # Specifies which track should be streamed.
          stream_track: nil,
          # The destination WebSocket address where the stream is going to be delivered.
          stream_url: nil,
          request_options: {}
        )
        end

        # Start real-time transcription. Transcription will stop on call hang-up, or can
        # be initiated via the Transcription stop command.
        #
        # **Expected Webhooks:**
        #
        # - `call.transcription`
        sig do
          params(
            call_control_id: String,
            client_state: String,
            command_id: String,
            transcription_engine:
              Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngine::OrSymbol,
            transcription_engine_config:
              T.any(
                Telnyx::Calls::TranscriptionEngineGoogleConfig::OrHash,
                Telnyx::Calls::TranscriptionEngineTelnyxConfig::OrHash,
                Telnyx::Calls::TranscriptionEngineAzureConfig::OrHash,
                Telnyx::Calls::TranscriptionEngineAConfig::OrHash,
                Telnyx::Calls::TranscriptionEngineBConfig::OrHash,
                Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::DeepgramNova2Config::OrHash,
                Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::DeepgramNova3Config::OrHash
              ),
            transcription_tracks: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::Calls::ActionStartTranscriptionResponse)
        end
        def start_transcription(
          # Unique identifier and token for controlling the call
          call_control_id,
          # Use this field to add state to every subsequent webhook. It must be a valid
          # Base-64 encoded string.
          client_state: nil,
          # Use this field to avoid duplicate commands. Telnyx will ignore any command with
          # the same `command_id` for the same `call_control_id`.
          command_id: nil,
          # Engine to use for speech recognition. Legacy values `A` - `Google`, `B` -
          # `Telnyx` are supported for backward compatibility.
          transcription_engine: nil,
          transcription_engine_config: nil,
          # Indicates which leg of the call will be transcribed. Use `inbound` for the leg
          # that requested the transcription, `outbound` for the other leg, and `both` for
          # both legs of the call. Will default to `inbound`.
          transcription_tracks: nil,
          request_options: {}
        )
        end

        # Stop an AI assistant on the call.
        sig do
          params(
            call_control_id: String,
            client_state: String,
            command_id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::Calls::ActionStopAIAssistantResponse)
        end
        def stop_ai_assistant(
          # Unique identifier and token for controlling the call
          call_control_id,
          # Use this field to add state to every subsequent webhook. It must be a valid
          # Base-64 encoded string.
          client_state: nil,
          # Use this field to avoid duplicate commands. Telnyx will ignore any command with
          # the same `command_id` for the same `call_control_id`.
          command_id: nil,
          request_options: {}
        )
        end

        # Stop forking a call.
        #
        # **Expected Webhooks:**
        #
        # - `call.fork.stopped`
        sig do
          params(
            call_control_id: String,
            client_state: String,
            command_id: String,
            stream_type:
              Telnyx::Calls::ActionStopForkingParams::StreamType::OrSymbol,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::Calls::ActionStopForkingResponse)
        end
        def stop_forking(
          # Unique identifier and token for controlling the call
          call_control_id,
          # Use this field to add state to every subsequent webhook. It must be a valid
          # Base-64 encoded string.
          client_state: nil,
          # Use this field to avoid duplicate commands. Telnyx will ignore any command with
          # the same `command_id` for the same `call_control_id`.
          command_id: nil,
          # Optionally specify a `stream_type`. This should match the `stream_type` that was
          # used in `fork_start` command to properly stop the fork.
          stream_type: nil,
          request_options: {}
        )
        end

        # Stop current gather.
        #
        # **Expected Webhooks:**
        #
        # - `call.gather.ended`
        sig do
          params(
            call_control_id: String,
            client_state: String,
            command_id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::Calls::ActionStopGatherResponse)
        end
        def stop_gather(
          # Unique identifier and token for controlling the call
          call_control_id,
          # Use this field to add state to every subsequent webhook. It must be a valid
          # Base-64 encoded string.
          client_state: nil,
          # Use this field to avoid duplicate commands. Telnyx will ignore any command with
          # the same `command_id` for the same `call_control_id`.
          command_id: nil,
          request_options: {}
        )
        end

        # Noise Suppression Stop (BETA)
        sig do
          params(
            call_control_id: String,
            client_state: String,
            command_id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::Calls::ActionStopNoiseSuppressionResponse)
        end
        def stop_noise_suppression(
          # Unique identifier and token for controlling the call
          call_control_id,
          # Use this field to add state to every subsequent webhook. It must be a valid
          # Base-64 encoded string.
          client_state: nil,
          # Use this field to avoid duplicate commands. Telnyx will ignore any command with
          # the same `command_id` for the same `call_control_id`.
          command_id: nil,
          request_options: {}
        )
        end

        # Stop audio being played on the call.
        #
        # **Expected Webhooks:**
        #
        # - `call.playback.ended` or `call.speak.ended`
        sig do
          params(
            call_control_id: String,
            client_state: String,
            command_id: String,
            overlay: T::Boolean,
            stop: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::Calls::ActionStopPlaybackResponse)
        end
        def stop_playback(
          # Unique identifier and token for controlling the call
          call_control_id,
          # Use this field to add state to every subsequent webhook. It must be a valid
          # Base-64 encoded string.
          client_state: nil,
          # Use this field to avoid duplicate commands. Telnyx will ignore any command with
          # the same `command_id` for the same `call_control_id`.
          command_id: nil,
          # When enabled, it stops the audio being played in the overlay queue.
          overlay: nil,
          # Use `current` to stop the current audio being played. Use `all` to stop the
          # current audio file being played and clear all audio files from the queue.
          stop: nil,
          request_options: {}
        )
        end

        # Stop recording the call.
        #
        # **Expected Webhooks:**
        #
        # - `call.recording.saved`
        sig do
          params(
            call_control_id: String,
            client_state: String,
            command_id: String,
            recording_id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::Calls::ActionStopRecordingResponse)
        end
        def stop_recording(
          # Unique identifier and token for controlling the call
          call_control_id,
          # Use this field to add state to every subsequent webhook. It must be a valid
          # Base-64 encoded string.
          client_state: nil,
          # Use this field to avoid duplicate commands. Telnyx will ignore any command with
          # the same `command_id` for the same `call_control_id`.
          command_id: nil,
          # Uniquely identifies the resource.
          recording_id: nil,
          request_options: {}
        )
        end

        # Stop SIPREC session.
        #
        # **Expected Webhooks:**
        #
        # - `siprec.stopped`
        sig do
          params(
            call_control_id: String,
            client_state: String,
            command_id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::Calls::ActionStopSiprecResponse)
        end
        def stop_siprec(
          # Unique identifier and token for controlling the call
          call_control_id,
          # Use this field to add state to every subsequent webhook. It must be a valid
          # Base-64 encoded string.
          client_state: nil,
          # Use this field to avoid duplicate commands. Telnyx will ignore any command with
          # the same `command_id` for the same `call_control_id`.
          command_id: nil,
          request_options: {}
        )
        end

        # Stop streaming a call to a WebSocket.
        #
        # **Expected Webhooks:**
        #
        # - `streaming.stopped`
        sig do
          params(
            call_control_id: String,
            client_state: String,
            command_id: String,
            stream_id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::Calls::ActionStopStreamingResponse)
        end
        def stop_streaming(
          # Unique identifier and token for controlling the call
          call_control_id,
          # Use this field to add state to every subsequent webhook. It must be a valid
          # Base-64 encoded string.
          client_state: nil,
          # Use this field to avoid duplicate commands. Telnyx will ignore any command with
          # the same `command_id` for the same `call_control_id`.
          command_id: nil,
          # Identifies the stream. If the `stream_id` is not provided the command stops all
          # streams associated with a given `call_control_id`.
          stream_id: nil,
          request_options: {}
        )
        end

        # Stop real-time transcription.
        sig do
          params(
            call_control_id: String,
            client_state: String,
            command_id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::Calls::ActionStopTranscriptionResponse)
        end
        def stop_transcription(
          # Unique identifier and token for controlling the call
          call_control_id,
          # Use this field to add state to every subsequent webhook. It must be a valid
          # Base-64 encoded string.
          client_state: nil,
          # Use this field to avoid duplicate commands. Telnyx will ignore any command with
          # the same `command_id` for the same `call_control_id`.
          command_id: nil,
          request_options: {}
        )
        end

        # Switch the supervisor role for a bridged call. This allows switching between
        # different supervisor modes during an active call
        sig do
          params(
            call_control_id: String,
            role:
              Telnyx::Calls::ActionSwitchSupervisorRoleParams::Role::OrSymbol,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::Calls::ActionSwitchSupervisorRoleResponse)
        end
        def switch_supervisor_role(
          # Unique identifier and token for controlling the call
          call_control_id,
          # The supervisor role to switch to. 'barge' allows speaking to both parties,
          # 'whisper' allows speaking to caller only, 'monitor' allows listening only.
          role:,
          request_options: {}
        )
        end

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
        sig do
          params(
            call_control_id: String,
            to: String,
            answering_machine_detection:
              Telnyx::Calls::ActionTransferParams::AnsweringMachineDetection::OrSymbol,
            answering_machine_detection_config:
              Telnyx::Calls::ActionTransferParams::AnsweringMachineDetectionConfig::OrHash,
            audio_url: String,
            client_state: String,
            command_id: String,
            custom_headers: T::Array[Telnyx::CustomSipHeader::OrHash],
            early_media: T::Boolean,
            from: String,
            from_display_name: String,
            media_encryption:
              Telnyx::Calls::ActionTransferParams::MediaEncryption::OrSymbol,
            media_name: String,
            mute_dtmf: Telnyx::Calls::ActionTransferParams::MuteDtmf::OrSymbol,
            park_after_unbridge: String,
            preferred_codecs: String,
            record: Telnyx::Calls::ActionTransferParams::Record::OrSymbol,
            record_channels:
              Telnyx::Calls::ActionTransferParams::RecordChannels::OrSymbol,
            record_custom_file_name: String,
            record_format:
              Telnyx::Calls::ActionTransferParams::RecordFormat::OrSymbol,
            record_max_length: Integer,
            record_timeout_secs: Integer,
            record_track:
              Telnyx::Calls::ActionTransferParams::RecordTrack::OrSymbol,
            record_trim:
              Telnyx::Calls::ActionTransferParams::RecordTrim::OrSymbol,
            sip_auth_password: String,
            sip_auth_username: String,
            sip_headers: T::Array[Telnyx::SipHeader::OrHash],
            sip_region:
              Telnyx::Calls::ActionTransferParams::SipRegion::OrSymbol,
            sip_transport_protocol:
              Telnyx::Calls::ActionTransferParams::SipTransportProtocol::OrSymbol,
            sound_modifications: Telnyx::SoundModifications::OrHash,
            target_leg_client_state: String,
            time_limit_secs: Integer,
            timeout_secs: Integer,
            webhook_retries_policies:
              T::Hash[
                Symbol,
                Telnyx::Calls::ActionTransferParams::WebhookRetriesPolicy::OrHash
              ],
            webhook_url: String,
            webhook_url_method:
              Telnyx::Calls::ActionTransferParams::WebhookURLMethod::OrSymbol,
            webhook_urls: T::Hash[Symbol, String],
            webhook_urls_method:
              Telnyx::Calls::ActionTransferParams::WebhookURLsMethod::OrSymbol,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::Calls::ActionTransferResponse)
        end
        def transfer(
          # Unique identifier and token for controlling the call
          call_control_id,
          # The DID or SIP URI to dial out to.
          to:,
          # Enables Answering Machine Detection. When a call is answered, Telnyx runs
          # real-time detection to determine if it was picked up by a human or a machine and
          # sends an `call.machine.detection.ended` webhook with the analysis result. If
          # 'greeting_end' or 'detect_words' is used and a 'machine' is detected, you will
          # receive another 'call.machine.greeting.ended' webhook when the answering machine
          # greeting ends with a beep or silence. If `detect_beep` is used, you will only
          # receive 'call.machine.greeting.ended' if a beep is detected.
          answering_machine_detection: nil,
          # Optional configuration parameters to modify 'answering_machine_detection'
          # performance.
          answering_machine_detection_config: nil,
          # The URL of a file to be played back when the transfer destination answers before
          # bridging the call. The URL can point to either a WAV or MP3 file. media_name and
          # audio_url cannot be used together in one request.
          audio_url: nil,
          # Use this field to add state to every subsequent webhook. It must be a valid
          # Base-64 encoded string.
          client_state: nil,
          # Use this field to avoid duplicate commands. Telnyx will ignore any command with
          # the same `command_id` for the same `call_control_id`.
          command_id: nil,
          # Custom headers to be added to the SIP INVITE.
          custom_headers: nil,
          # If set to false, early media will not be passed to the originating leg.
          early_media: nil,
          # The `from` number to be used as the caller id presented to the destination (`to`
          # number). The number should be in +E164 format. This attribute will default to
          # the `to` number of the original call if omitted.
          from: nil,
          # The `from_display_name` string to be used as the caller id name (SIP From
          # Display Name) presented to the destination (`to` number). The string should have
          # a maximum of 128 characters, containing only letters, numbers, spaces, and
          # -\_~!.+ special characters. If ommited, the display name will be the same as the
          # number in the `from` field.
          from_display_name: nil,
          # Defines whether media should be encrypted on the new call leg.
          media_encryption: nil,
          # The media_name of a file to be played back when the transfer destination answers
          # before bridging the call. The media_name must point to a file previously
          # uploaded to api.telnyx.com/v2/media by the same user/organization. The file must
          # either be a WAV or MP3 file.
          media_name: nil,
          # When enabled, DTMF tones are not passed to the call participant. The webhooks
          # containing the DTMF information will be sent.
          mute_dtmf: nil,
          # Specifies behavior after the bridge ends (i.e. the opposite leg either hangs up
          # or is transferred). If supplied with the value `self`, the current leg will be
          # parked after unbridge. If not set, the default behavior is to hang up the leg.
          park_after_unbridge: nil,
          # The list of comma-separated codecs in order of preference to be used during the
          # call. The codecs supported are `G722`, `PCMU`, `PCMA`, `G729`, `OPUS`, `VP8`,
          # `H264`, `AMR-WB`.
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
          # SIP Authentication password used for SIP challenges.
          sip_auth_password: nil,
          # SIP Authentication username used for SIP challenges.
          sip_auth_username: nil,
          # SIP headers to be added to the SIP INVITE. Currently only User-to-User header is
          # supported.
          sip_headers: nil,
          # Defines the SIP region to be used for the call.
          sip_region: nil,
          # Defines SIP transport protocol to be used on the call.
          sip_transport_protocol: nil,
          # Use this field to modify sound effects, for example adjust the pitch.
          sound_modifications: nil,
          # Use this field to add state to every subsequent webhook for the new leg. It must
          # be a valid Base-64 encoded string.
          target_leg_client_state: nil,
          # Sets the maximum duration of a Call Control Leg in seconds. If the time limit is
          # reached, the call will hangup and a `call.hangup` webhook with a `hangup_cause`
          # of `time_limit` will be sent. For example, by setting a time limit of 120
          # seconds, a Call Leg will be automatically terminated two minutes after being
          # answered. The default time limit is 14400 seconds or 4 hours and this is also
          # the maximum allowed call length.
          time_limit_secs: nil,
          # The number of seconds that Telnyx will wait for the call to be answered by the
          # destination to which it is being transferred. If the timeout is reached before
          # an answer is received, the call will hangup and a `call.hangup` webhook with a
          # `hangup_cause` of `timeout` will be sent. Minimum value is 5 seconds. Maximum
          # value is 600 seconds.
          timeout_secs: nil,
          # A map of event types to retry policies. Each retry policy contains an array of
          # `retries_ms` specifying the delays between retry attempts in milliseconds.
          # Maximum 5 retries, total delay cannot exceed 60 seconds.
          webhook_retries_policies: nil,
          # Use this field to override the URL for which Telnyx will send subsequent
          # webhooks to for this call.
          webhook_url: nil,
          # HTTP request type used for `webhook_url`.
          webhook_url_method: nil,
          # A map of event types to webhook URLs. When an event of the specified type
          # occurs, the webhook URL associated with that event type will be called instead
          # of `webhook_url`. Events not mapped here will use the default `webhook_url`.
          webhook_urls: nil,
          # HTTP request method to invoke `webhook_urls`.
          webhook_urls_method: nil,
          request_options: {}
        )
        end

        # Updates client state
        sig do
          params(
            call_control_id: String,
            client_state: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::Calls::ActionUpdateClientStateResponse)
        end
        def update_client_state(
          # Unique identifier and token for controlling the call
          call_control_id,
          # Use this field to add state to every subsequent webhook. It must be a valid
          # Base-64 encoded string.
          client_state:,
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
end

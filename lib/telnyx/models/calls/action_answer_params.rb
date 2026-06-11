# frozen_string_literal: true

module Telnyx
  module Models
    module Calls
      # @see Telnyx::Resources::Calls::Actions#answer
      class ActionAnswerParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute call_control_id
        #
        #   @return [String]
        required :call_control_id, String

        # @!attribute assistant
        #   AI Assistant configuration. All fields except `id` are optional — the
        #   assistant's stored configuration will be used as fallback for any omitted
        #   fields.
        #
        #   @return [Telnyx::Models::CallAssistantRequest, nil]
        optional :assistant, -> { Telnyx::CallAssistantRequest }

        # @!attribute billing_group_id
        #   Use this field to set the Billing Group ID for the call. Must be a valid and
        #   existing Billing Group ID.
        #
        #   @return [String, nil]
        optional :billing_group_id, String

        # @!attribute client_state
        #   Use this field to add state to every subsequent webhook. It must be a valid
        #   Base-64 encoded string.
        #
        #   @return [String, nil]
        optional :client_state, String

        # @!attribute command_id
        #   Use this field to avoid duplicate commands. Telnyx will ignore any command with
        #   the same `command_id` for the same `call_control_id`.
        #
        #   @return [String, nil]
        optional :command_id, String

        # @!attribute conversation_relay_config
        #   Starts a Conversation Relay session automatically when the answered/dialed call
        #   is answered. This embedded shape is supported on `answer` and `dial`. It uses
        #   public field names (`url`, `dtmf_detection`, `greeting`, `voice`, `language`,
        #   etc.) and maps them to the underlying Conversation Relay action. `client_state`,
        #   `tts_language`, and `transcription_language` inside this object are ignored; use
        #   the parent command's `client_state` and `command_id` fields instead.
        #
        #   @return [Telnyx::Models::Calls::ActionAnswerParams::ConversationRelayConfig, nil]
        optional :conversation_relay_config, -> { Telnyx::Calls::ActionAnswerParams::ConversationRelayConfig }

        # @!attribute custom_headers
        #   Custom headers to be added to the SIP INVITE response.
        #
        #   @return [Array<Telnyx::Models::CustomSipHeader>, nil]
        optional :custom_headers, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::CustomSipHeader] }

        # @!attribute deepfake_detection
        #   Enables deepfake detection on the call. When enabled, audio from the remote
        #   party is streamed to a detection service that analyzes whether the voice is
        #   AI-generated. Results are delivered via the `call.deepfake_detection.result`
        #   webhook.
        #
        #   @return [Telnyx::Models::Calls::ActionAnswerParams::DeepfakeDetection, nil]
        optional :deepfake_detection, -> { Telnyx::Calls::ActionAnswerParams::DeepfakeDetection }

        # @!attribute preferred_codecs
        #   The list of comma-separated codecs in a preferred order for the forked media to
        #   be received.
        #
        #   @return [Symbol, Telnyx::Models::Calls::ActionAnswerParams::PreferredCodecs, nil]
        optional :preferred_codecs, enum: -> { Telnyx::Calls::ActionAnswerParams::PreferredCodecs }

        # @!attribute record
        #   Start recording automatically after an event. Disabled by default.
        #
        #   @return [Symbol, Telnyx::Models::Calls::ActionAnswerParams::Record, nil]
        optional :record, enum: -> { Telnyx::Calls::ActionAnswerParams::Record }

        # @!attribute record_channels
        #   Defines which channel should be recorded ('single' or 'dual') when `record` is
        #   specified.
        #
        #   @return [Symbol, Telnyx::Models::Calls::ActionAnswerParams::RecordChannels, nil]
        optional :record_channels, enum: -> { Telnyx::Calls::ActionAnswerParams::RecordChannels }

        # @!attribute record_custom_file_name
        #   The custom recording file name to be used instead of the default `call_leg_id`.
        #   Telnyx will still add a Unix timestamp suffix.
        #
        #   @return [String, nil]
        optional :record_custom_file_name, String

        # @!attribute record_format
        #   Defines the format of the recording ('wav' or 'mp3') when `record` is specified.
        #
        #   @return [Symbol, Telnyx::Models::Calls::ActionAnswerParams::RecordFormat, nil]
        optional :record_format, enum: -> { Telnyx::Calls::ActionAnswerParams::RecordFormat }

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
        #   @return [Symbol, Telnyx::Models::Calls::ActionAnswerParams::RecordTrack, nil]
        optional :record_track, enum: -> { Telnyx::Calls::ActionAnswerParams::RecordTrack }

        # @!attribute record_trim
        #   When set to `trim-silence`, silence will be removed from the beginning and end
        #   of the recording.
        #
        #   @return [Symbol, Telnyx::Models::Calls::ActionAnswerParams::RecordTrim, nil]
        optional :record_trim, enum: -> { Telnyx::Calls::ActionAnswerParams::RecordTrim }

        # @!attribute send_silence_when_idle
        #   Generate silence RTP packets when no transmission available.
        #
        #   @return [Boolean, nil]
        optional :send_silence_when_idle, Telnyx::Internal::Type::Boolean

        # @!attribute sip_headers
        #   SIP headers to be added to the SIP INVITE response. Currently only User-to-User
        #   header is supported.
        #
        #   @return [Array<Telnyx::Models::SipHeader>, nil]
        optional :sip_headers, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::SipHeader] }

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

        # @!attribute stream_track
        #   Specifies which track should be streamed.
        #
        #   @return [Symbol, Telnyx::Models::Calls::ActionAnswerParams::StreamTrack, nil]
        optional :stream_track, enum: -> { Telnyx::Calls::ActionAnswerParams::StreamTrack }

        # @!attribute stream_url
        #   The destination WebSocket address where the stream is going to be delivered.
        #
        #   @return [String, nil]
        optional :stream_url, String

        # @!attribute transcription
        #   Enable transcription upon call answer. The default value is false.
        #
        #   @return [Boolean, nil]
        optional :transcription, Telnyx::Internal::Type::Boolean

        # @!attribute transcription_config
        #
        #   @return [Telnyx::Models::Calls::TranscriptionStartRequest, nil]
        optional :transcription_config, -> { Telnyx::Calls::TranscriptionStartRequest }

        # @!attribute webhook_retries_policies
        #   A map of event types to retry policies. Each retry policy contains an array of
        #   `retries_ms` specifying the delays between retry attempts in milliseconds.
        #   Maximum 5 retries, total delay cannot exceed 60 seconds.
        #
        #   @return [Hash{Symbol=>Telnyx::Models::Calls::ActionAnswerParams::WebhookRetriesPolicy}, nil]
        optional :webhook_retries_policies,
                 -> { Telnyx::Internal::Type::HashOf[Telnyx::Calls::ActionAnswerParams::WebhookRetriesPolicy] }

        # @!attribute webhook_url
        #   Use this field to override the URL for which Telnyx will send subsequent
        #   webhooks to for this call.
        #
        #   @return [String, nil]
        optional :webhook_url, String

        # @!attribute webhook_url_method
        #   HTTP request type used for `webhook_url`.
        #
        #   @return [Symbol, Telnyx::Models::Calls::ActionAnswerParams::WebhookURLMethod, nil]
        optional :webhook_url_method, enum: -> { Telnyx::Calls::ActionAnswerParams::WebhookURLMethod }

        # @!attribute webhook_urls
        #   A map of event types to webhook URLs. When an event of the specified type
        #   occurs, the webhook URL associated with that event type will be called instead
        #   of `webhook_url`. Events not mapped here will use the default `webhook_url`.
        #
        #   @return [Hash{Symbol=>String}, nil]
        optional :webhook_urls, Telnyx::Internal::Type::HashOf[String]

        # @!attribute webhook_urls_method
        #   HTTP request method to invoke `webhook_urls`.
        #
        #   @return [Symbol, Telnyx::Models::Calls::ActionAnswerParams::WebhookURLsMethod, nil]
        optional :webhook_urls_method, enum: -> { Telnyx::Calls::ActionAnswerParams::WebhookURLsMethod }

        # @!method initialize(call_control_id:, assistant: nil, billing_group_id: nil, client_state: nil, command_id: nil, conversation_relay_config: nil, custom_headers: nil, deepfake_detection: nil, preferred_codecs: nil, record: nil, record_channels: nil, record_custom_file_name: nil, record_format: nil, record_max_length: nil, record_timeout_secs: nil, record_track: nil, record_trim: nil, send_silence_when_idle: nil, sip_headers: nil, sound_modifications: nil, stream_bidirectional_codec: nil, stream_bidirectional_mode: nil, stream_bidirectional_target_legs: nil, stream_codec: nil, stream_track: nil, stream_url: nil, transcription: nil, transcription_config: nil, webhook_retries_policies: nil, webhook_url: nil, webhook_url_method: nil, webhook_urls: nil, webhook_urls_method: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::Calls::ActionAnswerParams} for more details.
        #
        #   @param call_control_id [String]
        #
        #   @param assistant [Telnyx::Models::CallAssistantRequest] AI Assistant configuration. All fields except `id` are optional — the assistant'
        #
        #   @param billing_group_id [String] Use this field to set the Billing Group ID for the call. Must be a valid and exi
        #
        #   @param client_state [String] Use this field to add state to every subsequent webhook. It must be a valid Base
        #
        #   @param command_id [String] Use this field to avoid duplicate commands. Telnyx will ignore any command with
        #
        #   @param conversation_relay_config [Telnyx::Models::Calls::ActionAnswerParams::ConversationRelayConfig] Starts a Conversation Relay session automatically when the answered/dialed call
        #
        #   @param custom_headers [Array<Telnyx::Models::CustomSipHeader>] Custom headers to be added to the SIP INVITE response.
        #
        #   @param deepfake_detection [Telnyx::Models::Calls::ActionAnswerParams::DeepfakeDetection] Enables deepfake detection on the call. When enabled, audio from the remote part
        #
        #   @param preferred_codecs [Symbol, Telnyx::Models::Calls::ActionAnswerParams::PreferredCodecs] The list of comma-separated codecs in a preferred order for the forked media to
        #
        #   @param record [Symbol, Telnyx::Models::Calls::ActionAnswerParams::Record] Start recording automatically after an event. Disabled by default.
        #
        #   @param record_channels [Symbol, Telnyx::Models::Calls::ActionAnswerParams::RecordChannels] Defines which channel should be recorded ('single' or 'dual') when `record` is s
        #
        #   @param record_custom_file_name [String] The custom recording file name to be used instead of the default `call_leg_id`.
        #
        #   @param record_format [Symbol, Telnyx::Models::Calls::ActionAnswerParams::RecordFormat] Defines the format of the recording ('wav' or 'mp3') when `record` is specified.
        #
        #   @param record_max_length [Integer] Defines the maximum length for the recording in seconds when `record` is specifi
        #
        #   @param record_timeout_secs [Integer] The number of seconds that Telnyx will wait for the recording to be stopped if s
        #
        #   @param record_track [Symbol, Telnyx::Models::Calls::ActionAnswerParams::RecordTrack] The audio track to be recorded. Can be either `both`, `inbound` or `outbound`. I
        #
        #   @param record_trim [Symbol, Telnyx::Models::Calls::ActionAnswerParams::RecordTrim] When set to `trim-silence`, silence will be removed from the beginning and end o
        #
        #   @param send_silence_when_idle [Boolean] Generate silence RTP packets when no transmission available.
        #
        #   @param sip_headers [Array<Telnyx::Models::SipHeader>] SIP headers to be added to the SIP INVITE response. Currently only User-to-User
        #
        #   @param sound_modifications [Telnyx::Models::SoundModifications] Use this field to modify sound effects, for example adjust the pitch.
        #
        #   @param stream_bidirectional_codec [Symbol, Telnyx::Models::StreamBidirectionalCodec] Indicates codec for bidirectional streaming RTP payloads. Used only with
        #   stream\_
        #
        #   @param stream_bidirectional_mode [Symbol, Telnyx::Models::StreamBidirectionalMode] Configures method of bidirectional streaming (mp3, rtp).
        #
        #   @param stream_bidirectional_target_legs [Symbol, Telnyx::Models::StreamBidirectionalTargetLegs] Specifies which call legs should receive the bidirectional stream audio.
        #
        #   @param stream_codec [Symbol, Telnyx::Models::StreamCodec] Specifies the codec to be used for the streamed audio. When set to 'default' or
        #
        #   @param stream_track [Symbol, Telnyx::Models::Calls::ActionAnswerParams::StreamTrack] Specifies which track should be streamed.
        #
        #   @param stream_url [String] The destination WebSocket address where the stream is going to be delivered.
        #
        #   @param transcription [Boolean] Enable transcription upon call answer. The default value is false.
        #
        #   @param transcription_config [Telnyx::Models::Calls::TranscriptionStartRequest]
        #
        #   @param webhook_retries_policies [Hash{Symbol=>Telnyx::Models::Calls::ActionAnswerParams::WebhookRetriesPolicy}] A map of event types to retry policies. Each retry policy contains an array of `
        #
        #   @param webhook_url [String] Use this field to override the URL for which Telnyx will send subsequent webhook
        #
        #   @param webhook_url_method [Symbol, Telnyx::Models::Calls::ActionAnswerParams::WebhookURLMethod] HTTP request type used for `webhook_url`.
        #
        #   @param webhook_urls [Hash{Symbol=>String}] A map of event types to webhook URLs. When an event of the specified type occurs
        #
        #   @param webhook_urls_method [Symbol, Telnyx::Models::Calls::ActionAnswerParams::WebhookURLsMethod] HTTP request method to invoke `webhook_urls`.
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

        class ConversationRelayConfig < Telnyx::Internal::Type::BaseModel
          # @!attribute url
          #   WebSocket URL for your Conversation Relay server. Must start with `ws://` or
          #   `wss://`.
          #
          #   @return [String]
          required :url, String

          # @!attribute custom_parameters
          #   Custom key-value parameters forwarded to the relay session as assistant dynamic
          #   variables.
          #
          #   @return [Hash{Symbol=>Object}, nil]
          optional :custom_parameters, Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]

          # @!attribute dtmf_detection
          #   Enable DTMF detection for the relay session.
          #
          #   @return [Boolean, nil]
          optional :dtmf_detection, Telnyx::Internal::Type::Boolean

          # @!attribute greeting
          #   Text played when the relay session starts.
          #
          #   @return [String, nil]
          optional :greeting, String

          # @!attribute interruptible
          #   Controls when caller input can interrupt assistant speech. `any` allows speech
          #   or DTMF interruptions; `none` disables interruptions; `speech` allows speech
          #   only; `dtmf` allows DTMF only.
          #
          #   @return [Symbol, Telnyx::Models::Calls::ActionAnswerParams::ConversationRelayConfig::Interruptible, nil]
          optional :interruptible,
                   enum: -> { Telnyx::Calls::ActionAnswerParams::ConversationRelayConfig::Interruptible }

          # @!attribute interruptible_greeting
          #   Controls when caller input can interrupt assistant speech. `any` allows speech
          #   or DTMF interruptions; `none` disables interruptions; `speech` allows speech
          #   only; `dtmf` allows DTMF only.
          #
          #   @return [Symbol, Telnyx::Models::Calls::ActionAnswerParams::ConversationRelayConfig::InterruptibleGreeting, nil]
          optional :interruptible_greeting,
                   enum: -> { Telnyx::Calls::ActionAnswerParams::ConversationRelayConfig::InterruptibleGreeting }

          # @!attribute interruption_settings
          #   Settings for handling caller interruptions during Conversation Relay speech.
          #
          #   @return [Telnyx::Models::Calls::ActionAnswerParams::ConversationRelayConfig::InterruptionSettings, nil]
          optional :interruption_settings,
                   -> { Telnyx::Calls::ActionAnswerParams::ConversationRelayConfig::InterruptionSettings }

          # @!attribute language
          #   Default language for both text-to-speech and speech recognition.
          #
          #   @return [String, nil]
          optional :language, String

          # @!attribute languages
          #   Per-language TTS and transcription settings.
          #
          #   @return [Array<Telnyx::Models::Calls::ActionAnswerParams::ConversationRelayConfig::Language>, nil]
          optional :languages,
                   -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Calls::ActionAnswerParams::ConversationRelayConfig::Language] }

          # @!attribute provider
          #   Structured voice provider. Must be supplied together with `structured_provider`.
          #
          #   @return [String, nil]
          optional :provider, String

          # @!attribute structured_provider
          #   Provider-specific structured voice settings. Must be supplied together with
          #   `provider`; Telnyx sends the value as the nested provider configuration for
          #   Conversation Relay.
          #
          #   @return [Hash{Symbol=>Object}, nil]
          optional :structured_provider, Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]

          # @!attribute transcription_engine
          #   Engine to use for speech recognition. Legacy values `A` - `Google`, `B` -
          #   `Telnyx` are supported for backward compatibility. For Conversation Relay, use
          #   this field with `transcription_engine_config`; the `transcription` object is not
          #   supported.
          #
          #   @return [Symbol, Telnyx::Models::Calls::ActionAnswerParams::ConversationRelayConfig::TranscriptionEngine, nil]
          optional :transcription_engine,
                   enum: -> { Telnyx::Calls::ActionAnswerParams::ConversationRelayConfig::TranscriptionEngine }

          # @!attribute transcription_engine_config
          #   Engine-specific transcription settings for Conversation Relay. This accepts the
          #   same provider-specific options used by the Call Transcription Start command,
          #   such as `transcription_model`, without requiring the engine discriminator to be
          #   repeated inside this object.
          #
          #   @return [Hash{Symbol=>Object}, nil]
          optional :transcription_engine_config, Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]

          # @!attribute tts_provider
          #   Text-to-speech provider. If omitted, Telnyx derives it from `voice` or
          #   `provider`.
          #
          #   @return [String, nil]
          optional :tts_provider, String

          # @!attribute voice
          #   The voice to be used by the voice assistant. Currently we support ElevenLabs,
          #   Telnyx and AWS voices.
          #
          #   **Supported Providers:**
          #
          #   - **AWS:** Use `AWS.Polly.<VoiceId>` (e.g., `AWS.Polly.Joanna`). For neural
          #     voices, which provide more realistic, human-like speech, append `-Neural` to
          #     the `VoiceId` (e.g., `AWS.Polly.Joanna-Neural`). Check the
          #     [available voices](https://docs.aws.amazon.com/polly/latest/dg/available-voices.html)
          #     for compatibility.
          #   - **Azure:** Use `Azure.<VoiceId>. (e.g. Azure.en-CA-ClaraNeural,
          #     Azure.en-CA-LiamNeural, Azure.en-US-BrianMultilingualNeural,
          #     Azure.en-US-Ava:DragonHDLatestNeural. For a complete list of voices, go to
          #     [Azure Voice Gallery](https://speech.microsoft.com/portal/voicegallery).)
          #   - **ElevenLabs:** Use `ElevenLabs.<ModelId>.<VoiceId>` (e.g.,
          #     `ElevenLabs.BaseModel.John`). The `ModelId` part is optional. To use
          #     ElevenLabs, you must provide your ElevenLabs API key as an integration secret
          #     under `"voice_settings": {"api_key_ref": "<secret_id>"}`. See
          #     [integration secrets documentation](https://developers.telnyx.com/api/secrets-manager/integration-secrets/create-integration-secret)
          #     for details. Check
          #     [available voices](https://elevenlabs.io/docs/api-reference/get-voices).
          #   - **Telnyx:** Use `Telnyx.<model_id>.<voice_id>`
          #   - **Inworld:** Use `Inworld.<ModelId>.<VoiceId>` (e.g., `Inworld.Mini.Loretta`,
          #     `Inworld.Max.Oliver`). Supported models: `Mini`, `Max`.
          #   - **xAI:** Use `xAI.<VoiceId>` (e.g., `xAI.eve`). Available voices: `eve`,
          #     `ara`, `rex`, `sal`, `leo`.
          #
          #   @return [String, nil]
          optional :voice, String

          # @!attribute voice_settings
          #   The settings associated with the voice selected
          #
          #   @return [Telnyx::Models::Calls::ElevenLabsVoiceSettings, Telnyx::Models::Calls::TelnyxVoiceSettings, Telnyx::Models::Calls::AwsVoiceSettings, Telnyx::Models::MinimaxVoiceSettings, Telnyx::Models::AzureVoiceSettings, Telnyx::Models::RimeVoiceSettings, Telnyx::Models::ResembleVoiceSettings, Telnyx::Models::Calls::ActionAnswerParams::ConversationRelayConfig::VoiceSettings::Inworld, Telnyx::Models::Calls::ActionAnswerParams::ConversationRelayConfig::VoiceSettings::Xai, nil]
          optional :voice_settings,
                   union: -> { Telnyx::Calls::ActionAnswerParams::ConversationRelayConfig::VoiceSettings }

          # @!method initialize(url:, custom_parameters: nil, dtmf_detection: nil, greeting: nil, interruptible: nil, interruptible_greeting: nil, interruption_settings: nil, language: nil, languages: nil, provider: nil, structured_provider: nil, transcription_engine: nil, transcription_engine_config: nil, tts_provider: nil, voice: nil, voice_settings: nil)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::Calls::ActionAnswerParams::ConversationRelayConfig} for more
          #   details.
          #
          #   Starts a Conversation Relay session automatically when the answered/dialed call
          #   is answered. This embedded shape is supported on `answer` and `dial`. It uses
          #   public field names (`url`, `dtmf_detection`, `greeting`, `voice`, `language`,
          #   etc.) and maps them to the underlying Conversation Relay action. `client_state`,
          #   `tts_language`, and `transcription_language` inside this object are ignored; use
          #   the parent command's `client_state` and `command_id` fields instead.
          #
          #   @param url [String] WebSocket URL for your Conversation Relay server. Must start with `ws://` or `ws
          #
          #   @param custom_parameters [Hash{Symbol=>Object}] Custom key-value parameters forwarded to the relay session as assistant dynamic
          #
          #   @param dtmf_detection [Boolean] Enable DTMF detection for the relay session.
          #
          #   @param greeting [String] Text played when the relay session starts.
          #
          #   @param interruptible [Symbol, Telnyx::Models::Calls::ActionAnswerParams::ConversationRelayConfig::Interruptible] Controls when caller input can interrupt assistant speech. `any` allows speech o
          #
          #   @param interruptible_greeting [Symbol, Telnyx::Models::Calls::ActionAnswerParams::ConversationRelayConfig::InterruptibleGreeting] Controls when caller input can interrupt assistant speech. `any` allows speech o
          #
          #   @param interruption_settings [Telnyx::Models::Calls::ActionAnswerParams::ConversationRelayConfig::InterruptionSettings] Settings for handling caller interruptions during Conversation Relay speech.
          #
          #   @param language [String] Default language for both text-to-speech and speech recognition.
          #
          #   @param languages [Array<Telnyx::Models::Calls::ActionAnswerParams::ConversationRelayConfig::Language>] Per-language TTS and transcription settings.
          #
          #   @param provider [String] Structured voice provider. Must be supplied together with `structured_provider`.
          #
          #   @param structured_provider [Hash{Symbol=>Object}] Provider-specific structured voice settings. Must be supplied together with `pro
          #
          #   @param transcription_engine [Symbol, Telnyx::Models::Calls::ActionAnswerParams::ConversationRelayConfig::TranscriptionEngine] Engine to use for speech recognition. Legacy values `A` - `Google`, `B` - `Telny
          #
          #   @param transcription_engine_config [Hash{Symbol=>Object}] Engine-specific transcription settings for Conversation Relay. This accepts the
          #
          #   @param tts_provider [String] Text-to-speech provider. If omitted, Telnyx derives it from `voice` or `provider
          #
          #   @param voice [String] The voice to be used by the voice assistant. Currently we support ElevenLabs, Te
          #
          #   @param voice_settings [Telnyx::Models::Calls::ElevenLabsVoiceSettings, Telnyx::Models::Calls::TelnyxVoiceSettings, Telnyx::Models::Calls::AwsVoiceSettings, Telnyx::Models::MinimaxVoiceSettings, Telnyx::Models::AzureVoiceSettings, Telnyx::Models::RimeVoiceSettings, Telnyx::Models::ResembleVoiceSettings, Telnyx::Models::Calls::ActionAnswerParams::ConversationRelayConfig::VoiceSettings::Inworld, Telnyx::Models::Calls::ActionAnswerParams::ConversationRelayConfig::VoiceSettings::Xai] The settings associated with the voice selected

          # Controls when caller input can interrupt assistant speech. `any` allows speech
          # or DTMF interruptions; `none` disables interruptions; `speech` allows speech
          # only; `dtmf` allows DTMF only.
          #
          # @see Telnyx::Models::Calls::ActionAnswerParams::ConversationRelayConfig#interruptible
          module Interruptible
            extend Telnyx::Internal::Type::Enum

            NONE = :none
            ANY = :any
            SPEECH = :speech
            DTMF = :dtmf

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # Controls when caller input can interrupt assistant speech. `any` allows speech
          # or DTMF interruptions; `none` disables interruptions; `speech` allows speech
          # only; `dtmf` allows DTMF only.
          #
          # @see Telnyx::Models::Calls::ActionAnswerParams::ConversationRelayConfig#interruptible_greeting
          module InterruptibleGreeting
            extend Telnyx::Internal::Type::Enum

            NONE = :none
            ANY = :any
            SPEECH = :speech
            DTMF = :dtmf

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # @see Telnyx::Models::Calls::ActionAnswerParams::ConversationRelayConfig#interruption_settings
          class InterruptionSettings < Telnyx::Internal::Type::BaseModel
            # @!attribute enable
            #   Legacy boolean form. `true` is equivalent to `interruptible=any`; `false` is
            #   equivalent to `interruptible=none`.
            #
            #   @return [Boolean, nil]
            optional :enable, Telnyx::Internal::Type::Boolean

            # @!attribute interruptible
            #   Controls when caller input can interrupt assistant speech. `any` allows speech
            #   or DTMF interruptions; `none` disables interruptions; `speech` allows speech
            #   only; `dtmf` allows DTMF only.
            #
            #   @return [Symbol, Telnyx::Models::Calls::ActionAnswerParams::ConversationRelayConfig::InterruptionSettings::Interruptible, nil]
            optional :interruptible,
                     enum: -> { Telnyx::Calls::ActionAnswerParams::ConversationRelayConfig::InterruptionSettings::Interruptible }

            # @!attribute interruptible_greeting
            #   Controls when caller input can interrupt assistant speech. `any` allows speech
            #   or DTMF interruptions; `none` disables interruptions; `speech` allows speech
            #   only; `dtmf` allows DTMF only.
            #
            #   @return [Symbol, Telnyx::Models::Calls::ActionAnswerParams::ConversationRelayConfig::InterruptionSettings::InterruptibleGreeting, nil]
            optional :interruptible_greeting,
                     enum: -> { Telnyx::Calls::ActionAnswerParams::ConversationRelayConfig::InterruptionSettings::InterruptibleGreeting }

            # @!attribute welcome_greeting_interruptible
            #   Controls when caller input can interrupt assistant speech. `any` allows speech
            #   or DTMF interruptions; `none` disables interruptions; `speech` allows speech
            #   only; `dtmf` allows DTMF only.
            #
            #   @return [Symbol, Telnyx::Models::Calls::ActionAnswerParams::ConversationRelayConfig::InterruptionSettings::WelcomeGreetingInterruptible, nil]
            optional :welcome_greeting_interruptible,
                     enum: -> { Telnyx::Calls::ActionAnswerParams::ConversationRelayConfig::InterruptionSettings::WelcomeGreetingInterruptible }

            # @!method initialize(enable: nil, interruptible: nil, interruptible_greeting: nil, welcome_greeting_interruptible: nil)
            #   Some parameter documentations has been truncated, see
            #   {Telnyx::Models::Calls::ActionAnswerParams::ConversationRelayConfig::InterruptionSettings}
            #   for more details.
            #
            #   Settings for handling caller interruptions during Conversation Relay speech.
            #
            #   @param enable [Boolean] Legacy boolean form. `true` is equivalent to `interruptible=any`; `false` is equ
            #
            #   @param interruptible [Symbol, Telnyx::Models::Calls::ActionAnswerParams::ConversationRelayConfig::InterruptionSettings::Interruptible] Controls when caller input can interrupt assistant speech. `any` allows speech o
            #
            #   @param interruptible_greeting [Symbol, Telnyx::Models::Calls::ActionAnswerParams::ConversationRelayConfig::InterruptionSettings::InterruptibleGreeting] Controls when caller input can interrupt assistant speech. `any` allows speech o
            #
            #   @param welcome_greeting_interruptible [Symbol, Telnyx::Models::Calls::ActionAnswerParams::ConversationRelayConfig::InterruptionSettings::WelcomeGreetingInterruptible] Controls when caller input can interrupt assistant speech. `any` allows speech o

            # Controls when caller input can interrupt assistant speech. `any` allows speech
            # or DTMF interruptions; `none` disables interruptions; `speech` allows speech
            # only; `dtmf` allows DTMF only.
            #
            # @see Telnyx::Models::Calls::ActionAnswerParams::ConversationRelayConfig::InterruptionSettings#interruptible
            module Interruptible
              extend Telnyx::Internal::Type::Enum

              NONE = :none
              ANY = :any
              SPEECH = :speech
              DTMF = :dtmf

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # Controls when caller input can interrupt assistant speech. `any` allows speech
            # or DTMF interruptions; `none` disables interruptions; `speech` allows speech
            # only; `dtmf` allows DTMF only.
            #
            # @see Telnyx::Models::Calls::ActionAnswerParams::ConversationRelayConfig::InterruptionSettings#interruptible_greeting
            module InterruptibleGreeting
              extend Telnyx::Internal::Type::Enum

              NONE = :none
              ANY = :any
              SPEECH = :speech
              DTMF = :dtmf

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # Controls when caller input can interrupt assistant speech. `any` allows speech
            # or DTMF interruptions; `none` disables interruptions; `speech` allows speech
            # only; `dtmf` allows DTMF only.
            #
            # @see Telnyx::Models::Calls::ActionAnswerParams::ConversationRelayConfig::InterruptionSettings#welcome_greeting_interruptible
            module WelcomeGreetingInterruptible
              extend Telnyx::Internal::Type::Enum

              NONE = :none
              ANY = :any
              SPEECH = :speech
              DTMF = :dtmf

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          class Language < Telnyx::Internal::Type::BaseModel
            # @!attribute language
            #   BCP 47 language tag for this language configuration.
            #
            #   @return [String]
            required :language, String

            # @!attribute speech_model
            #   Conversation Relay speech model. Prefer
            #   `transcription_engine_config.transcription_model` when configuring
            #   speech-to-text.
            #
            #   @return [String, nil]
            optional :speech_model, String

            # @!attribute transcription_engine
            #   Engine to use for speech recognition. Legacy values `A` - `Google`, `B` -
            #   `Telnyx` are supported for backward compatibility. When provided in a
            #   Conversation Relay language entry, Telnyx derives `transcription_provider` and
            #   `speech_model` for that language.
            #
            #   @return [Symbol, Telnyx::Models::Calls::ActionAnswerParams::ConversationRelayConfig::Language::TranscriptionEngine, nil]
            optional :transcription_engine,
                     enum: -> { Telnyx::Calls::ActionAnswerParams::ConversationRelayConfig::Language::TranscriptionEngine }

            # @!attribute transcription_engine_config
            #   Engine-specific transcription settings for Conversation Relay. This accepts the
            #   same provider-specific options used by the Call Transcription Start command,
            #   such as `transcription_model`, without requiring the engine discriminator to be
            #   repeated inside this object.
            #
            #   @return [Hash{Symbol=>Object}, nil]
            optional :transcription_engine_config, Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]

            # @!attribute transcription_provider
            #   Conversation Relay transcription provider name. Prefer `transcription_engine`
            #   when configuring speech-to-text.
            #
            #   @return [String, nil]
            optional :transcription_provider, String

            # @!attribute tts_provider
            #   Text-to-speech provider for this language. If omitted and `voice` is provided,
            #   Telnyx derives the provider from the voice identifier.
            #
            #   @return [String, nil]
            optional :tts_provider, String

            # @!attribute voice
            #   Voice identifier for this language.
            #
            #   @return [String, nil]
            optional :voice, String

            # @!attribute voice_settings
            #   The settings associated with the voice selected
            #
            #   @return [Telnyx::Models::Calls::ElevenLabsVoiceSettings, Telnyx::Models::Calls::TelnyxVoiceSettings, Telnyx::Models::Calls::AwsVoiceSettings, Telnyx::Models::MinimaxVoiceSettings, Telnyx::Models::AzureVoiceSettings, Telnyx::Models::RimeVoiceSettings, Telnyx::Models::ResembleVoiceSettings, Telnyx::Models::Calls::ActionAnswerParams::ConversationRelayConfig::Language::VoiceSettings::Inworld, Telnyx::Models::Calls::ActionAnswerParams::ConversationRelayConfig::Language::VoiceSettings::Xai, nil]
            optional :voice_settings,
                     union: -> { Telnyx::Calls::ActionAnswerParams::ConversationRelayConfig::Language::VoiceSettings }

            # @!method initialize(language:, speech_model: nil, transcription_engine: nil, transcription_engine_config: nil, transcription_provider: nil, tts_provider: nil, voice: nil, voice_settings: nil)
            #   Some parameter documentations has been truncated, see
            #   {Telnyx::Models::Calls::ActionAnswerParams::ConversationRelayConfig::Language}
            #   for more details.
            #
            #   Language-specific TTS and transcription settings for Conversation Relay.
            #
            #   @param language [String] BCP 47 language tag for this language configuration.
            #
            #   @param speech_model [String] Conversation Relay speech model. Prefer `transcription_engine_config.transcripti
            #
            #   @param transcription_engine [Symbol, Telnyx::Models::Calls::ActionAnswerParams::ConversationRelayConfig::Language::TranscriptionEngine] Engine to use for speech recognition. Legacy values `A` - `Google`, `B` - `Telny
            #
            #   @param transcription_engine_config [Hash{Symbol=>Object}] Engine-specific transcription settings for Conversation Relay. This accepts the
            #
            #   @param transcription_provider [String] Conversation Relay transcription provider name. Prefer `transcription_engine` wh
            #
            #   @param tts_provider [String] Text-to-speech provider for this language. If omitted and `voice` is provided, T
            #
            #   @param voice [String] Voice identifier for this language.
            #
            #   @param voice_settings [Telnyx::Models::Calls::ElevenLabsVoiceSettings, Telnyx::Models::Calls::TelnyxVoiceSettings, Telnyx::Models::Calls::AwsVoiceSettings, Telnyx::Models::MinimaxVoiceSettings, Telnyx::Models::AzureVoiceSettings, Telnyx::Models::RimeVoiceSettings, Telnyx::Models::ResembleVoiceSettings, Telnyx::Models::Calls::ActionAnswerParams::ConversationRelayConfig::Language::VoiceSettings::Inworld, Telnyx::Models::Calls::ActionAnswerParams::ConversationRelayConfig::Language::VoiceSettings::Xai] The settings associated with the voice selected

            # Engine to use for speech recognition. Legacy values `A` - `Google`, `B` -
            # `Telnyx` are supported for backward compatibility. When provided in a
            # Conversation Relay language entry, Telnyx derives `transcription_provider` and
            # `speech_model` for that language.
            #
            # @see Telnyx::Models::Calls::ActionAnswerParams::ConversationRelayConfig::Language#transcription_engine
            module TranscriptionEngine
              extend Telnyx::Internal::Type::Enum

              GOOGLE = :Google
              TELNYX = :Telnyx
              DEEPGRAM = :Deepgram
              AZURE = :Azure
              X_AI = :xAI
              ASSEMBLY_AI = :AssemblyAI
              SPEECHMATICS = :Speechmatics
              SONIOX = :Soniox
              A = :A
              B = :B

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # The settings associated with the voice selected
            #
            # @see Telnyx::Models::Calls::ActionAnswerParams::ConversationRelayConfig::Language#voice_settings
            module VoiceSettings
              extend Telnyx::Internal::Type::Union

              discriminator :type

              variant :elevenlabs, -> { Telnyx::Calls::ElevenLabsVoiceSettings }

              variant :telnyx, -> { Telnyx::Calls::TelnyxVoiceSettings }

              variant :aws, -> { Telnyx::Calls::AwsVoiceSettings }

              variant :minimax, -> { Telnyx::MinimaxVoiceSettings }

              variant :azure, -> { Telnyx::AzureVoiceSettings }

              variant :rime, -> { Telnyx::RimeVoiceSettings }

              variant :resemble, -> { Telnyx::ResembleVoiceSettings }

              variant :inworld,
                      -> { Telnyx::Calls::ActionAnswerParams::ConversationRelayConfig::Language::VoiceSettings::Inworld }

              variant :xai,
                      -> { Telnyx::Calls::ActionAnswerParams::ConversationRelayConfig::Language::VoiceSettings::Xai }

              class Inworld < Telnyx::Internal::Type::BaseModel
                # @!attribute type
                #   Voice settings provider type
                #
                #   @return [Symbol, :inworld]
                required :type, const: :inworld

                # @!method initialize(type: :inworld)
                #   @param type [Symbol, :inworld] Voice settings provider type
              end

              class Xai < Telnyx::Internal::Type::BaseModel
                # @!attribute type
                #   Voice settings provider type
                #
                #   @return [Symbol, :xai]
                required :type, const: :xai

                # @!attribute language
                #   Language code, or `auto` to detect automatically.
                #
                #   @return [String, nil]
                optional :language, String

                # @!method initialize(language: nil, type: :xai)
                #   @param language [String] Language code, or `auto` to detect automatically.
                #
                #   @param type [Symbol, :xai] Voice settings provider type
              end

              # @!method self.variants
              #   @return [Array(Telnyx::Models::Calls::ElevenLabsVoiceSettings, Telnyx::Models::Calls::TelnyxVoiceSettings, Telnyx::Models::Calls::AwsVoiceSettings, Telnyx::Models::MinimaxVoiceSettings, Telnyx::Models::AzureVoiceSettings, Telnyx::Models::RimeVoiceSettings, Telnyx::Models::ResembleVoiceSettings, Telnyx::Models::Calls::ActionAnswerParams::ConversationRelayConfig::Language::VoiceSettings::Inworld, Telnyx::Models::Calls::ActionAnswerParams::ConversationRelayConfig::Language::VoiceSettings::Xai)]
            end
          end

          # Engine to use for speech recognition. Legacy values `A` - `Google`, `B` -
          # `Telnyx` are supported for backward compatibility. For Conversation Relay, use
          # this field with `transcription_engine_config`; the `transcription` object is not
          # supported.
          #
          # @see Telnyx::Models::Calls::ActionAnswerParams::ConversationRelayConfig#transcription_engine
          module TranscriptionEngine
            extend Telnyx::Internal::Type::Enum

            GOOGLE = :Google
            TELNYX = :Telnyx
            DEEPGRAM = :Deepgram
            AZURE = :Azure
            X_AI = :xAI
            ASSEMBLY_AI = :AssemblyAI
            SPEECHMATICS = :Speechmatics
            SONIOX = :Soniox
            A = :A
            B = :B

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # The settings associated with the voice selected
          #
          # @see Telnyx::Models::Calls::ActionAnswerParams::ConversationRelayConfig#voice_settings
          module VoiceSettings
            extend Telnyx::Internal::Type::Union

            discriminator :type

            variant :elevenlabs, -> { Telnyx::Calls::ElevenLabsVoiceSettings }

            variant :telnyx, -> { Telnyx::Calls::TelnyxVoiceSettings }

            variant :aws, -> { Telnyx::Calls::AwsVoiceSettings }

            variant :minimax, -> { Telnyx::MinimaxVoiceSettings }

            variant :azure, -> { Telnyx::AzureVoiceSettings }

            variant :rime, -> { Telnyx::RimeVoiceSettings }

            variant :resemble, -> { Telnyx::ResembleVoiceSettings }

            variant :inworld,
                    -> { Telnyx::Calls::ActionAnswerParams::ConversationRelayConfig::VoiceSettings::Inworld }

            variant :xai, -> { Telnyx::Calls::ActionAnswerParams::ConversationRelayConfig::VoiceSettings::Xai }

            class Inworld < Telnyx::Internal::Type::BaseModel
              # @!attribute type
              #   Voice settings provider type
              #
              #   @return [Symbol, :inworld]
              required :type, const: :inworld

              # @!method initialize(type: :inworld)
              #   @param type [Symbol, :inworld] Voice settings provider type
            end

            class Xai < Telnyx::Internal::Type::BaseModel
              # @!attribute type
              #   Voice settings provider type
              #
              #   @return [Symbol, :xai]
              required :type, const: :xai

              # @!attribute language
              #   Language code, or `auto` to detect automatically.
              #
              #   @return [String, nil]
              optional :language, String

              # @!method initialize(language: nil, type: :xai)
              #   @param language [String] Language code, or `auto` to detect automatically.
              #
              #   @param type [Symbol, :xai] Voice settings provider type
            end

            # @!method self.variants
            #   @return [Array(Telnyx::Models::Calls::ElevenLabsVoiceSettings, Telnyx::Models::Calls::TelnyxVoiceSettings, Telnyx::Models::Calls::AwsVoiceSettings, Telnyx::Models::MinimaxVoiceSettings, Telnyx::Models::AzureVoiceSettings, Telnyx::Models::RimeVoiceSettings, Telnyx::Models::ResembleVoiceSettings, Telnyx::Models::Calls::ActionAnswerParams::ConversationRelayConfig::VoiceSettings::Inworld, Telnyx::Models::Calls::ActionAnswerParams::ConversationRelayConfig::VoiceSettings::Xai)]
          end
        end

        class DeepfakeDetection < Telnyx::Internal::Type::BaseModel
          # @!attribute enabled
          #   Whether deepfake detection is enabled.
          #
          #   @return [Boolean]
          required :enabled, Telnyx::Internal::Type::Boolean

          # @!attribute rtp_timeout
          #   Maximum time in seconds to wait for RTP audio before timing out. If no audio is
          #   received within this window, detection stops with an error.
          #
          #   @return [Integer, nil]
          optional :rtp_timeout, Integer

          # @!attribute timeout
          #   Maximum time in seconds to wait for a detection result before timing out.
          #
          #   @return [Integer, nil]
          optional :timeout, Integer

          # @!method initialize(enabled:, rtp_timeout: nil, timeout: nil)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::Calls::ActionAnswerParams::DeepfakeDetection} for more details.
          #
          #   Enables deepfake detection on the call. When enabled, audio from the remote
          #   party is streamed to a detection service that analyzes whether the voice is
          #   AI-generated. Results are delivered via the `call.deepfake_detection.result`
          #   webhook.
          #
          #   @param enabled [Boolean] Whether deepfake detection is enabled.
          #
          #   @param rtp_timeout [Integer] Maximum time in seconds to wait for RTP audio before timing out. If no audio is
          #
          #   @param timeout [Integer] Maximum time in seconds to wait for a detection result before timing out.
        end

        # The list of comma-separated codecs in a preferred order for the forked media to
        # be received.
        module PreferredCodecs
          extend Telnyx::Internal::Type::Enum

          G722_PCMU_PCMA_G729_OPUS_VP8_H264 = :"G722,PCMU,PCMA,G729,OPUS,VP8,H264"

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

        # Specifies which track should be streamed.
        module StreamTrack
          extend Telnyx::Internal::Type::Enum

          INBOUND_TRACK = :inbound_track
          OUTBOUND_TRACK = :outbound_track
          BOTH_TRACKS = :both_tracks

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        class WebhookRetriesPolicy < Telnyx::Internal::Type::BaseModel
          # @!attribute retries_ms
          #   Array of delays in milliseconds between retry attempts. Total sum cannot exceed
          #   60000ms.
          #
          #   @return [Array<Integer>, nil]
          optional :retries_ms, Telnyx::Internal::Type::ArrayOf[Integer]

          # @!method initialize(retries_ms: nil)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::Calls::ActionAnswerParams::WebhookRetriesPolicy} for more
          #   details.
          #
          #   @param retries_ms [Array<Integer>] Array of delays in milliseconds between retry attempts. Total sum cannot exceed
        end

        # HTTP request type used for `webhook_url`.
        module WebhookURLMethod
          extend Telnyx::Internal::Type::Enum

          POST = :POST
          GET = :GET

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # HTTP request method to invoke `webhook_urls`.
        module WebhookURLsMethod
          extend Telnyx::Internal::Type::Enum

          POST = :POST
          GET = :GET

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end

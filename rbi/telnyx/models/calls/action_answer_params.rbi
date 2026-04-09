# typed: strong

module Telnyx
  module Models
    module Calls
      class ActionAnswerParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(Telnyx::Calls::ActionAnswerParams, Telnyx::Internal::AnyHash)
          end

        sig { returns(String) }
        attr_accessor :call_control_id

        # AI Assistant configuration. All fields except `id` are optional — the
        # assistant's stored configuration will be used as fallback for any omitted
        # fields.
        sig { returns(T.nilable(Telnyx::Calls::ActionAnswerParams::Assistant)) }
        attr_reader :assistant

        sig do
          params(
            assistant: Telnyx::Calls::ActionAnswerParams::Assistant::OrHash
          ).void
        end
        attr_writer :assistant

        # Use this field to set the Billing Group ID for the call. Must be a valid and
        # existing Billing Group ID.
        sig { returns(T.nilable(String)) }
        attr_reader :billing_group_id

        sig { params(billing_group_id: String).void }
        attr_writer :billing_group_id

        # Use this field to add state to every subsequent webhook. It must be a valid
        # Base-64 encoded string.
        sig { returns(T.nilable(String)) }
        attr_reader :client_state

        sig { params(client_state: String).void }
        attr_writer :client_state

        # Use this field to avoid duplicate commands. Telnyx will ignore any command with
        # the same `command_id` for the same `call_control_id`.
        sig { returns(T.nilable(String)) }
        attr_reader :command_id

        sig { params(command_id: String).void }
        attr_writer :command_id

        # Custom headers to be added to the SIP INVITE response.
        sig { returns(T.nilable(T::Array[Telnyx::CustomSipHeader])) }
        attr_reader :custom_headers

        sig do
          params(custom_headers: T::Array[Telnyx::CustomSipHeader::OrHash]).void
        end
        attr_writer :custom_headers

        # The list of comma-separated codecs in a preferred order for the forked media to
        # be received.
        sig do
          returns(
            T.nilable(
              Telnyx::Calls::ActionAnswerParams::PreferredCodecs::OrSymbol
            )
          )
        end
        attr_reader :preferred_codecs

        sig do
          params(
            preferred_codecs:
              Telnyx::Calls::ActionAnswerParams::PreferredCodecs::OrSymbol
          ).void
        end
        attr_writer :preferred_codecs

        # Start recording automatically after an event. Disabled by default.
        sig do
          returns(
            T.nilable(Telnyx::Calls::ActionAnswerParams::Record::OrSymbol)
          )
        end
        attr_reader :record

        sig do
          params(
            record: Telnyx::Calls::ActionAnswerParams::Record::OrSymbol
          ).void
        end
        attr_writer :record

        # Defines which channel should be recorded ('single' or 'dual') when `record` is
        # specified.
        sig do
          returns(
            T.nilable(
              Telnyx::Calls::ActionAnswerParams::RecordChannels::OrSymbol
            )
          )
        end
        attr_reader :record_channels

        sig do
          params(
            record_channels:
              Telnyx::Calls::ActionAnswerParams::RecordChannels::OrSymbol
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
        sig do
          returns(
            T.nilable(Telnyx::Calls::ActionAnswerParams::RecordFormat::OrSymbol)
          )
        end
        attr_reader :record_format

        sig do
          params(
            record_format:
              Telnyx::Calls::ActionAnswerParams::RecordFormat::OrSymbol
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
        sig do
          returns(
            T.nilable(Telnyx::Calls::ActionAnswerParams::RecordTrack::OrSymbol)
          )
        end
        attr_reader :record_track

        sig do
          params(
            record_track:
              Telnyx::Calls::ActionAnswerParams::RecordTrack::OrSymbol
          ).void
        end
        attr_writer :record_track

        # When set to `trim-silence`, silence will be removed from the beginning and end
        # of the recording.
        sig do
          returns(
            T.nilable(Telnyx::Calls::ActionAnswerParams::RecordTrim::OrSymbol)
          )
        end
        attr_reader :record_trim

        sig do
          params(
            record_trim: Telnyx::Calls::ActionAnswerParams::RecordTrim::OrSymbol
          ).void
        end
        attr_writer :record_trim

        # Generate silence RTP packets when no transmission available.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :send_silence_when_idle

        sig { params(send_silence_when_idle: T::Boolean).void }
        attr_writer :send_silence_when_idle

        # SIP headers to be added to the SIP INVITE response. Currently only User-to-User
        # header is supported.
        sig { returns(T.nilable(T::Array[Telnyx::SipHeader])) }
        attr_reader :sip_headers

        sig { params(sip_headers: T::Array[Telnyx::SipHeader::OrHash]).void }
        attr_writer :sip_headers

        # Use this field to modify sound effects, for example adjust the pitch.
        sig { returns(T.nilable(Telnyx::SoundModifications)) }
        attr_reader :sound_modifications

        sig do
          params(sound_modifications: Telnyx::SoundModifications::OrHash).void
        end
        attr_writer :sound_modifications

        # Indicates codec for bidirectional streaming RTP payloads. Used only with
        # stream_bidirectional_mode=rtp. Case sensitive.
        sig { returns(T.nilable(Telnyx::StreamBidirectionalCodec::OrSymbol)) }
        attr_reader :stream_bidirectional_codec

        sig do
          params(
            stream_bidirectional_codec:
              Telnyx::StreamBidirectionalCodec::OrSymbol
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

        # Specifies which track should be streamed.
        sig do
          returns(
            T.nilable(Telnyx::Calls::ActionAnswerParams::StreamTrack::OrSymbol)
          )
        end
        attr_reader :stream_track

        sig do
          params(
            stream_track:
              Telnyx::Calls::ActionAnswerParams::StreamTrack::OrSymbol
          ).void
        end
        attr_writer :stream_track

        # The destination WebSocket address where the stream is going to be delivered.
        sig { returns(T.nilable(String)) }
        attr_reader :stream_url

        sig { params(stream_url: String).void }
        attr_writer :stream_url

        # Enable transcription upon call answer. The default value is false.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :transcription

        sig { params(transcription: T::Boolean).void }
        attr_writer :transcription

        sig { returns(T.nilable(Telnyx::Calls::TranscriptionStartRequest)) }
        attr_reader :transcription_config

        sig do
          params(
            transcription_config:
              Telnyx::Calls::TranscriptionStartRequest::OrHash
          ).void
        end
        attr_writer :transcription_config

        # A map of event types to retry policies. Each retry policy contains an array of
        # `retries_ms` specifying the delays between retry attempts in milliseconds.
        # Maximum 5 retries, total delay cannot exceed 60 seconds.
        sig do
          returns(
            T.nilable(
              T::Hash[
                Symbol,
                Telnyx::Calls::ActionAnswerParams::WebhookRetriesPolicy
              ]
            )
          )
        end
        attr_reader :webhook_retries_policies

        sig do
          params(
            webhook_retries_policies:
              T::Hash[
                Symbol,
                Telnyx::Calls::ActionAnswerParams::WebhookRetriesPolicy::OrHash
              ]
          ).void
        end
        attr_writer :webhook_retries_policies

        # Use this field to override the URL for which Telnyx will send subsequent
        # webhooks to for this call.
        sig { returns(T.nilable(String)) }
        attr_reader :webhook_url

        sig { params(webhook_url: String).void }
        attr_writer :webhook_url

        # HTTP request type used for `webhook_url`.
        sig do
          returns(
            T.nilable(
              Telnyx::Calls::ActionAnswerParams::WebhookURLMethod::OrSymbol
            )
          )
        end
        attr_reader :webhook_url_method

        sig do
          params(
            webhook_url_method:
              Telnyx::Calls::ActionAnswerParams::WebhookURLMethod::OrSymbol
          ).void
        end
        attr_writer :webhook_url_method

        # A map of event types to webhook URLs. When an event of the specified type
        # occurs, the webhook URL associated with that event type will be called instead
        # of `webhook_url`. Events not mapped here will use the default `webhook_url`.
        sig { returns(T.nilable(T::Hash[Symbol, String])) }
        attr_reader :webhook_urls

        sig { params(webhook_urls: T::Hash[Symbol, String]).void }
        attr_writer :webhook_urls

        # HTTP request method to invoke `webhook_urls`.
        sig do
          returns(
            T.nilable(
              Telnyx::Calls::ActionAnswerParams::WebhookURLsMethod::OrSymbol
            )
          )
        end
        attr_reader :webhook_urls_method

        sig do
          params(
            webhook_urls_method:
              Telnyx::Calls::ActionAnswerParams::WebhookURLsMethod::OrSymbol
          ).void
        end
        attr_writer :webhook_urls_method

        sig do
          params(
            call_control_id: String,
            assistant: Telnyx::Calls::ActionAnswerParams::Assistant::OrHash,
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
            webhook_retries_policies:
              T::Hash[
                Symbol,
                Telnyx::Calls::ActionAnswerParams::WebhookRetriesPolicy::OrHash
              ],
            webhook_url: String,
            webhook_url_method:
              Telnyx::Calls::ActionAnswerParams::WebhookURLMethod::OrSymbol,
            webhook_urls: T::Hash[Symbol, String],
            webhook_urls_method:
              Telnyx::Calls::ActionAnswerParams::WebhookURLsMethod::OrSymbol,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          call_control_id:,
          # AI Assistant configuration. All fields except `id` are optional — the
          # assistant's stored configuration will be used as fallback for any omitted
          # fields.
          assistant: nil,
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

        sig do
          override.returns(
            {
              call_control_id: String,
              assistant: Telnyx::Calls::ActionAnswerParams::Assistant,
              billing_group_id: String,
              client_state: String,
              command_id: String,
              custom_headers: T::Array[Telnyx::CustomSipHeader],
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
              sip_headers: T::Array[Telnyx::SipHeader],
              sound_modifications: Telnyx::SoundModifications,
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
              transcription_config: Telnyx::Calls::TranscriptionStartRequest,
              webhook_retries_policies:
                T::Hash[
                  Symbol,
                  Telnyx::Calls::ActionAnswerParams::WebhookRetriesPolicy
                ],
              webhook_url: String,
              webhook_url_method:
                Telnyx::Calls::ActionAnswerParams::WebhookURLMethod::OrSymbol,
              webhook_urls: T::Hash[Symbol, String],
              webhook_urls_method:
                Telnyx::Calls::ActionAnswerParams::WebhookURLsMethod::OrSymbol,
              request_options: Telnyx::RequestOptions
            }
          )
        end
        def to_hash
        end

        class Assistant < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Calls::ActionAnswerParams::Assistant,
                Telnyx::Internal::AnyHash
              )
            end

          # The identifier of the AI assistant to use.
          sig { returns(String) }
          attr_accessor :id

          # Map of dynamic variables and their default values. Dynamic variables can be
          # referenced in instructions, greeting, and tool definitions using the
          # `{{variable_name}}` syntax. Call-control-agent automatically merges in
          # `telnyx_call_*` variables (telnyx_call_to, telnyx_call_from,
          # telnyx_conversation_channel, telnyx_agent_target, telnyx_end_user_target,
          # telnyx_call_caller_id_name) and custom header variables.
          sig do
            returns(
              T.nilable(
                T::Hash[
                  Symbol,
                  Telnyx::Calls::ActionAnswerParams::Assistant::DynamicVariable::Variants
                ]
              )
            )
          end
          attr_reader :dynamic_variables

          sig do
            params(
              dynamic_variables:
                T::Hash[
                  Symbol,
                  Telnyx::Calls::ActionAnswerParams::Assistant::DynamicVariable::Variants
                ]
            ).void
          end
          attr_writer :dynamic_variables

          # External LLM configuration for bringing your own LLM endpoint.
          sig { returns(T.nilable(T.anything)) }
          attr_reader :external_llm

          sig { params(external_llm: T.anything).void }
          attr_writer :external_llm

          # Fallback LLM configuration used when the primary LLM provider is unavailable.
          sig { returns(T.nilable(T.anything)) }
          attr_reader :fallback_config

          sig { params(fallback_config: T.anything).void }
          attr_writer :fallback_config

          # Initial greeting text spoken when the assistant starts. Can be plain text for
          # any voice or SSML for `AWS.Polly.<voice_id>` voices. There is a 3,000 character
          # limit.
          sig { returns(T.nilable(String)) }
          attr_reader :greeting

          sig { params(greeting: String).void }
          attr_writer :greeting

          # System instructions for the voice assistant. Can be templated with
          # [dynamic variables](https://developers.telnyx.com/docs/inference/ai-assistants/dynamic-variables).
          # This will overwrite the instructions set in the assistant configuration.
          sig { returns(T.nilable(String)) }
          attr_reader :instructions

          sig { params(instructions: String).void }
          attr_writer :instructions

          # Integration secret identifier for the LLM provider API key. Use this field to
          # reference an
          # [integration secret](https://developers.telnyx.com/api/secrets-manager/integration-secrets/create-integration-secret)
          # containing your LLM provider API key. Supports any LLM provider (OpenAI,
          # Anthropic, etc.).
          sig { returns(T.nilable(String)) }
          attr_reader :llm_api_key_ref

          sig { params(llm_api_key_ref: String).void }
          attr_writer :llm_api_key_ref

          # MCP (Model Context Protocol) server configurations for extending the assistant's
          # capabilities with external tools and data sources.
          sig { returns(T.nilable(T::Array[T.anything])) }
          attr_reader :mcp_servers

          sig { params(mcp_servers: T::Array[T.anything]).void }
          attr_writer :mcp_servers

          # LLM model override for this call. If omitted, the assistant's configured model
          # is used.
          sig { returns(T.nilable(String)) }
          attr_reader :model

          sig { params(model: String).void }
          attr_writer :model

          # Assistant name override for this call.
          sig { returns(T.nilable(String)) }
          attr_reader :name

          sig { params(name: String).void }
          attr_writer :name

          # Observability configuration for the assistant session, including Langfuse
          # integration for tracing and monitoring.
          sig { returns(T.nilable(T.anything)) }
          attr_reader :observability_settings

          sig { params(observability_settings: T.anything).void }
          attr_writer :observability_settings

          # Deprecated — use `llm_api_key_ref` instead. Integration secret identifier for
          # the OpenAI API key. This field is maintained for backward compatibility;
          # `llm_api_key_ref` is the canonical field name and supports all LLM providers.
          sig { returns(T.nilable(String)) }
          attr_reader :openai_api_key_ref

          sig { params(openai_api_key_ref: String).void }
          attr_writer :openai_api_key_ref

          # Inline tool definitions available to the assistant (webhook, retrieval,
          # transfer, hangup, etc.). Overrides the assistant's stored tools if provided.
          sig do
            returns(
              T.nilable(
                T::Array[
                  T.any(
                    Telnyx::Calls::ActionAnswerParams::Assistant::Tool::BookAppointment,
                    Telnyx::Calls::ActionAnswerParams::Assistant::Tool::CheckAvailability,
                    Telnyx::AI::WebhookTool,
                    Telnyx::AI::HangupTool,
                    Telnyx::AI::TransferTool,
                    Telnyx::Calls::ActionAnswerParams::Assistant::Tool::Retrieval
                  )
                ]
              )
            )
          end
          attr_reader :tools

          sig do
            params(
              tools:
                T::Array[
                  T.any(
                    Telnyx::Calls::ActionAnswerParams::Assistant::Tool::BookAppointment::OrHash,
                    Telnyx::Calls::ActionAnswerParams::Assistant::Tool::CheckAvailability::OrHash,
                    Telnyx::AI::WebhookTool::OrHash,
                    Telnyx::AI::HangupTool::OrHash,
                    Telnyx::AI::TransferTool::OrHash,
                    Telnyx::Calls::ActionAnswerParams::Assistant::Tool::Retrieval::OrHash
                  )
                ]
            ).void
          end
          attr_writer :tools

          # AI Assistant configuration. All fields except `id` are optional — the
          # assistant's stored configuration will be used as fallback for any omitted
          # fields.
          sig do
            params(
              id: String,
              dynamic_variables:
                T::Hash[
                  Symbol,
                  Telnyx::Calls::ActionAnswerParams::Assistant::DynamicVariable::Variants
                ],
              external_llm: T.anything,
              fallback_config: T.anything,
              greeting: String,
              instructions: String,
              llm_api_key_ref: String,
              mcp_servers: T::Array[T.anything],
              model: String,
              name: String,
              observability_settings: T.anything,
              openai_api_key_ref: String,
              tools:
                T::Array[
                  T.any(
                    Telnyx::Calls::ActionAnswerParams::Assistant::Tool::BookAppointment::OrHash,
                    Telnyx::Calls::ActionAnswerParams::Assistant::Tool::CheckAvailability::OrHash,
                    Telnyx::AI::WebhookTool::OrHash,
                    Telnyx::AI::HangupTool::OrHash,
                    Telnyx::AI::TransferTool::OrHash,
                    Telnyx::Calls::ActionAnswerParams::Assistant::Tool::Retrieval::OrHash
                  )
                ]
            ).returns(T.attached_class)
          end
          def self.new(
            # The identifier of the AI assistant to use.
            id:,
            # Map of dynamic variables and their default values. Dynamic variables can be
            # referenced in instructions, greeting, and tool definitions using the
            # `{{variable_name}}` syntax. Call-control-agent automatically merges in
            # `telnyx_call_*` variables (telnyx_call_to, telnyx_call_from,
            # telnyx_conversation_channel, telnyx_agent_target, telnyx_end_user_target,
            # telnyx_call_caller_id_name) and custom header variables.
            dynamic_variables: nil,
            # External LLM configuration for bringing your own LLM endpoint.
            external_llm: nil,
            # Fallback LLM configuration used when the primary LLM provider is unavailable.
            fallback_config: nil,
            # Initial greeting text spoken when the assistant starts. Can be plain text for
            # any voice or SSML for `AWS.Polly.<voice_id>` voices. There is a 3,000 character
            # limit.
            greeting: nil,
            # System instructions for the voice assistant. Can be templated with
            # [dynamic variables](https://developers.telnyx.com/docs/inference/ai-assistants/dynamic-variables).
            # This will overwrite the instructions set in the assistant configuration.
            instructions: nil,
            # Integration secret identifier for the LLM provider API key. Use this field to
            # reference an
            # [integration secret](https://developers.telnyx.com/api/secrets-manager/integration-secrets/create-integration-secret)
            # containing your LLM provider API key. Supports any LLM provider (OpenAI,
            # Anthropic, etc.).
            llm_api_key_ref: nil,
            # MCP (Model Context Protocol) server configurations for extending the assistant's
            # capabilities with external tools and data sources.
            mcp_servers: nil,
            # LLM model override for this call. If omitted, the assistant's configured model
            # is used.
            model: nil,
            # Assistant name override for this call.
            name: nil,
            # Observability configuration for the assistant session, including Langfuse
            # integration for tracing and monitoring.
            observability_settings: nil,
            # Deprecated — use `llm_api_key_ref` instead. Integration secret identifier for
            # the OpenAI API key. This field is maintained for backward compatibility;
            # `llm_api_key_ref` is the canonical field name and supports all LLM providers.
            openai_api_key_ref: nil,
            # Inline tool definitions available to the assistant (webhook, retrieval,
            # transfer, hangup, etc.). Overrides the assistant's stored tools if provided.
            tools: nil
          )
          end

          sig do
            override.returns(
              {
                id: String,
                dynamic_variables:
                  T::Hash[
                    Symbol,
                    Telnyx::Calls::ActionAnswerParams::Assistant::DynamicVariable::Variants
                  ],
                external_llm: T.anything,
                fallback_config: T.anything,
                greeting: String,
                instructions: String,
                llm_api_key_ref: String,
                mcp_servers: T::Array[T.anything],
                model: String,
                name: String,
                observability_settings: T.anything,
                openai_api_key_ref: String,
                tools:
                  T::Array[
                    T.any(
                      Telnyx::Calls::ActionAnswerParams::Assistant::Tool::BookAppointment,
                      Telnyx::Calls::ActionAnswerParams::Assistant::Tool::CheckAvailability,
                      Telnyx::AI::WebhookTool,
                      Telnyx::AI::HangupTool,
                      Telnyx::AI::TransferTool,
                      Telnyx::Calls::ActionAnswerParams::Assistant::Tool::Retrieval
                    )
                  ]
              }
            )
          end
          def to_hash
          end

          module DynamicVariable
            extend Telnyx::Internal::Type::Union

            Variants = T.type_alias { T.any(String, Float, T::Boolean) }

            sig do
              override.returns(
                T::Array[
                  Telnyx::Calls::ActionAnswerParams::Assistant::DynamicVariable::Variants
                ]
              )
            end
            def self.variants
            end
          end

          module Tool
            extend Telnyx::Internal::Type::Union

            Variants =
              T.type_alias do
                T.any(
                  Telnyx::Calls::ActionAnswerParams::Assistant::Tool::BookAppointment,
                  Telnyx::Calls::ActionAnswerParams::Assistant::Tool::CheckAvailability,
                  Telnyx::AI::WebhookTool,
                  Telnyx::AI::HangupTool,
                  Telnyx::AI::TransferTool,
                  Telnyx::Calls::ActionAnswerParams::Assistant::Tool::Retrieval
                )
              end

            class BookAppointment < Telnyx::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Telnyx::Calls::ActionAnswerParams::Assistant::Tool::BookAppointment,
                    Telnyx::Internal::AnyHash
                  )
                end

              sig do
                returns(
                  Telnyx::Calls::ActionAnswerParams::Assistant::Tool::BookAppointment::BookAppointment
                )
              end
              attr_reader :book_appointment

              sig do
                params(
                  book_appointment:
                    Telnyx::Calls::ActionAnswerParams::Assistant::Tool::BookAppointment::BookAppointment::OrHash
                ).void
              end
              attr_writer :book_appointment

              sig { returns(Symbol) }
              attr_accessor :type

              sig do
                params(
                  book_appointment:
                    Telnyx::Calls::ActionAnswerParams::Assistant::Tool::BookAppointment::BookAppointment::OrHash,
                  type: Symbol
                ).returns(T.attached_class)
              end
              def self.new(book_appointment:, type: :book_appointment)
              end

              sig do
                override.returns(
                  {
                    book_appointment:
                      Telnyx::Calls::ActionAnswerParams::Assistant::Tool::BookAppointment::BookAppointment,
                    type: Symbol
                  }
                )
              end
              def to_hash
              end

              class BookAppointment < Telnyx::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Telnyx::Calls::ActionAnswerParams::Assistant::Tool::BookAppointment::BookAppointment,
                      Telnyx::Internal::AnyHash
                    )
                  end

                # Reference to an integration secret that contains your Cal.com API key. You would
                # pass the `identifier` for an integration secret
                # [/v2/integration_secrets](https://developers.telnyx.com/api/secrets-manager/integration-secrets/create-integration-secret)
                # that refers to your Cal.com API key.
                sig { returns(String) }
                attr_accessor :api_key_ref

                # Event Type ID for which slots are being fetched.
                # [cal.com](https://cal.com/docs/api-reference/v2/bookings/create-a-booking#body-event-type-id)
                sig { returns(Integer) }
                attr_accessor :event_type_id

                # The name of the attendee
                # [cal.com](https://cal.com/docs/api-reference/v2/bookings/create-a-booking#body-attendee-name).
                # If not provided, the assistant will ask for the attendee's name.
                sig { returns(T.nilable(String)) }
                attr_reader :attendee_name

                sig { params(attendee_name: String).void }
                attr_writer :attendee_name

                # The timezone of the attendee
                # [cal.com](https://cal.com/docs/api-reference/v2/bookings/create-a-booking#body-attendee-timezone).
                # If not provided, the assistant will ask for the attendee's timezone.
                sig { returns(T.nilable(String)) }
                attr_reader :attendee_timezone

                sig { params(attendee_timezone: String).void }
                attr_writer :attendee_timezone

                sig do
                  params(
                    api_key_ref: String,
                    event_type_id: Integer,
                    attendee_name: String,
                    attendee_timezone: String
                  ).returns(T.attached_class)
                end
                def self.new(
                  # Reference to an integration secret that contains your Cal.com API key. You would
                  # pass the `identifier` for an integration secret
                  # [/v2/integration_secrets](https://developers.telnyx.com/api/secrets-manager/integration-secrets/create-integration-secret)
                  # that refers to your Cal.com API key.
                  api_key_ref:,
                  # Event Type ID for which slots are being fetched.
                  # [cal.com](https://cal.com/docs/api-reference/v2/bookings/create-a-booking#body-event-type-id)
                  event_type_id:,
                  # The name of the attendee
                  # [cal.com](https://cal.com/docs/api-reference/v2/bookings/create-a-booking#body-attendee-name).
                  # If not provided, the assistant will ask for the attendee's name.
                  attendee_name: nil,
                  # The timezone of the attendee
                  # [cal.com](https://cal.com/docs/api-reference/v2/bookings/create-a-booking#body-attendee-timezone).
                  # If not provided, the assistant will ask for the attendee's timezone.
                  attendee_timezone: nil
                )
                end

                sig do
                  override.returns(
                    {
                      api_key_ref: String,
                      event_type_id: Integer,
                      attendee_name: String,
                      attendee_timezone: String
                    }
                  )
                end
                def to_hash
                end
              end
            end

            class CheckAvailability < Telnyx::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Telnyx::Calls::ActionAnswerParams::Assistant::Tool::CheckAvailability,
                    Telnyx::Internal::AnyHash
                  )
                end

              sig do
                returns(
                  Telnyx::Calls::ActionAnswerParams::Assistant::Tool::CheckAvailability::CheckAvailability
                )
              end
              attr_reader :check_availability

              sig do
                params(
                  check_availability:
                    Telnyx::Calls::ActionAnswerParams::Assistant::Tool::CheckAvailability::CheckAvailability::OrHash
                ).void
              end
              attr_writer :check_availability

              sig { returns(Symbol) }
              attr_accessor :type

              sig do
                params(
                  check_availability:
                    Telnyx::Calls::ActionAnswerParams::Assistant::Tool::CheckAvailability::CheckAvailability::OrHash,
                  type: Symbol
                ).returns(T.attached_class)
              end
              def self.new(check_availability:, type: :check_availability)
              end

              sig do
                override.returns(
                  {
                    check_availability:
                      Telnyx::Calls::ActionAnswerParams::Assistant::Tool::CheckAvailability::CheckAvailability,
                    type: Symbol
                  }
                )
              end
              def to_hash
              end

              class CheckAvailability < Telnyx::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Telnyx::Calls::ActionAnswerParams::Assistant::Tool::CheckAvailability::CheckAvailability,
                      Telnyx::Internal::AnyHash
                    )
                  end

                # Reference to an integration secret that contains your Cal.com API key. You would
                # pass the `identifier` for an integration secret
                # [/v2/integration_secrets](https://developers.telnyx.com/api/secrets-manager/integration-secrets/create-integration-secret)
                # that refers to your Cal.com API key.
                sig { returns(String) }
                attr_accessor :api_key_ref

                # Event Type ID for which slots are being fetched.
                # [cal.com](https://cal.com/docs/api-reference/v2/slots/get-available-slots#parameter-event-type-id)
                sig { returns(Integer) }
                attr_accessor :event_type_id

                sig do
                  params(api_key_ref: String, event_type_id: Integer).returns(
                    T.attached_class
                  )
                end
                def self.new(
                  # Reference to an integration secret that contains your Cal.com API key. You would
                  # pass the `identifier` for an integration secret
                  # [/v2/integration_secrets](https://developers.telnyx.com/api/secrets-manager/integration-secrets/create-integration-secret)
                  # that refers to your Cal.com API key.
                  api_key_ref:,
                  # Event Type ID for which slots are being fetched.
                  # [cal.com](https://cal.com/docs/api-reference/v2/slots/get-available-slots#parameter-event-type-id)
                  event_type_id:
                )
                end

                sig do
                  override.returns(
                    { api_key_ref: String, event_type_id: Integer }
                  )
                end
                def to_hash
                end
              end
            end

            class Retrieval < Telnyx::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Telnyx::Calls::ActionAnswerParams::Assistant::Tool::Retrieval,
                    Telnyx::Internal::AnyHash
                  )
                end

              sig do
                returns(
                  Telnyx::Calls::ActionAnswerParams::Assistant::Tool::Retrieval::Retrieval
                )
              end
              attr_reader :retrieval

              sig do
                params(
                  retrieval:
                    Telnyx::Calls::ActionAnswerParams::Assistant::Tool::Retrieval::Retrieval::OrHash
                ).void
              end
              attr_writer :retrieval

              sig { returns(Symbol) }
              attr_accessor :type

              sig do
                params(
                  retrieval:
                    Telnyx::Calls::ActionAnswerParams::Assistant::Tool::Retrieval::Retrieval::OrHash,
                  type: Symbol
                ).returns(T.attached_class)
              end
              def self.new(retrieval:, type: :retrieval)
              end

              sig do
                override.returns(
                  {
                    retrieval:
                      Telnyx::Calls::ActionAnswerParams::Assistant::Tool::Retrieval::Retrieval,
                    type: Symbol
                  }
                )
              end
              def to_hash
              end

              class Retrieval < Telnyx::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Telnyx::Calls::ActionAnswerParams::Assistant::Tool::Retrieval::Retrieval,
                      Telnyx::Internal::AnyHash
                    )
                  end

                sig { returns(T::Array[String]) }
                attr_accessor :bucket_ids

                # The maximum number of results to retrieve as context for the language model.
                sig { returns(T.nilable(Integer)) }
                attr_reader :max_num_results

                sig { params(max_num_results: Integer).void }
                attr_writer :max_num_results

                sig do
                  params(
                    bucket_ids: T::Array[String],
                    max_num_results: Integer
                  ).returns(T.attached_class)
                end
                def self.new(
                  bucket_ids:,
                  # The maximum number of results to retrieve as context for the language model.
                  max_num_results: nil
                )
                end

                sig do
                  override.returns(
                    { bucket_ids: T::Array[String], max_num_results: Integer }
                  )
                end
                def to_hash
                end
              end
            end

            sig do
              override.returns(
                T::Array[
                  Telnyx::Calls::ActionAnswerParams::Assistant::Tool::Variants
                ]
              )
            end
            def self.variants
            end
          end
        end

        # The list of comma-separated codecs in a preferred order for the forked media to
        # be received.
        module PreferredCodecs
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::Calls::ActionAnswerParams::PreferredCodecs)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          G722_PCMU_PCMA_G729_OPUS_VP8_H264 =
            T.let(
              :"G722,PCMU,PCMA,G729,OPUS,VP8,H264",
              Telnyx::Calls::ActionAnswerParams::PreferredCodecs::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Calls::ActionAnswerParams::PreferredCodecs::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Start recording automatically after an event. Disabled by default.
        module Record
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::Calls::ActionAnswerParams::Record)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          RECORD_FROM_ANSWER =
            T.let(
              :"record-from-answer",
              Telnyx::Calls::ActionAnswerParams::Record::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[Telnyx::Calls::ActionAnswerParams::Record::TaggedSymbol]
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
            T.type_alias do
              T.all(Symbol, Telnyx::Calls::ActionAnswerParams::RecordChannels)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          SINGLE =
            T.let(
              :single,
              Telnyx::Calls::ActionAnswerParams::RecordChannels::TaggedSymbol
            )
          DUAL =
            T.let(
              :dual,
              Telnyx::Calls::ActionAnswerParams::RecordChannels::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Calls::ActionAnswerParams::RecordChannels::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Defines the format of the recording ('wav' or 'mp3') when `record` is specified.
        module RecordFormat
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::Calls::ActionAnswerParams::RecordFormat)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          WAV =
            T.let(
              :wav,
              Telnyx::Calls::ActionAnswerParams::RecordFormat::TaggedSymbol
            )
          MP3 =
            T.let(
              :mp3,
              Telnyx::Calls::ActionAnswerParams::RecordFormat::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Calls::ActionAnswerParams::RecordFormat::TaggedSymbol
              ]
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
            T.type_alias do
              T.all(Symbol, Telnyx::Calls::ActionAnswerParams::RecordTrack)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          BOTH =
            T.let(
              :both,
              Telnyx::Calls::ActionAnswerParams::RecordTrack::TaggedSymbol
            )
          INBOUND =
            T.let(
              :inbound,
              Telnyx::Calls::ActionAnswerParams::RecordTrack::TaggedSymbol
            )
          OUTBOUND =
            T.let(
              :outbound,
              Telnyx::Calls::ActionAnswerParams::RecordTrack::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Calls::ActionAnswerParams::RecordTrack::TaggedSymbol
              ]
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
            T.type_alias do
              T.all(Symbol, Telnyx::Calls::ActionAnswerParams::RecordTrim)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          TRIM_SILENCE =
            T.let(
              :"trim-silence",
              Telnyx::Calls::ActionAnswerParams::RecordTrim::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Calls::ActionAnswerParams::RecordTrim::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Specifies which track should be streamed.
        module StreamTrack
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::Calls::ActionAnswerParams::StreamTrack)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          INBOUND_TRACK =
            T.let(
              :inbound_track,
              Telnyx::Calls::ActionAnswerParams::StreamTrack::TaggedSymbol
            )
          OUTBOUND_TRACK =
            T.let(
              :outbound_track,
              Telnyx::Calls::ActionAnswerParams::StreamTrack::TaggedSymbol
            )
          BOTH_TRACKS =
            T.let(
              :both_tracks,
              Telnyx::Calls::ActionAnswerParams::StreamTrack::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Calls::ActionAnswerParams::StreamTrack::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        class WebhookRetriesPolicy < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Calls::ActionAnswerParams::WebhookRetriesPolicy,
                Telnyx::Internal::AnyHash
              )
            end

          # Array of delays in milliseconds between retry attempts. Total sum cannot exceed
          # 60000ms.
          sig { returns(T.nilable(T::Array[Integer])) }
          attr_reader :retries_ms

          sig { params(retries_ms: T::Array[Integer]).void }
          attr_writer :retries_ms

          sig do
            params(retries_ms: T::Array[Integer]).returns(T.attached_class)
          end
          def self.new(
            # Array of delays in milliseconds between retry attempts. Total sum cannot exceed
            # 60000ms.
            retries_ms: nil
          )
          end

          sig { override.returns({ retries_ms: T::Array[Integer] }) }
          def to_hash
          end
        end

        # HTTP request type used for `webhook_url`.
        module WebhookURLMethod
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::Calls::ActionAnswerParams::WebhookURLMethod)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          POST =
            T.let(
              :POST,
              Telnyx::Calls::ActionAnswerParams::WebhookURLMethod::TaggedSymbol
            )
          GET =
            T.let(
              :GET,
              Telnyx::Calls::ActionAnswerParams::WebhookURLMethod::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Calls::ActionAnswerParams::WebhookURLMethod::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # HTTP request method to invoke `webhook_urls`.
        module WebhookURLsMethod
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::Calls::ActionAnswerParams::WebhookURLsMethod
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          POST =
            T.let(
              :POST,
              Telnyx::Calls::ActionAnswerParams::WebhookURLsMethod::TaggedSymbol
            )
          GET =
            T.let(
              :GET,
              Telnyx::Calls::ActionAnswerParams::WebhookURLsMethod::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Calls::ActionAnswerParams::WebhookURLsMethod::TaggedSymbol
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

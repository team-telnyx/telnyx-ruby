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
        #   @return [Telnyx::Models::Calls::ActionAnswerParams::Assistant, nil]
        optional :assistant, -> { Telnyx::Calls::ActionAnswerParams::Assistant }

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

        # @!attribute custom_headers
        #   Custom headers to be added to the SIP INVITE response.
        #
        #   @return [Array<Telnyx::Models::CustomSipHeader>, nil]
        optional :custom_headers, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::CustomSipHeader] }

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

        # @!method initialize(call_control_id:, assistant: nil, billing_group_id: nil, client_state: nil, command_id: nil, custom_headers: nil, preferred_codecs: nil, record: nil, record_channels: nil, record_custom_file_name: nil, record_format: nil, record_max_length: nil, record_timeout_secs: nil, record_track: nil, record_trim: nil, send_silence_when_idle: nil, sip_headers: nil, sound_modifications: nil, stream_bidirectional_codec: nil, stream_bidirectional_mode: nil, stream_bidirectional_target_legs: nil, stream_codec: nil, stream_track: nil, stream_url: nil, transcription: nil, transcription_config: nil, webhook_retries_policies: nil, webhook_url: nil, webhook_url_method: nil, webhook_urls: nil, webhook_urls_method: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::Calls::ActionAnswerParams} for more details.
        #
        #   @param call_control_id [String]
        #
        #   @param assistant [Telnyx::Models::Calls::ActionAnswerParams::Assistant] AI Assistant configuration. All fields except `id` are optional — the assistant'
        #
        #   @param billing_group_id [String] Use this field to set the Billing Group ID for the call. Must be a valid and exi
        #
        #   @param client_state [String] Use this field to add state to every subsequent webhook. It must be a valid Base
        #
        #   @param command_id [String] Use this field to avoid duplicate commands. Telnyx will ignore any command with
        #
        #   @param custom_headers [Array<Telnyx::Models::CustomSipHeader>] Custom headers to be added to the SIP INVITE response.
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

        class Assistant < Telnyx::Internal::Type::BaseModel
          # @!attribute id
          #   The identifier of the AI assistant to use.
          #
          #   @return [String]
          required :id, String

          # @!attribute dynamic_variables
          #   Map of dynamic variables and their default values. Dynamic variables can be
          #   referenced in instructions, greeting, and tool definitions using the
          #   `{{variable_name}}` syntax. Call-control-agent automatically merges in
          #   `telnyx_call_*` variables (telnyx_call_to, telnyx_call_from,
          #   telnyx_conversation_channel, telnyx_agent_target, telnyx_end_user_target,
          #   telnyx_call_caller_id_name) and custom header variables.
          #
          #   @return [Hash{Symbol=>String, Float, Boolean}, nil]
          optional :dynamic_variables,
                   -> { Telnyx::Internal::Type::HashOf[union: Telnyx::Calls::ActionAnswerParams::Assistant::DynamicVariable] }

          # @!attribute external_llm
          #   External LLM configuration for bringing your own LLM endpoint.
          #
          #   @return [Object, nil]
          optional :external_llm, Telnyx::Internal::Type::Unknown

          # @!attribute fallback_config
          #   Fallback LLM configuration used when the primary LLM provider is unavailable.
          #
          #   @return [Object, nil]
          optional :fallback_config, Telnyx::Internal::Type::Unknown

          # @!attribute greeting
          #   Initial greeting text spoken when the assistant starts. Can be plain text for
          #   any voice or SSML for `AWS.Polly.<voice_id>` voices. There is a 3,000 character
          #   limit.
          #
          #   @return [String, nil]
          optional :greeting, String

          # @!attribute instructions
          #   System instructions for the voice assistant. Can be templated with
          #   [dynamic variables](https://developers.telnyx.com/docs/inference/ai-assistants/dynamic-variables).
          #   This will overwrite the instructions set in the assistant configuration.
          #
          #   @return [String, nil]
          optional :instructions, String

          # @!attribute llm_api_key_ref
          #   Integration secret identifier for the LLM provider API key. Use this field to
          #   reference an
          #   [integration secret](https://developers.telnyx.com/api/secrets-manager/integration-secrets/create-integration-secret)
          #   containing your LLM provider API key. Supports any LLM provider (OpenAI,
          #   Anthropic, etc.).
          #
          #   @return [String, nil]
          optional :llm_api_key_ref, String

          # @!attribute mcp_servers
          #   MCP (Model Context Protocol) server configurations for extending the assistant's
          #   capabilities with external tools and data sources.
          #
          #   @return [Array<Object>, nil]
          optional :mcp_servers, Telnyx::Internal::Type::ArrayOf[Telnyx::Internal::Type::Unknown]

          # @!attribute model
          #   LLM model override for this call. If omitted, the assistant's configured model
          #   is used.
          #
          #   @return [String, nil]
          optional :model, String

          # @!attribute name
          #   Assistant name override for this call.
          #
          #   @return [String, nil]
          optional :name, String

          # @!attribute observability_settings
          #   Observability configuration for the assistant session, including Langfuse
          #   integration for tracing and monitoring.
          #
          #   @return [Object, nil]
          optional :observability_settings, Telnyx::Internal::Type::Unknown

          # @!attribute openai_api_key_ref
          #   @deprecated
          #
          #   Deprecated — use `llm_api_key_ref` instead. Integration secret identifier for
          #   the OpenAI API key. This field is maintained for backward compatibility;
          #   `llm_api_key_ref` is the canonical field name and supports all LLM providers.
          #
          #   @return [String, nil]
          optional :openai_api_key_ref, String

          # @!attribute tools
          #   Inline tool definitions available to the assistant (webhook, retrieval,
          #   transfer, hangup, etc.). Overrides the assistant's stored tools if provided.
          #
          #   @return [Array<Telnyx::Models::Calls::ActionAnswerParams::Assistant::Tool::BookAppointment, Telnyx::Models::Calls::ActionAnswerParams::Assistant::Tool::CheckAvailability, Telnyx::Models::AI::WebhookTool, Telnyx::Models::AI::HangupTool, Telnyx::Models::AI::TransferTool, Telnyx::Models::Calls::ActionAnswerParams::Assistant::Tool::Retrieval>, nil]
          optional :tools,
                   -> { Telnyx::Internal::Type::ArrayOf[union: Telnyx::Calls::ActionAnswerParams::Assistant::Tool] }

          # @!method initialize(id:, dynamic_variables: nil, external_llm: nil, fallback_config: nil, greeting: nil, instructions: nil, llm_api_key_ref: nil, mcp_servers: nil, model: nil, name: nil, observability_settings: nil, openai_api_key_ref: nil, tools: nil)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::Calls::ActionAnswerParams::Assistant} for more details.
          #
          #   AI Assistant configuration. All fields except `id` are optional — the
          #   assistant's stored configuration will be used as fallback for any omitted
          #   fields.
          #
          #   @param id [String] The identifier of the AI assistant to use.
          #
          #   @param dynamic_variables [Hash{Symbol=>String, Float, Boolean}] Map of dynamic variables and their default values. Dynamic variables can be refe
          #
          #   @param external_llm [Object] External LLM configuration for bringing your own LLM endpoint.
          #
          #   @param fallback_config [Object] Fallback LLM configuration used when the primary LLM provider is unavailable.
          #
          #   @param greeting [String] Initial greeting text spoken when the assistant starts. Can be plain text for an
          #
          #   @param instructions [String] System instructions for the voice assistant. Can be templated with [dynamic vari
          #
          #   @param llm_api_key_ref [String] Integration secret identifier for the LLM provider API key. Use this field to re
          #
          #   @param mcp_servers [Array<Object>] MCP (Model Context Protocol) server configurations for extending the assistant's
          #
          #   @param model [String] LLM model override for this call. If omitted, the assistant's configured model i
          #
          #   @param name [String] Assistant name override for this call.
          #
          #   @param observability_settings [Object] Observability configuration for the assistant session, including Langfuse integr
          #
          #   @param openai_api_key_ref [String] Deprecated — use `llm_api_key_ref` instead. Integration secret identifier for th
          #
          #   @param tools [Array<Telnyx::Models::Calls::ActionAnswerParams::Assistant::Tool::BookAppointment, Telnyx::Models::Calls::ActionAnswerParams::Assistant::Tool::CheckAvailability, Telnyx::Models::AI::WebhookTool, Telnyx::Models::AI::HangupTool, Telnyx::Models::AI::TransferTool, Telnyx::Models::Calls::ActionAnswerParams::Assistant::Tool::Retrieval>] Inline tool definitions available to the assistant (webhook, retrieval, transfer

          module DynamicVariable
            extend Telnyx::Internal::Type::Union

            variant String

            variant Float

            variant Telnyx::Internal::Type::Boolean

            # @!method self.variants
            #   @return [Array(String, Float, Boolean)]
          end

          module Tool
            extend Telnyx::Internal::Type::Union

            discriminator :type

            variant :book_appointment, -> { Telnyx::Calls::ActionAnswerParams::Assistant::Tool::BookAppointment }

            variant :check_availability, -> { Telnyx::Calls::ActionAnswerParams::Assistant::Tool::CheckAvailability }

            variant :webhook, -> { Telnyx::AI::WebhookTool }

            variant :hangup, -> { Telnyx::AI::HangupTool }

            variant :transfer, -> { Telnyx::AI::TransferTool }

            variant :retrieval, -> { Telnyx::Calls::ActionAnswerParams::Assistant::Tool::Retrieval }

            class BookAppointment < Telnyx::Internal::Type::BaseModel
              # @!attribute book_appointment
              #
              #   @return [Telnyx::Models::Calls::ActionAnswerParams::Assistant::Tool::BookAppointment::BookAppointment]
              required :book_appointment,
                       -> { Telnyx::Calls::ActionAnswerParams::Assistant::Tool::BookAppointment::BookAppointment }

              # @!attribute type
              #
              #   @return [Symbol, :book_appointment]
              required :type, const: :book_appointment

              # @!method initialize(book_appointment:, type: :book_appointment)
              #   @param book_appointment [Telnyx::Models::Calls::ActionAnswerParams::Assistant::Tool::BookAppointment::BookAppointment]
              #   @param type [Symbol, :book_appointment]

              # @see Telnyx::Models::Calls::ActionAnswerParams::Assistant::Tool::BookAppointment#book_appointment
              class BookAppointment < Telnyx::Internal::Type::BaseModel
                # @!attribute api_key_ref
                #   Reference to an integration secret that contains your Cal.com API key. You would
                #   pass the `identifier` for an integration secret
                #   [/v2/integration_secrets](https://developers.telnyx.com/api/secrets-manager/integration-secrets/create-integration-secret)
                #   that refers to your Cal.com API key.
                #
                #   @return [String]
                required :api_key_ref, String

                # @!attribute event_type_id
                #   Event Type ID for which slots are being fetched.
                #   [cal.com](https://cal.com/docs/api-reference/v2/bookings/create-a-booking#body-event-type-id)
                #
                #   @return [Integer]
                required :event_type_id, Integer

                # @!attribute attendee_name
                #   The name of the attendee
                #   [cal.com](https://cal.com/docs/api-reference/v2/bookings/create-a-booking#body-attendee-name).
                #   If not provided, the assistant will ask for the attendee's name.
                #
                #   @return [String, nil]
                optional :attendee_name, String

                # @!attribute attendee_timezone
                #   The timezone of the attendee
                #   [cal.com](https://cal.com/docs/api-reference/v2/bookings/create-a-booking#body-attendee-timezone).
                #   If not provided, the assistant will ask for the attendee's timezone.
                #
                #   @return [String, nil]
                optional :attendee_timezone, String

                # @!method initialize(api_key_ref:, event_type_id:, attendee_name: nil, attendee_timezone: nil)
                #   Some parameter documentations has been truncated, see
                #   {Telnyx::Models::Calls::ActionAnswerParams::Assistant::Tool::BookAppointment::BookAppointment}
                #   for more details.
                #
                #   @param api_key_ref [String] Reference to an integration secret that contains your Cal.com API key. You would
                #
                #   @param event_type_id [Integer] Event Type ID for which slots are being fetched. [cal.com](https://cal.com/docs/
                #
                #   @param attendee_name [String] The name of the attendee [cal.com](https://cal.com/docs/api-reference/v2/booking
                #
                #   @param attendee_timezone [String] The timezone of the attendee [cal.com](https://cal.com/docs/api-reference/v2/boo
              end
            end

            class CheckAvailability < Telnyx::Internal::Type::BaseModel
              # @!attribute check_availability
              #
              #   @return [Telnyx::Models::Calls::ActionAnswerParams::Assistant::Tool::CheckAvailability::CheckAvailability]
              required :check_availability,
                       -> { Telnyx::Calls::ActionAnswerParams::Assistant::Tool::CheckAvailability::CheckAvailability }

              # @!attribute type
              #
              #   @return [Symbol, :check_availability]
              required :type, const: :check_availability

              # @!method initialize(check_availability:, type: :check_availability)
              #   @param check_availability [Telnyx::Models::Calls::ActionAnswerParams::Assistant::Tool::CheckAvailability::CheckAvailability]
              #   @param type [Symbol, :check_availability]

              # @see Telnyx::Models::Calls::ActionAnswerParams::Assistant::Tool::CheckAvailability#check_availability
              class CheckAvailability < Telnyx::Internal::Type::BaseModel
                # @!attribute api_key_ref
                #   Reference to an integration secret that contains your Cal.com API key. You would
                #   pass the `identifier` for an integration secret
                #   [/v2/integration_secrets](https://developers.telnyx.com/api/secrets-manager/integration-secrets/create-integration-secret)
                #   that refers to your Cal.com API key.
                #
                #   @return [String]
                required :api_key_ref, String

                # @!attribute event_type_id
                #   Event Type ID for which slots are being fetched.
                #   [cal.com](https://cal.com/docs/api-reference/v2/slots/get-available-slots#parameter-event-type-id)
                #
                #   @return [Integer]
                required :event_type_id, Integer

                # @!method initialize(api_key_ref:, event_type_id:)
                #   Some parameter documentations has been truncated, see
                #   {Telnyx::Models::Calls::ActionAnswerParams::Assistant::Tool::CheckAvailability::CheckAvailability}
                #   for more details.
                #
                #   @param api_key_ref [String] Reference to an integration secret that contains your Cal.com API key. You would
                #
                #   @param event_type_id [Integer] Event Type ID for which slots are being fetched. [cal.com](https://cal.com/docs/
              end
            end

            class Retrieval < Telnyx::Internal::Type::BaseModel
              # @!attribute retrieval
              #
              #   @return [Telnyx::Models::Calls::ActionAnswerParams::Assistant::Tool::Retrieval::Retrieval]
              required :retrieval, -> { Telnyx::Calls::ActionAnswerParams::Assistant::Tool::Retrieval::Retrieval }

              # @!attribute type
              #
              #   @return [Symbol, :retrieval]
              required :type, const: :retrieval

              # @!method initialize(retrieval:, type: :retrieval)
              #   @param retrieval [Telnyx::Models::Calls::ActionAnswerParams::Assistant::Tool::Retrieval::Retrieval]
              #   @param type [Symbol, :retrieval]

              # @see Telnyx::Models::Calls::ActionAnswerParams::Assistant::Tool::Retrieval#retrieval
              class Retrieval < Telnyx::Internal::Type::BaseModel
                # @!attribute bucket_ids
                #
                #   @return [Array<String>]
                required :bucket_ids, Telnyx::Internal::Type::ArrayOf[String]

                # @!attribute max_num_results
                #   The maximum number of results to retrieve as context for the language model.
                #
                #   @return [Integer, nil]
                optional :max_num_results, Integer

                # @!method initialize(bucket_ids:, max_num_results: nil)
                #   @param bucket_ids [Array<String>]
                #
                #   @param max_num_results [Integer] The maximum number of results to retrieve as context for the language model.
              end
            end

            # @!method self.variants
            #   @return [Array(Telnyx::Models::Calls::ActionAnswerParams::Assistant::Tool::BookAppointment, Telnyx::Models::Calls::ActionAnswerParams::Assistant::Tool::CheckAvailability, Telnyx::Models::AI::WebhookTool, Telnyx::Models::AI::HangupTool, Telnyx::Models::AI::TransferTool, Telnyx::Models::Calls::ActionAnswerParams::Assistant::Tool::Retrieval)]
          end
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

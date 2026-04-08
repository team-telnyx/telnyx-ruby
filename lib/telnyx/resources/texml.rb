# frozen_string_literal: true

module Telnyx
  module Resources
    # TeXML REST Commands
    class Texml
      # TeXML REST Commands
      # @return [Telnyx::Resources::Texml::Accounts]
      attr_reader :accounts

      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::TexmlInitiateAICallParams} for more details.
      #
      # Initiate an outbound AI call with warm-up support. Validates parameters, builds
      # an internal TeXML with an AI Assistant configuration, encodes instructions into
      # client state, and calls the dial API. The Twiml, Texml, and Url parameters are
      # not allowed and will result in a 422 error.
      #
      # @overload initiate_ai_call(connection_id, ai_assistant_id:, from:, to:, ai_assistant_dynamic_variables: nil, ai_assistant_version: nil, async_amd: nil, async_amd_status_callback: nil, async_amd_status_callback_method: nil, caller_id: nil, conversation_callback: nil, conversation_callback_method: nil, conversation_callbacks: nil, custom_headers: nil, detection_mode: nil, machine_detection: nil, machine_detection_silence_timeout: nil, machine_detection_speech_end_threshold: nil, machine_detection_speech_threshold: nil, machine_detection_timeout: nil, passports: nil, preferred_codecs: nil, record: nil, recording_channels: nil, recording_status_callback: nil, recording_status_callback_event: nil, recording_status_callback_method: nil, recording_timeout: nil, recording_track: nil, send_recording_url: nil, sip_auth_password: nil, sip_auth_username: nil, sip_region: nil, status_callback: nil, status_callback_event: nil, status_callback_method: nil, status_callbacks: nil, time_limit: nil, timeout_seconds: nil, trim: nil, request_options: {})
      #
      # @param connection_id [String] The ID of the TeXML connection to use for the call.
      #
      # @param ai_assistant_id [String] The ID of the AI assistant to use for the call.
      #
      # @param from [String] The phone number of the party initiating the call. Phone numbers are formatted w
      #
      # @param to [String] The phone number of the called party. Phone numbers are formatted with a `+` and
      #
      # @param ai_assistant_dynamic_variables [Hash{Symbol=>String}] Key-value map of dynamic variables to pass to the AI assistant.
      #
      # @param ai_assistant_version [String] The version of the AI assistant to use.
      #
      # @param async_amd [Boolean] Select whether to perform answering machine detection in the background. By defa
      #
      # @param async_amd_status_callback [String] URL destination for Telnyx to send AMD callback events to for the call.
      #
      # @param async_amd_status_callback_method [Symbol, Telnyx::Models::TexmlInitiateAICallParams::AsyncAmdStatusCallbackMethod] HTTP request type used for `AsyncAmdStatusCallback`.
      #
      # @param caller_id [String] To be used as the caller id name (SIP From Display Name) presented to the destin
      #
      # @param conversation_callback [String] URL destination for Telnyx to send conversation callback events to.
      #
      # @param conversation_callback_method [Symbol, Telnyx::Models::TexmlInitiateAICallParams::ConversationCallbackMethod] HTTP request type used for `ConversationCallback`.
      #
      # @param conversation_callbacks [Array<String>] An array of URL destinations for conversation callback events.
      #
      # @param custom_headers [Array<Telnyx::Models::TexmlInitiateAICallParams::CustomHeader>] Custom HTTP headers to be sent with the call. Each header should be an object wi
      #
      # @param detection_mode [Symbol, Telnyx::Models::TexmlInitiateAICallParams::DetectionMode] Allows you to choose between Premium and Standard detections.
      #
      # @param machine_detection [Symbol, Telnyx::Models::TexmlInitiateAICallParams::MachineDetection] Enables Answering Machine Detection.
      #
      # @param machine_detection_silence_timeout [Integer] If initial silence duration is greater than this value, consider it a machine. I
      #
      # @param machine_detection_speech_end_threshold [Integer] Silence duration threshold after a greeting message or voice for it be considere
      #
      # @param machine_detection_speech_threshold [Integer] Maximum threshold of a human greeting. If greeting longer than this value, consi
      #
      # @param machine_detection_timeout [Integer] Maximum timeout threshold in milliseconds for overall detection.
      #
      # @param passports [String] A string of passport identifiers to associate with the call.
      #
      # @param preferred_codecs [String] The list of comma-separated codecs to be offered on a call.
      #
      # @param record [Boolean] Whether to record the entire participant's call leg. Defaults to `false`.
      #
      # @param recording_channels [Symbol, Telnyx::Models::TexmlInitiateAICallParams::RecordingChannels] The number of channels in the final recording. Defaults to `mono`.
      #
      # @param recording_status_callback [String] The URL the recording callbacks will be sent to.
      #
      # @param recording_status_callback_event [String] The changes to the recording's state that should generate a call to `RecordingSt
      #
      # @param recording_status_callback_method [Symbol, Telnyx::Models::TexmlInitiateAICallParams::RecordingStatusCallbackMethod] HTTP request type used for `RecordingStatusCallback`. Defaults to `POST`.
      #
      # @param recording_timeout [Integer] The number of seconds that Telnyx will wait for the recording to be stopped if s
      #
      # @param recording_track [Symbol, Telnyx::Models::TexmlInitiateAICallParams::RecordingTrack] The audio track to record for the call. The default is `both`.
      #
      # @param send_recording_url [Boolean] Whether to send RecordingUrl in webhooks.
      #
      # @param sip_auth_password [String] The password to use for SIP authentication.
      #
      # @param sip_auth_username [String] The username to use for SIP authentication.
      #
      # @param sip_region [Symbol, Telnyx::Models::TexmlInitiateAICallParams::SipRegion] Defines the SIP region to be used for the call.
      #
      # @param status_callback [String] URL destination for Telnyx to send status callback events to for the call.
      #
      # @param status_callback_event [String] The call events for which Telnyx should send a webhook. Multiple events can be d
      #
      # @param status_callback_method [Symbol, Telnyx::Models::TexmlInitiateAICallParams::StatusCallbackMethod] HTTP request type used for `StatusCallback`.
      #
      # @param status_callbacks [Array<String>] An array of URL destinations for Telnyx to send status callback events to for th
      #
      # @param time_limit [Integer] The maximum duration of the call in seconds. The minimum value is 30 and the max
      #
      # @param timeout_seconds [Integer] The number of seconds to wait for the called party to answer the call before the
      #
      # @param trim [Symbol, Telnyx::Models::TexmlInitiateAICallParams::Trim] Whether to trim any leading and trailing silence from the recording. Defaults to
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::TexmlInitiateAICallResponse]
      #
      # @see Telnyx::Models::TexmlInitiateAICallParams
      def initiate_ai_call(connection_id, params)
        parsed, options = Telnyx::TexmlInitiateAICallParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["texml/ai_calls/%1$s", connection_id],
          body: parsed,
          model: Telnyx::Models::TexmlInitiateAICallResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::TexmlSecretsParams} for more details.
      #
      # Create a TeXML secret which can be later used as a Dynamic Parameter for TeXML
      # when using Mustache Templates in your TeXML. In your TeXML you will be able to
      # use your secret name, and this name will be replaced by the actual secret value
      # when processing the TeXML on Telnyx side. The secrets are not visible in any
      # logs.
      #
      # @overload secrets(name:, value:, request_options: {})
      #
      # @param name [String] Name used as a reference for the secret, if the name already exists within the a
      #
      # @param value [String] Secret value which will be used when rendering the TeXML template
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::TexmlSecretsResponse]
      #
      # @see Telnyx::Models::TexmlSecretsParams
      def secrets(params)
        parsed, options = Telnyx::TexmlSecretsParams.dump_request(params)
        @client.request(
          method: :post,
          path: "texml/secrets",
          body: parsed,
          model: Telnyx::Models::TexmlSecretsResponse,
          options: options
        )
      end

      # @api private
      #
      # @param client [Telnyx::Client]
      def initialize(client:)
        @client = client
        @accounts = Telnyx::Resources::Texml::Accounts.new(client: client)
      end
    end
  end
end

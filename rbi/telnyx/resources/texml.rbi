# typed: strong

module Telnyx
  module Resources
    # TeXML REST Commands
    class Texml
      # TeXML REST Commands
      sig { returns(Telnyx::Resources::Texml::Accounts) }
      attr_reader :accounts

      # Initiate an outbound AI call with warm-up support. Validates parameters, builds
      # an internal TeXML with an AI Assistant configuration, encodes instructions into
      # client state, and calls the dial API. The Twiml, Texml, and Url parameters are
      # not allowed and will result in a 422 error.
      sig do
        params(
          connection_id: String,
          ai_assistant_id: String,
          from: String,
          to: String,
          ai_assistant_dynamic_variables: T::Hash[Symbol, String],
          ai_assistant_version: String,
          async_amd: T::Boolean,
          async_amd_status_callback: String,
          async_amd_status_callback_method:
            Telnyx::TexmlInitiateAICallParams::AsyncAmdStatusCallbackMethod::OrSymbol,
          caller_id: String,
          conversation_callback: String,
          conversation_callback_method:
            Telnyx::TexmlInitiateAICallParams::ConversationCallbackMethod::OrSymbol,
          conversation_callbacks: T::Array[String],
          custom_headers:
            T::Array[Telnyx::TexmlInitiateAICallParams::CustomHeader::OrHash],
          detection_mode:
            Telnyx::TexmlInitiateAICallParams::DetectionMode::OrSymbol,
          machine_detection:
            Telnyx::TexmlInitiateAICallParams::MachineDetection::OrSymbol,
          machine_detection_silence_timeout: Integer,
          machine_detection_speech_end_threshold: Integer,
          machine_detection_speech_threshold: Integer,
          machine_detection_timeout: Integer,
          passports: String,
          preferred_codecs: String,
          record: T::Boolean,
          recording_channels:
            Telnyx::TexmlInitiateAICallParams::RecordingChannels::OrSymbol,
          recording_status_callback: String,
          recording_status_callback_event: String,
          recording_status_callback_method:
            Telnyx::TexmlInitiateAICallParams::RecordingStatusCallbackMethod::OrSymbol,
          recording_timeout: Integer,
          recording_track:
            Telnyx::TexmlInitiateAICallParams::RecordingTrack::OrSymbol,
          send_recording_url: T::Boolean,
          sip_auth_password: String,
          sip_auth_username: String,
          sip_region: Telnyx::TexmlInitiateAICallParams::SipRegion::OrSymbol,
          status_callback: String,
          status_callback_event: String,
          status_callback_method:
            Telnyx::TexmlInitiateAICallParams::StatusCallbackMethod::OrSymbol,
          status_callbacks: T::Array[String],
          time_limit: Integer,
          timeout_seconds: Integer,
          trim: Telnyx::TexmlInitiateAICallParams::Trim::OrSymbol,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::TexmlInitiateAICallResponse)
      end
      def initiate_ai_call(
        # The ID of the TeXML connection to use for the call.
        connection_id,
        # The ID of the AI assistant to use for the call.
        ai_assistant_id:,
        # The phone number of the party initiating the call. Phone numbers are formatted
        # with a `+` and country code.
        from:,
        # The phone number of the called party. Phone numbers are formatted with a `+` and
        # country code.
        to:,
        # Key-value map of dynamic variables to pass to the AI assistant.
        ai_assistant_dynamic_variables: nil,
        # The version of the AI assistant to use.
        ai_assistant_version: nil,
        # Select whether to perform answering machine detection in the background. By
        # default execution is blocked until Answering Machine Detection is completed.
        async_amd: nil,
        # URL destination for Telnyx to send AMD callback events to for the call.
        async_amd_status_callback: nil,
        # HTTP request type used for `AsyncAmdStatusCallback`.
        async_amd_status_callback_method: nil,
        # To be used as the caller id name (SIP From Display Name) presented to the
        # destination (`To` number). The string should have a maximum of 128 characters,
        # containing only letters, numbers, spaces, and `-_~!.+` special characters. If
        # omitted, the display name will be the same as the number in the `From` field.
        caller_id: nil,
        # URL destination for Telnyx to send conversation callback events to.
        conversation_callback: nil,
        # HTTP request type used for `ConversationCallback`.
        conversation_callback_method: nil,
        # An array of URL destinations for conversation callback events.
        conversation_callbacks: nil,
        # Custom HTTP headers to be sent with the call. Each header should be an object
        # with 'name' and 'value' properties.
        custom_headers: nil,
        # Allows you to choose between Premium and Standard detections.
        detection_mode: nil,
        # Enables Answering Machine Detection.
        machine_detection: nil,
        # If initial silence duration is greater than this value, consider it a machine.
        # Ignored when `premium` detection is used.
        machine_detection_silence_timeout: nil,
        # Silence duration threshold after a greeting message or voice for it be
        # considered human. Ignored when `premium` detection is used.
        machine_detection_speech_end_threshold: nil,
        # Maximum threshold of a human greeting. If greeting longer than this value,
        # considered machine. Ignored when `premium` detection is used.
        machine_detection_speech_threshold: nil,
        # Maximum timeout threshold in milliseconds for overall detection.
        machine_detection_timeout: nil,
        # A string of passport identifiers to associate with the call.
        passports: nil,
        # The list of comma-separated codecs to be offered on a call.
        preferred_codecs: nil,
        # Whether to record the entire participant's call leg. Defaults to `false`.
        record: nil,
        # The number of channels in the final recording. Defaults to `mono`.
        recording_channels: nil,
        # The URL the recording callbacks will be sent to.
        recording_status_callback: nil,
        # The changes to the recording's state that should generate a call to
        # `RecordingStatusCallback`. Can be: `in-progress`, `completed` and `absent`.
        # Separate multiple values with a space. Defaults to `completed`.
        recording_status_callback_event: nil,
        # HTTP request type used for `RecordingStatusCallback`. Defaults to `POST`.
        recording_status_callback_method: nil,
        # The number of seconds that Telnyx will wait for the recording to be stopped if
        # silence is detected. The timer only starts when the speech is detected. The
        # minimum value is 0. The default value is 0 (infinite).
        recording_timeout: nil,
        # The audio track to record for the call. The default is `both`.
        recording_track: nil,
        # Whether to send RecordingUrl in webhooks.
        send_recording_url: nil,
        # The password to use for SIP authentication.
        sip_auth_password: nil,
        # The username to use for SIP authentication.
        sip_auth_username: nil,
        # Defines the SIP region to be used for the call.
        sip_region: nil,
        # URL destination for Telnyx to send status callback events to for the call.
        status_callback: nil,
        # The call events for which Telnyx should send a webhook. Multiple events can be
        # defined when separated by a space. Valid values: initiated, ringing, answered,
        # completed.
        status_callback_event: nil,
        # HTTP request type used for `StatusCallback`.
        status_callback_method: nil,
        # An array of URL destinations for Telnyx to send status callback events to for
        # the call.
        status_callbacks: nil,
        # The maximum duration of the call in seconds. The minimum value is 30 and the
        # maximum value is 14400 (4 hours). Default is 14400 seconds.
        time_limit: nil,
        # The number of seconds to wait for the called party to answer the call before the
        # call is canceled. The minimum value is 5 and the maximum value is 120. Default
        # is 30 seconds.
        timeout_seconds: nil,
        # Whether to trim any leading and trailing silence from the recording. Defaults to
        # `trim-silence`.
        trim: nil,
        request_options: {}
      )
      end

      # Create a TeXML secret which can be later used as a Dynamic Parameter for TeXML
      # when using Mustache Templates in your TeXML. In your TeXML you will be able to
      # use your secret name, and this name will be replaced by the actual secret value
      # when processing the TeXML on Telnyx side. The secrets are not visible in any
      # logs.
      sig do
        params(
          name: String,
          value: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::TexmlSecretsResponse)
      end
      def secrets(
        # Name used as a reference for the secret, if the name already exists within the
        # account its value will be replaced
        name:,
        # Secret value which will be used when rendering the TeXML template
        value:,
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

# typed: strong

module Telnyx
  module Resources
    class Texml
      class Calls
        # Update TeXML call. Please note that the keys present in the payload MUST BE
        # formatted in CamelCase as specified in the example.
        sig do
          params(
            call_sid: String,
            fallback_method:
              Telnyx::Texml::Accounts::UpdateCall::FallbackMethod::OrSymbol,
            fallback_url: String,
            method_: Telnyx::Texml::Accounts::UpdateCall::Method::OrSymbol,
            status: String,
            status_callback: String,
            status_callback_method:
              Telnyx::Texml::Accounts::UpdateCall::StatusCallbackMethod::OrSymbol,
            texml: String,
            url: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::Texml::CallUpdateResponse)
        end
        def update(
          # The CallSid that identifies the call to update.
          call_sid,
          # HTTP request type used for `FallbackUrl`.
          fallback_method: nil,
          # A failover URL for which Telnyx will retrieve the TeXML call instructions if the
          # Url is not responding.
          fallback_url: nil,
          # HTTP request type used for `Url`.
          method_: nil,
          # The value to set the call status to. Setting the status to completed ends the
          # call.
          status: nil,
          # URL destination for Telnyx to send status callback events to for the call.
          status_callback: nil,
          # HTTP request type used for `StatusCallback`.
          status_callback_method: nil,
          # TeXML to replace the current one with.
          texml: nil,
          # The URL where TeXML will make a request to retrieve a new set of TeXML
          # instructions to continue the call flow.
          url: nil,
          request_options: {}
        )
        end

        # Initiate an outbound TeXML call. Telnyx will request TeXML from the XML Request
        # URL configured for the connection in the Mission Control Portal.
        sig do
          params(
            application_id: String,
            from: String,
            to: String,
            async_amd: T::Boolean,
            async_amd_status_callback: String,
            async_amd_status_callback_method:
              Telnyx::Texml::CallInitiateParams::AsyncAmdStatusCallbackMethod::OrSymbol,
            caller_id: String,
            cancel_playback_on_detect_message_end: T::Boolean,
            cancel_playback_on_machine_detection: T::Boolean,
            detection_mode:
              Telnyx::Texml::CallInitiateParams::DetectionMode::OrSymbol,
            fallback_url: String,
            machine_detection:
              Telnyx::Texml::CallInitiateParams::MachineDetection::OrSymbol,
            machine_detection_silence_timeout: Integer,
            machine_detection_speech_end_threshold: Integer,
            machine_detection_speech_threshold: Integer,
            machine_detection_timeout: Integer,
            preferred_codecs: String,
            record: T::Boolean,
            recording_channels:
              Telnyx::Texml::CallInitiateParams::RecordingChannels::OrSymbol,
            recording_status_callback: String,
            recording_status_callback_event: String,
            recording_status_callback_method:
              Telnyx::Texml::CallInitiateParams::RecordingStatusCallbackMethod::OrSymbol,
            recording_timeout: Integer,
            recording_track:
              Telnyx::Texml::CallInitiateParams::RecordingTrack::OrSymbol,
            sip_auth_password: String,
            sip_auth_username: String,
            status_callback: String,
            status_callback_event:
              Telnyx::Texml::CallInitiateParams::StatusCallbackEvent::OrSymbol,
            status_callback_method:
              Telnyx::Texml::CallInitiateParams::StatusCallbackMethod::OrSymbol,
            trim: Telnyx::Texml::CallInitiateParams::Trim::OrSymbol,
            url: String,
            url_method: Telnyx::Texml::CallInitiateParams::URLMethod::OrSymbol,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::Texml::CallInitiateResponse)
        end
        def initiate(
          # The ID of the TeXML application used for the call.
          application_id,
          # The phone number of the party that initiated the call. Phone numbers are
          # formatted with a `+` and country code.
          from:,
          # The phone number of the called party. Phone numbers are formatted with a `+` and
          # country code.
          to:,
          # Select whether to perform answering machine detection in the background. By
          # default execution is blocked until Answering Machine Detection is completed.
          async_amd: nil,
          # URL destination for Telnyx to send AMD callback events to for the call.
          async_amd_status_callback: nil,
          # HTTP request type used for `AsyncAmdStatusCallback`. The default value is
          # inherited from TeXML Application setting.
          async_amd_status_callback_method: nil,
          # To be used as the caller id name (SIP From Display Name) presented to the
          # destination (`To` number). The string should have a maximum of 128 characters,
          # containing only letters, numbers, spaces, and `-_~!.+` special characters. If
          # ommited, the display name will be the same as the number in the `From` field.
          caller_id: nil,
          # Whether to cancel ongoing playback on `greeting ended` detection. Defaults to
          # `true`.
          cancel_playback_on_detect_message_end: nil,
          # Whether to cancel ongoing playback on `machine` detection. Defaults to `true`.
          cancel_playback_on_machine_detection: nil,
          # Allows you to chose between Premium and Standard detections.
          detection_mode: nil,
          # A failover URL for which Telnyx will retrieve the TeXML call instructions if the
          # `Url` is not responding.
          fallback_url: nil,
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
          # The list of comma-separated codecs to be offered on a call.
          preferred_codecs: nil,
          # Whether to record the entire participant's call leg. Defaults to `false`.
          record: nil,
          # The number of channels in the final recording. Defaults to `mono`.
          recording_channels: nil,
          # The URL the recording callbacks will be sent to.
          recording_status_callback: nil,
          # The changes to the recording's state that should generate a call to
          # `RecoridngStatusCallback`. Can be: `in-progress`, `completed` and `absent`.
          # Separate multiple values with a space. Defaults to `completed`.
          recording_status_callback_event: nil,
          # HTTP request type used for `RecordingStatusCallback`. Defaults to `POST`.
          recording_status_callback_method: nil,
          # The number of seconds that Telnyx will wait for the recording to be stopped if
          # silence is detected. The timer only starts when the speech is detected. Please
          # note that the transcription is used to detect silence and the related charge
          # will be applied. The minimum value is 0. The default value is 0 (infinite)
          recording_timeout: nil,
          # The audio track to record for the call. The default is `both`.
          recording_track: nil,
          # The password to use for SIP authentication.
          sip_auth_password: nil,
          # The username to use for SIP authentication.
          sip_auth_username: nil,
          # URL destination for Telnyx to send status callback events to for the call.
          status_callback: nil,
          # The call events for which Telnyx should send a webhook. Multiple events can be
          # defined when separated by a space.
          status_callback_event: nil,
          # HTTP request type used for `StatusCallback`.
          status_callback_method: nil,
          # Whether to trim any leading and trailing silence from the recording. Defaults to
          # `trim-silence`.
          trim: nil,
          # The URL from which Telnyx will retrieve the TeXML call instructions.
          url: nil,
          # HTTP request type used for `Url`. The default value is inherited from TeXML
          # Application setting.
          url_method: nil,
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

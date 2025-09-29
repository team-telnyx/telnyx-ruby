# frozen_string_literal: true

module Telnyx
  module Resources
    class Texml
      class Calls
        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::Texml::CallUpdateParams} for more details.
        #
        # Update TeXML call. Please note that the keys present in the payload MUST BE
        # formatted in CamelCase as specified in the example.
        #
        # @overload update(call_sid, fallback_method: nil, fallback_url: nil, method_: nil, status: nil, status_callback: nil, status_callback_method: nil, texml: nil, url: nil, request_options: {})
        #
        # @param call_sid [String] The CallSid that identifies the call to update.
        #
        # @param fallback_method [Symbol, Telnyx::Models::Texml::Accounts::UpdateCall::FallbackMethod] HTTP request type used for `FallbackUrl`.
        #
        # @param fallback_url [String] A failover URL for which Telnyx will retrieve the TeXML call instructions if the
        #
        # @param method_ [Symbol, Telnyx::Models::Texml::Accounts::UpdateCall::Method] HTTP request type used for `Url`.
        #
        # @param status [String] The value to set the call status to. Setting the status to completed ends the ca
        #
        # @param status_callback [String] URL destination for Telnyx to send status callback events to for the call.
        #
        # @param status_callback_method [Symbol, Telnyx::Models::Texml::Accounts::UpdateCall::StatusCallbackMethod] HTTP request type used for `StatusCallback`.
        #
        # @param texml [String] TeXML to replace the current one with.
        #
        # @param url [String] The URL where TeXML will make a request to retrieve a new set of TeXML instructi
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Texml::CallUpdateResponse]
        #
        # @see Telnyx::Models::Texml::CallUpdateParams
        def update(call_sid, params = {})
          parsed, options = Telnyx::Texml::CallUpdateParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["texml/calls/%1$s/update", call_sid],
            body: parsed,
            model: Telnyx::Models::Texml::CallUpdateResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::Texml::CallInitiateParams} for more details.
        #
        # Initiate an outbound TeXML call. Telnyx will request TeXML from the XML Request
        # URL configured for the connection in the Mission Control Portal.
        #
        # @overload initiate(application_id, from:, to:, async_amd: nil, async_amd_status_callback: nil, async_amd_status_callback_method: nil, caller_id: nil, cancel_playback_on_detect_message_end: nil, cancel_playback_on_machine_detection: nil, detection_mode: nil, fallback_url: nil, machine_detection: nil, machine_detection_silence_timeout: nil, machine_detection_speech_end_threshold: nil, machine_detection_speech_threshold: nil, machine_detection_timeout: nil, preferred_codecs: nil, record: nil, recording_channels: nil, recording_status_callback: nil, recording_status_callback_event: nil, recording_status_callback_method: nil, recording_timeout: nil, recording_track: nil, sip_auth_password: nil, sip_auth_username: nil, status_callback: nil, status_callback_event: nil, status_callback_method: nil, trim: nil, url: nil, url_method: nil, request_options: {})
        #
        # @param application_id [String] The ID of the TeXML application used for the call.
        #
        # @param from [String] The phone number of the party that initiated the call. Phone numbers are formatt
        #
        # @param to [String] The phone number of the called party. Phone numbers are formatted with a `+` and
        #
        # @param async_amd [Boolean] Select whether to perform answering machine detection in the background. By defa
        #
        # @param async_amd_status_callback [String] URL destination for Telnyx to send AMD callback events to for the call.
        #
        # @param async_amd_status_callback_method [Symbol, Telnyx::Models::Texml::CallInitiateParams::AsyncAmdStatusCallbackMethod] HTTP request type used for `AsyncAmdStatusCallback`. The default value is inheri
        #
        # @param caller_id [String] To be used as the caller id name (SIP From Display Name) presented to the destin
        #
        # @param cancel_playback_on_detect_message_end [Boolean] Whether to cancel ongoing playback on `greeting ended` detection. Defaults to `t
        #
        # @param cancel_playback_on_machine_detection [Boolean] Whether to cancel ongoing playback on `machine` detection. Defaults to `true`.
        #
        # @param detection_mode [Symbol, Telnyx::Models::Texml::CallInitiateParams::DetectionMode] Allows you to chose between Premium and Standard detections.
        #
        # @param fallback_url [String] A failover URL for which Telnyx will retrieve the TeXML call instructions if the
        #
        # @param machine_detection [Symbol, Telnyx::Models::Texml::CallInitiateParams::MachineDetection] Enables Answering Machine Detection.
        #
        # @param machine_detection_silence_timeout [Integer] If initial silence duration is greater than this value, consider it a machine. I
        #
        # @param machine_detection_speech_end_threshold [Integer] Silence duration threshold after a greeting message or voice for it be considere
        #
        # @param machine_detection_speech_threshold [Integer] Maximum threshold of a human greeting. If greeting longer than this value, consi
        #
        # @param machine_detection_timeout [Integer] Maximum timeout threshold in milliseconds for overall detection.
        #
        # @param preferred_codecs [String] The list of comma-separated codecs to be offered on a call.
        #
        # @param record [Boolean] Whether to record the entire participant's call leg. Defaults to `false`.
        #
        # @param recording_channels [Symbol, Telnyx::Models::Texml::CallInitiateParams::RecordingChannels] The number of channels in the final recording. Defaults to `mono`.
        #
        # @param recording_status_callback [String] The URL the recording callbacks will be sent to.
        #
        # @param recording_status_callback_event [String] The changes to the recording's state that should generate a call to `RecoridngSt
        #
        # @param recording_status_callback_method [Symbol, Telnyx::Models::Texml::CallInitiateParams::RecordingStatusCallbackMethod] HTTP request type used for `RecordingStatusCallback`. Defaults to `POST`.
        #
        # @param recording_timeout [Integer] The number of seconds that Telnyx will wait for the recording to be stopped if s
        #
        # @param recording_track [Symbol, Telnyx::Models::Texml::CallInitiateParams::RecordingTrack] The audio track to record for the call. The default is `both`.
        #
        # @param sip_auth_password [String] The password to use for SIP authentication.
        #
        # @param sip_auth_username [String] The username to use for SIP authentication.
        #
        # @param status_callback [String] URL destination for Telnyx to send status callback events to for the call.
        #
        # @param status_callback_event [Symbol, Telnyx::Models::Texml::CallInitiateParams::StatusCallbackEvent] The call events for which Telnyx should send a webhook. Multiple events can be d
        #
        # @param status_callback_method [Symbol, Telnyx::Models::Texml::CallInitiateParams::StatusCallbackMethod] HTTP request type used for `StatusCallback`.
        #
        # @param trim [Symbol, Telnyx::Models::Texml::CallInitiateParams::Trim] Whether to trim any leading and trailing silence from the recording. Defaults to
        #
        # @param url [String] The URL from which Telnyx will retrieve the TeXML call instructions.
        #
        # @param url_method [Symbol, Telnyx::Models::Texml::CallInitiateParams::URLMethod] HTTP request type used for `Url`. The default value is inherited from TeXML Appl
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Texml::CallInitiateResponse]
        #
        # @see Telnyx::Models::Texml::CallInitiateParams
        def initiate(application_id, params)
          parsed, options = Telnyx::Texml::CallInitiateParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["texml/calls/%1$s", application_id],
            body: parsed,
            model: Telnyx::Models::Texml::CallInitiateResponse,
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

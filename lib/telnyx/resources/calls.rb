# frozen_string_literal: true

module Telnyx
  module Resources
    class Calls
      # @return [Telnyx::Resources::Calls::Actions]
      attr_reader :actions

      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::CallDialParams} for more details.
      #
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
      #
      # @overload dial(connection_id:, from:, to:, answering_machine_detection: nil, answering_machine_detection_config: nil, audio_url: nil, billing_group_id: nil, bridge_intent: nil, bridge_on_answer: nil, client_state: nil, command_id: nil, conference_config: nil, custom_headers: nil, dialogflow_config: nil, enable_dialogflow: nil, from_display_name: nil, link_to: nil, media_encryption: nil, media_name: nil, park_after_unbridge: nil, preferred_codecs: nil, record: nil, record_channels: nil, record_custom_file_name: nil, record_format: nil, record_max_length: nil, record_timeout_secs: nil, record_track: nil, record_trim: nil, send_silence_when_idle: nil, sip_auth_password: nil, sip_auth_username: nil, sip_headers: nil, sip_region: nil, sip_transport_protocol: nil, sound_modifications: nil, stream_auth_token: nil, stream_bidirectional_codec: nil, stream_bidirectional_mode: nil, stream_bidirectional_sampling_rate: nil, stream_bidirectional_target_legs: nil, stream_codec: nil, stream_establish_before_call_originate: nil, stream_track: nil, stream_url: nil, supervise_call_control_id: nil, supervisor_role: nil, time_limit_secs: nil, timeout_secs: nil, transcription: nil, transcription_config: nil, webhook_url: nil, webhook_url_method: nil, request_options: {})
      #
      # @param connection_id [String] The ID of the Call Control App (formerly ID of the connection) to be used when d
      #
      # @param from [String] The `from` number to be used as the caller id presented to the destination (`to`
      #
      # @param to [String, Array<String>] The DID or SIP URI to dial out to. Multiple DID or SIP URIs can be provided usin
      #
      # @param answering_machine_detection [Symbol, Telnyx::Models::CallDialParams::AnsweringMachineDetection] Enables Answering Machine Detection. Telnyx offers Premium and Standard detectio
      #
      # @param answering_machine_detection_config [Telnyx::Models::CallDialParams::AnsweringMachineDetectionConfig] Optional configuration parameters to modify 'answering_machine_detection' perfor
      #
      # @param audio_url [String] The URL of a file to be played back to the callee when the call is answered. The
      #
      # @param billing_group_id [String] Use this field to set the Billing Group ID for the call. Must be a valid and exi
      #
      # @param bridge_intent [Boolean] Indicates the intent to bridge this call with the call specified in link_to. Whe
      #
      # @param bridge_on_answer [Boolean] Whether to automatically bridge answered call to the call specified in link_to.
      #
      # @param client_state [String] Use this field to add state to every subsequent webhook. It must be a valid Base
      #
      # @param command_id [String] Use this field to avoid duplicate commands. Telnyx will ignore others Dial comma
      #
      # @param conference_config [Telnyx::Models::CallDialParams::ConferenceConfig] Optional configuration parameters to dial new participant into a conference.
      #
      # @param custom_headers [Array<Telnyx::Models::CustomSipHeader>] Custom headers to be added to the SIP INVITE.
      #
      # @param dialogflow_config [Telnyx::Models::DialogflowConfig]
      #
      # @param enable_dialogflow [Boolean] Enables Dialogflow for the current call. The default value is false.
      #
      # @param from_display_name [String] The `from_display_name` string to be used as the caller id name (SIP From Displa
      #
      # @param link_to [String] Use another call's control id for sharing the same call session id
      #
      # @param media_encryption [Symbol, Telnyx::Models::CallDialParams::MediaEncryption] Defines whether media should be encrypted on the call.
      #
      # @param media_name [String] The media_name of a file to be played back to the callee when the call is answer
      #
      # @param park_after_unbridge [String] If supplied with the value `self`, the current leg will be parked after unbridge
      #
      # @param preferred_codecs [String] The list of comma-separated codecs in a preferred order for the forked media to
      #
      # @param record [Symbol, Telnyx::Models::CallDialParams::Record] Start recording automatically after an event. Disabled by default.
      #
      # @param record_channels [Symbol, Telnyx::Models::CallDialParams::RecordChannels] Defines which channel should be recorded ('single' or 'dual') when `record` is s
      #
      # @param record_custom_file_name [String] The custom recording file name to be used instead of the default `call_leg_id`.
      #
      # @param record_format [Symbol, Telnyx::Models::CallDialParams::RecordFormat] Defines the format of the recording ('wav' or 'mp3') when `record` is specified.
      #
      # @param record_max_length [Integer] Defines the maximum length for the recording in seconds when `record` is specifi
      #
      # @param record_timeout_secs [Integer] The number of seconds that Telnyx will wait for the recording to be stopped if s
      #
      # @param record_track [Symbol, Telnyx::Models::CallDialParams::RecordTrack] The audio track to be recorded. Can be either `both`, `inbound` or `outbound`. I
      #
      # @param record_trim [Symbol, Telnyx::Models::CallDialParams::RecordTrim] When set to `trim-silence`, silence will be removed from the beginning and end o
      #
      # @param send_silence_when_idle [Boolean] Generate silence RTP packets when no transmission available.
      #
      # @param sip_auth_password [String] SIP Authentication password used for SIP challenges.
      #
      # @param sip_auth_username [String] SIP Authentication username used for SIP challenges.
      #
      # @param sip_headers [Array<Telnyx::Models::SipHeader>] SIP headers to be added to the SIP INVITE request. Currently only User-to-User h
      #
      # @param sip_region [Symbol, Telnyx::Models::CallDialParams::SipRegion] Defines the SIP region to be used for the call.
      #
      # @param sip_transport_protocol [Symbol, Telnyx::Models::CallDialParams::SipTransportProtocol] Defines SIP transport protocol to be used on the call.
      #
      # @param sound_modifications [Telnyx::Models::SoundModifications] Use this field to modify sound effects, for example adjust the pitch.
      #
      # @param stream_auth_token [String] An authentication token to be sent as part of the WebSocket connection when usin
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
      # @param stream_establish_before_call_originate [Boolean] Establish websocket connection before dialing the destination. This is useful fo
      #
      # @param stream_track [Symbol, Telnyx::Models::CallDialParams::StreamTrack] Specifies which track should be streamed.
      #
      # @param stream_url [String] The destination WebSocket address where the stream is going to be delivered.
      #
      # @param supervise_call_control_id [String] The call leg which will be supervised by the new call.
      #
      # @param supervisor_role [Symbol, Telnyx::Models::CallDialParams::SupervisorRole] The role of the supervisor call. 'barge' means that supervisor call hears and is
      #
      # @param time_limit_secs [Integer] Sets the maximum duration of a Call Control Leg in seconds. If the time limit is
      #
      # @param timeout_secs [Integer] The number of seconds that Telnyx will wait for the call to be answered by the d
      #
      # @param transcription [Boolean] Enable transcription upon call answer. The default value is false.
      #
      # @param transcription_config [Telnyx::Models::Calls::TranscriptionStartRequest]
      #
      # @param webhook_url [String] Use this field to override the URL for which Telnyx will send subsequent webhook
      #
      # @param webhook_url_method [Symbol, Telnyx::Models::CallDialParams::WebhookURLMethod] HTTP request type used for `webhook_url`.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::CallDialResponse]
      #
      # @see Telnyx::Models::CallDialParams
      def dial(params)
        parsed, options = Telnyx::CallDialParams.dump_request(params)
        @client.request(
          method: :post,
          path: "calls",
          body: parsed,
          model: Telnyx::Models::CallDialResponse,
          options: options
        )
      end

      # Returns the status of a call (data is available 10 minutes after call ended).
      #
      # @overload retrieve_status(call_control_id, request_options: {})
      #
      # @param call_control_id [String] Unique identifier and token for controlling the call
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::CallRetrieveStatusResponse]
      #
      # @see Telnyx::Models::CallRetrieveStatusParams
      def retrieve_status(call_control_id, params = {})
        @client.request(
          method: :get,
          path: ["calls/%1$s", call_control_id],
          model: Telnyx::Models::CallRetrieveStatusResponse,
          options: params[:request_options]
        )
      end

      # @api private
      #
      # @param client [Telnyx::Client]
      def initialize(client:)
        @client = client
        @actions = Telnyx::Resources::Calls::Actions.new(client: client)
      end
    end
  end
end

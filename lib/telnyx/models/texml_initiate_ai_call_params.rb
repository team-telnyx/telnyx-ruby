# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::Texml#initiate_ai_call
    class TexmlInitiateAICallParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute connection_id
      #
      #   @return [String]
      required :connection_id, String

      # @!attribute ai_assistant_id
      #   The ID of the AI assistant to use for the call.
      #
      #   @return [String]
      required :ai_assistant_id, String, api_name: :AIAssistantId

      # @!attribute from
      #   The phone number of the party initiating the call. Phone numbers are formatted
      #   with a `+` and country code.
      #
      #   @return [String]
      required :from, String, api_name: :From

      # @!attribute to
      #   The phone number of the called party. Phone numbers are formatted with a `+` and
      #   country code.
      #
      #   @return [String]
      required :to, String, api_name: :To

      # @!attribute ai_assistant_dynamic_variables
      #   Key-value map of dynamic variables to pass to the AI assistant.
      #
      #   @return [Hash{Symbol=>String}, nil]
      optional :ai_assistant_dynamic_variables,
               Telnyx::Internal::Type::HashOf[String],
               api_name: :AIAssistantDynamicVariables

      # @!attribute ai_assistant_version
      #   The version of the AI assistant to use.
      #
      #   @return [String, nil]
      optional :ai_assistant_version, String, api_name: :AIAssistantVersion

      # @!attribute async_amd
      #   Select whether to perform answering machine detection in the background. By
      #   default execution is blocked until Answering Machine Detection is completed.
      #
      #   @return [Boolean, nil]
      optional :async_amd, Telnyx::Internal::Type::Boolean, api_name: :AsyncAmd

      # @!attribute async_amd_status_callback
      #   URL destination for Telnyx to send AMD callback events to for the call.
      #
      #   @return [String, nil]
      optional :async_amd_status_callback, String, api_name: :AsyncAmdStatusCallback

      # @!attribute async_amd_status_callback_method
      #   HTTP request type used for `AsyncAmdStatusCallback`.
      #
      #   @return [Symbol, Telnyx::Models::TexmlInitiateAICallParams::AsyncAmdStatusCallbackMethod, nil]
      optional :async_amd_status_callback_method,
               enum: -> { Telnyx::TexmlInitiateAICallParams::AsyncAmdStatusCallbackMethod },
               api_name: :AsyncAmdStatusCallbackMethod

      # @!attribute caller_id
      #   To be used as the caller id name (SIP From Display Name) presented to the
      #   destination (`To` number). The string should have a maximum of 128 characters,
      #   containing only letters, numbers, spaces, and `-_~!.+` special characters. If
      #   omitted, the display name will be the same as the number in the `From` field.
      #
      #   @return [String, nil]
      optional :caller_id, String, api_name: :CallerId

      # @!attribute conversation_callback
      #   URL destination for Telnyx to send conversation callback events to.
      #
      #   @return [String, nil]
      optional :conversation_callback, String, api_name: :ConversationCallback

      # @!attribute conversation_callback_method
      #   HTTP request type used for `ConversationCallback`.
      #
      #   @return [Symbol, Telnyx::Models::TexmlInitiateAICallParams::ConversationCallbackMethod, nil]
      optional :conversation_callback_method,
               enum: -> { Telnyx::TexmlInitiateAICallParams::ConversationCallbackMethod },
               api_name: :ConversationCallbackMethod

      # @!attribute conversation_callbacks
      #   An array of URL destinations for conversation callback events.
      #
      #   @return [Array<String>, nil]
      optional :conversation_callbacks,
               Telnyx::Internal::Type::ArrayOf[String],
               api_name: :ConversationCallbacks

      # @!attribute custom_headers
      #   Custom HTTP headers to be sent with the call. Each header should be an object
      #   with 'name' and 'value' properties.
      #
      #   @return [Array<Telnyx::Models::TexmlInitiateAICallParams::CustomHeader>, nil]
      optional :custom_headers,
               -> { Telnyx::Internal::Type::ArrayOf[Telnyx::TexmlInitiateAICallParams::CustomHeader] },
               api_name: :CustomHeaders

      # @!attribute detection_mode
      #   Allows you to choose between Premium and Standard detections.
      #
      #   @return [Symbol, Telnyx::Models::TexmlInitiateAICallParams::DetectionMode, nil]
      optional :detection_mode,
               enum: -> { Telnyx::TexmlInitiateAICallParams::DetectionMode },
               api_name: :DetectionMode

      # @!attribute machine_detection
      #   Enables Answering Machine Detection.
      #
      #   @return [Symbol, Telnyx::Models::TexmlInitiateAICallParams::MachineDetection, nil]
      optional :machine_detection,
               enum: -> { Telnyx::TexmlInitiateAICallParams::MachineDetection },
               api_name: :MachineDetection

      # @!attribute machine_detection_silence_timeout
      #   If initial silence duration is greater than this value, consider it a machine.
      #   Ignored when `premium` detection is used.
      #
      #   @return [Integer, nil]
      optional :machine_detection_silence_timeout, Integer, api_name: :MachineDetectionSilenceTimeout

      # @!attribute machine_detection_speech_end_threshold
      #   Silence duration threshold after a greeting message or voice for it be
      #   considered human. Ignored when `premium` detection is used.
      #
      #   @return [Integer, nil]
      optional :machine_detection_speech_end_threshold, Integer, api_name: :MachineDetectionSpeechEndThreshold

      # @!attribute machine_detection_speech_threshold
      #   Maximum threshold of a human greeting. If greeting longer than this value,
      #   considered machine. Ignored when `premium` detection is used.
      #
      #   @return [Integer, nil]
      optional :machine_detection_speech_threshold, Integer, api_name: :MachineDetectionSpeechThreshold

      # @!attribute machine_detection_timeout
      #   Maximum timeout threshold in milliseconds for overall detection.
      #
      #   @return [Integer, nil]
      optional :machine_detection_timeout, Integer, api_name: :MachineDetectionTimeout

      # @!attribute passports
      #   A string of passport identifiers to associate with the call.
      #
      #   @return [String, nil]
      optional :passports, String, api_name: :Passports

      # @!attribute preferred_codecs
      #   The list of comma-separated codecs to be offered on a call.
      #
      #   @return [String, nil]
      optional :preferred_codecs, String, api_name: :PreferredCodecs

      # @!attribute record
      #   Whether to record the entire participant's call leg. Defaults to `false`.
      #
      #   @return [Boolean, nil]
      optional :record, Telnyx::Internal::Type::Boolean, api_name: :Record

      # @!attribute recording_channels
      #   The number of channels in the final recording. Defaults to `mono`.
      #
      #   @return [Symbol, Telnyx::Models::TexmlInitiateAICallParams::RecordingChannels, nil]
      optional :recording_channels,
               enum: -> { Telnyx::TexmlInitiateAICallParams::RecordingChannels },
               api_name: :RecordingChannels

      # @!attribute recording_status_callback
      #   The URL the recording callbacks will be sent to.
      #
      #   @return [String, nil]
      optional :recording_status_callback, String, api_name: :RecordingStatusCallback

      # @!attribute recording_status_callback_event
      #   The changes to the recording's state that should generate a call to
      #   `RecordingStatusCallback`. Can be: `in-progress`, `completed` and `absent`.
      #   Separate multiple values with a space. Defaults to `completed`.
      #
      #   @return [String, nil]
      optional :recording_status_callback_event, String, api_name: :RecordingStatusCallbackEvent

      # @!attribute recording_status_callback_method
      #   HTTP request type used for `RecordingStatusCallback`. Defaults to `POST`.
      #
      #   @return [Symbol, Telnyx::Models::TexmlInitiateAICallParams::RecordingStatusCallbackMethod, nil]
      optional :recording_status_callback_method,
               enum: -> { Telnyx::TexmlInitiateAICallParams::RecordingStatusCallbackMethod },
               api_name: :RecordingStatusCallbackMethod

      # @!attribute recording_timeout
      #   The number of seconds that Telnyx will wait for the recording to be stopped if
      #   silence is detected. The timer only starts when the speech is detected. The
      #   minimum value is 0. The default value is 0 (infinite).
      #
      #   @return [Integer, nil]
      optional :recording_timeout, Integer, api_name: :RecordingTimeout

      # @!attribute recording_track
      #   The audio track to record for the call. The default is `both`.
      #
      #   @return [Symbol, Telnyx::Models::TexmlInitiateAICallParams::RecordingTrack, nil]
      optional :recording_track,
               enum: -> { Telnyx::TexmlInitiateAICallParams::RecordingTrack },
               api_name: :RecordingTrack

      # @!attribute send_recording_url
      #   Whether to send RecordingUrl in webhooks.
      #
      #   @return [Boolean, nil]
      optional :send_recording_url, Telnyx::Internal::Type::Boolean, api_name: :SendRecordingUrl

      # @!attribute sip_auth_password
      #   The password to use for SIP authentication.
      #
      #   @return [String, nil]
      optional :sip_auth_password, String, api_name: :SipAuthPassword

      # @!attribute sip_auth_username
      #   The username to use for SIP authentication.
      #
      #   @return [String, nil]
      optional :sip_auth_username, String, api_name: :SipAuthUsername

      # @!attribute sip_region
      #   Defines the SIP region to be used for the call.
      #
      #   @return [Symbol, Telnyx::Models::TexmlInitiateAICallParams::SipRegion, nil]
      optional :sip_region, enum: -> { Telnyx::TexmlInitiateAICallParams::SipRegion }, api_name: :SipRegion

      # @!attribute status_callback
      #   URL destination for Telnyx to send status callback events to for the call.
      #
      #   @return [String, nil]
      optional :status_callback, String, api_name: :StatusCallback

      # @!attribute status_callback_event
      #   The call events for which Telnyx should send a webhook. Multiple events can be
      #   defined when separated by a space. Valid values: initiated, ringing, answered,
      #   completed.
      #
      #   @return [String, nil]
      optional :status_callback_event, String, api_name: :StatusCallbackEvent

      # @!attribute status_callback_method
      #   HTTP request type used for `StatusCallback`.
      #
      #   @return [Symbol, Telnyx::Models::TexmlInitiateAICallParams::StatusCallbackMethod, nil]
      optional :status_callback_method,
               enum: -> { Telnyx::TexmlInitiateAICallParams::StatusCallbackMethod },
               api_name: :StatusCallbackMethod

      # @!attribute status_callbacks
      #   An array of URL destinations for Telnyx to send status callback events to for
      #   the call.
      #
      #   @return [Array<String>, nil]
      optional :status_callbacks, Telnyx::Internal::Type::ArrayOf[String], api_name: :StatusCallbacks

      # @!attribute time_limit
      #   The maximum duration of the call in seconds. The minimum value is 30 and the
      #   maximum value is 14400 (4 hours). Default is 14400 seconds.
      #
      #   @return [Integer, nil]
      optional :time_limit, Integer, api_name: :TimeLimit

      # @!attribute timeout_seconds
      #   The number of seconds to wait for the called party to answer the call before the
      #   call is canceled. The minimum value is 5 and the maximum value is 120. Default
      #   is 30 seconds.
      #
      #   @return [Integer, nil]
      optional :timeout_seconds, Integer, api_name: :Timeout

      # @!attribute trim
      #   Whether to trim any leading and trailing silence from the recording. Defaults to
      #   `trim-silence`.
      #
      #   @return [Symbol, Telnyx::Models::TexmlInitiateAICallParams::Trim, nil]
      optional :trim, enum: -> { Telnyx::TexmlInitiateAICallParams::Trim }, api_name: :Trim

      # @!method initialize(connection_id:, ai_assistant_id:, from:, to:, ai_assistant_dynamic_variables: nil, ai_assistant_version: nil, async_amd: nil, async_amd_status_callback: nil, async_amd_status_callback_method: nil, caller_id: nil, conversation_callback: nil, conversation_callback_method: nil, conversation_callbacks: nil, custom_headers: nil, detection_mode: nil, machine_detection: nil, machine_detection_silence_timeout: nil, machine_detection_speech_end_threshold: nil, machine_detection_speech_threshold: nil, machine_detection_timeout: nil, passports: nil, preferred_codecs: nil, record: nil, recording_channels: nil, recording_status_callback: nil, recording_status_callback_event: nil, recording_status_callback_method: nil, recording_timeout: nil, recording_track: nil, send_recording_url: nil, sip_auth_password: nil, sip_auth_username: nil, sip_region: nil, status_callback: nil, status_callback_event: nil, status_callback_method: nil, status_callbacks: nil, time_limit: nil, timeout_seconds: nil, trim: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::TexmlInitiateAICallParams} for more details.
      #
      #   @param connection_id [String]
      #
      #   @param ai_assistant_id [String] The ID of the AI assistant to use for the call.
      #
      #   @param from [String] The phone number of the party initiating the call. Phone numbers are formatted w
      #
      #   @param to [String] The phone number of the called party. Phone numbers are formatted with a `+` and
      #
      #   @param ai_assistant_dynamic_variables [Hash{Symbol=>String}] Key-value map of dynamic variables to pass to the AI assistant.
      #
      #   @param ai_assistant_version [String] The version of the AI assistant to use.
      #
      #   @param async_amd [Boolean] Select whether to perform answering machine detection in the background. By defa
      #
      #   @param async_amd_status_callback [String] URL destination for Telnyx to send AMD callback events to for the call.
      #
      #   @param async_amd_status_callback_method [Symbol, Telnyx::Models::TexmlInitiateAICallParams::AsyncAmdStatusCallbackMethod] HTTP request type used for `AsyncAmdStatusCallback`.
      #
      #   @param caller_id [String] To be used as the caller id name (SIP From Display Name) presented to the destin
      #
      #   @param conversation_callback [String] URL destination for Telnyx to send conversation callback events to.
      #
      #   @param conversation_callback_method [Symbol, Telnyx::Models::TexmlInitiateAICallParams::ConversationCallbackMethod] HTTP request type used for `ConversationCallback`.
      #
      #   @param conversation_callbacks [Array<String>] An array of URL destinations for conversation callback events.
      #
      #   @param custom_headers [Array<Telnyx::Models::TexmlInitiateAICallParams::CustomHeader>] Custom HTTP headers to be sent with the call. Each header should be an object wi
      #
      #   @param detection_mode [Symbol, Telnyx::Models::TexmlInitiateAICallParams::DetectionMode] Allows you to choose between Premium and Standard detections.
      #
      #   @param machine_detection [Symbol, Telnyx::Models::TexmlInitiateAICallParams::MachineDetection] Enables Answering Machine Detection.
      #
      #   @param machine_detection_silence_timeout [Integer] If initial silence duration is greater than this value, consider it a machine. I
      #
      #   @param machine_detection_speech_end_threshold [Integer] Silence duration threshold after a greeting message or voice for it be considere
      #
      #   @param machine_detection_speech_threshold [Integer] Maximum threshold of a human greeting. If greeting longer than this value, consi
      #
      #   @param machine_detection_timeout [Integer] Maximum timeout threshold in milliseconds for overall detection.
      #
      #   @param passports [String] A string of passport identifiers to associate with the call.
      #
      #   @param preferred_codecs [String] The list of comma-separated codecs to be offered on a call.
      #
      #   @param record [Boolean] Whether to record the entire participant's call leg. Defaults to `false`.
      #
      #   @param recording_channels [Symbol, Telnyx::Models::TexmlInitiateAICallParams::RecordingChannels] The number of channels in the final recording. Defaults to `mono`.
      #
      #   @param recording_status_callback [String] The URL the recording callbacks will be sent to.
      #
      #   @param recording_status_callback_event [String] The changes to the recording's state that should generate a call to `RecordingSt
      #
      #   @param recording_status_callback_method [Symbol, Telnyx::Models::TexmlInitiateAICallParams::RecordingStatusCallbackMethod] HTTP request type used for `RecordingStatusCallback`. Defaults to `POST`.
      #
      #   @param recording_timeout [Integer] The number of seconds that Telnyx will wait for the recording to be stopped if s
      #
      #   @param recording_track [Symbol, Telnyx::Models::TexmlInitiateAICallParams::RecordingTrack] The audio track to record for the call. The default is `both`.
      #
      #   @param send_recording_url [Boolean] Whether to send RecordingUrl in webhooks.
      #
      #   @param sip_auth_password [String] The password to use for SIP authentication.
      #
      #   @param sip_auth_username [String] The username to use for SIP authentication.
      #
      #   @param sip_region [Symbol, Telnyx::Models::TexmlInitiateAICallParams::SipRegion] Defines the SIP region to be used for the call.
      #
      #   @param status_callback [String] URL destination for Telnyx to send status callback events to for the call.
      #
      #   @param status_callback_event [String] The call events for which Telnyx should send a webhook. Multiple events can be d
      #
      #   @param status_callback_method [Symbol, Telnyx::Models::TexmlInitiateAICallParams::StatusCallbackMethod] HTTP request type used for `StatusCallback`.
      #
      #   @param status_callbacks [Array<String>] An array of URL destinations for Telnyx to send status callback events to for th
      #
      #   @param time_limit [Integer] The maximum duration of the call in seconds. The minimum value is 30 and the max
      #
      #   @param timeout_seconds [Integer] The number of seconds to wait for the called party to answer the call before the
      #
      #   @param trim [Symbol, Telnyx::Models::TexmlInitiateAICallParams::Trim] Whether to trim any leading and trailing silence from the recording. Defaults to
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      # HTTP request type used for `AsyncAmdStatusCallback`.
      module AsyncAmdStatusCallbackMethod
        extend Telnyx::Internal::Type::Enum

        GET = :GET
        POST = :POST

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # HTTP request type used for `ConversationCallback`.
      module ConversationCallbackMethod
        extend Telnyx::Internal::Type::Enum

        GET = :GET
        POST = :POST

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      class CustomHeader < Telnyx::Internal::Type::BaseModel
        # @!attribute name
        #   The name of the custom header
        #
        #   @return [String]
        required :name, String

        # @!attribute value
        #   The value of the custom header
        #
        #   @return [String]
        required :value, String

        # @!method initialize(name:, value:)
        #   @param name [String] The name of the custom header
        #
        #   @param value [String] The value of the custom header
      end

      # Allows you to choose between Premium and Standard detections.
      module DetectionMode
        extend Telnyx::Internal::Type::Enum

        PREMIUM = :Premium
        REGULAR = :Regular

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Enables Answering Machine Detection.
      module MachineDetection
        extend Telnyx::Internal::Type::Enum

        ENABLE = :Enable
        DISABLE = :Disable
        DETECT_MESSAGE_END = :DetectMessageEnd

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # The number of channels in the final recording. Defaults to `mono`.
      module RecordingChannels
        extend Telnyx::Internal::Type::Enum

        MONO = :mono
        DUAL = :dual

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # HTTP request type used for `RecordingStatusCallback`. Defaults to `POST`.
      module RecordingStatusCallbackMethod
        extend Telnyx::Internal::Type::Enum

        GET = :GET
        POST = :POST

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # The audio track to record for the call. The default is `both`.
      module RecordingTrack
        extend Telnyx::Internal::Type::Enum

        INBOUND = :inbound
        OUTBOUND = :outbound
        BOTH = :both

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Defines the SIP region to be used for the call.
      module SipRegion
        extend Telnyx::Internal::Type::Enum

        US = :US
        EUROPE = :Europe
        CANADA = :Canada
        AUSTRALIA = :Australia
        MIDDLE_EAST = :"Middle East"

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # HTTP request type used for `StatusCallback`.
      module StatusCallbackMethod
        extend Telnyx::Internal::Type::Enum

        GET = :GET
        POST = :POST

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Whether to trim any leading and trailing silence from the recording. Defaults to
      # `trim-silence`.
      module Trim
        extend Telnyx::Internal::Type::Enum

        TRIM_SILENCE = :"trim-silence"
        DO_NOT_TRIM = :"do-not-trim"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end

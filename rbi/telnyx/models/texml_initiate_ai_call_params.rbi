# typed: strong

module Telnyx
  module Models
    class TexmlInitiateAICallParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::TexmlInitiateAICallParams, Telnyx::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :connection_id

      # The ID of the AI assistant to use for the call.
      sig { returns(String) }
      attr_accessor :ai_assistant_id

      # The phone number of the party initiating the call. Phone numbers are formatted
      # with a `+` and country code.
      sig { returns(String) }
      attr_accessor :from

      # The phone number of the called party. Phone numbers are formatted with a `+` and
      # country code.
      sig { returns(String) }
      attr_accessor :to

      # Key-value map of dynamic variables to pass to the AI assistant.
      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      attr_reader :ai_assistant_dynamic_variables

      sig do
        params(ai_assistant_dynamic_variables: T::Hash[Symbol, String]).void
      end
      attr_writer :ai_assistant_dynamic_variables

      # The version of the AI assistant to use.
      sig { returns(T.nilable(String)) }
      attr_reader :ai_assistant_version

      sig { params(ai_assistant_version: String).void }
      attr_writer :ai_assistant_version

      # Select whether to perform answering machine detection in the background. By
      # default execution is blocked until Answering Machine Detection is completed.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :async_amd

      sig { params(async_amd: T::Boolean).void }
      attr_writer :async_amd

      # URL destination for Telnyx to send AMD callback events to for the call.
      sig { returns(T.nilable(String)) }
      attr_reader :async_amd_status_callback

      sig { params(async_amd_status_callback: String).void }
      attr_writer :async_amd_status_callback

      # HTTP request type used for `AsyncAmdStatusCallback`.
      sig do
        returns(
          T.nilable(
            Telnyx::TexmlInitiateAICallParams::AsyncAmdStatusCallbackMethod::OrSymbol
          )
        )
      end
      attr_reader :async_amd_status_callback_method

      sig do
        params(
          async_amd_status_callback_method:
            Telnyx::TexmlInitiateAICallParams::AsyncAmdStatusCallbackMethod::OrSymbol
        ).void
      end
      attr_writer :async_amd_status_callback_method

      # To be used as the caller id name (SIP From Display Name) presented to the
      # destination (`To` number). The string should have a maximum of 128 characters,
      # containing only letters, numbers, spaces, and `-_~!.+` special characters. If
      # omitted, the display name will be the same as the number in the `From` field.
      sig { returns(T.nilable(String)) }
      attr_reader :caller_id

      sig { params(caller_id: String).void }
      attr_writer :caller_id

      # URL destination for Telnyx to send conversation callback events to.
      sig { returns(T.nilable(String)) }
      attr_reader :conversation_callback

      sig { params(conversation_callback: String).void }
      attr_writer :conversation_callback

      # HTTP request type used for `ConversationCallback`.
      sig do
        returns(
          T.nilable(
            Telnyx::TexmlInitiateAICallParams::ConversationCallbackMethod::OrSymbol
          )
        )
      end
      attr_reader :conversation_callback_method

      sig do
        params(
          conversation_callback_method:
            Telnyx::TexmlInitiateAICallParams::ConversationCallbackMethod::OrSymbol
        ).void
      end
      attr_writer :conversation_callback_method

      # An array of URL destinations for conversation callback events.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :conversation_callbacks

      sig { params(conversation_callbacks: T::Array[String]).void }
      attr_writer :conversation_callbacks

      # Custom HTTP headers to be sent with the call. Each header should be an object
      # with 'name' and 'value' properties.
      sig do
        returns(
          T.nilable(T::Array[Telnyx::TexmlInitiateAICallParams::CustomHeader])
        )
      end
      attr_reader :custom_headers

      sig do
        params(
          custom_headers:
            T::Array[Telnyx::TexmlInitiateAICallParams::CustomHeader::OrHash]
        ).void
      end
      attr_writer :custom_headers

      # Allows you to choose between Premium and Standard detections.
      sig do
        returns(
          T.nilable(Telnyx::TexmlInitiateAICallParams::DetectionMode::OrSymbol)
        )
      end
      attr_reader :detection_mode

      sig do
        params(
          detection_mode:
            Telnyx::TexmlInitiateAICallParams::DetectionMode::OrSymbol
        ).void
      end
      attr_writer :detection_mode

      # Enables Answering Machine Detection.
      sig do
        returns(
          T.nilable(
            Telnyx::TexmlInitiateAICallParams::MachineDetection::OrSymbol
          )
        )
      end
      attr_reader :machine_detection

      sig do
        params(
          machine_detection:
            Telnyx::TexmlInitiateAICallParams::MachineDetection::OrSymbol
        ).void
      end
      attr_writer :machine_detection

      # If initial silence duration is greater than this value, consider it a machine.
      # Ignored when `premium` detection is used.
      sig { returns(T.nilable(Integer)) }
      attr_reader :machine_detection_silence_timeout

      sig { params(machine_detection_silence_timeout: Integer).void }
      attr_writer :machine_detection_silence_timeout

      # Silence duration threshold after a greeting message or voice for it be
      # considered human. Ignored when `premium` detection is used.
      sig { returns(T.nilable(Integer)) }
      attr_reader :machine_detection_speech_end_threshold

      sig { params(machine_detection_speech_end_threshold: Integer).void }
      attr_writer :machine_detection_speech_end_threshold

      # Maximum threshold of a human greeting. If greeting longer than this value,
      # considered machine. Ignored when `premium` detection is used.
      sig { returns(T.nilable(Integer)) }
      attr_reader :machine_detection_speech_threshold

      sig { params(machine_detection_speech_threshold: Integer).void }
      attr_writer :machine_detection_speech_threshold

      # Maximum timeout threshold in milliseconds for overall detection.
      sig { returns(T.nilable(Integer)) }
      attr_reader :machine_detection_timeout

      sig { params(machine_detection_timeout: Integer).void }
      attr_writer :machine_detection_timeout

      # A string of passport identifiers to associate with the call.
      sig { returns(T.nilable(String)) }
      attr_reader :passports

      sig { params(passports: String).void }
      attr_writer :passports

      # The list of comma-separated codecs to be offered on a call.
      sig { returns(T.nilable(String)) }
      attr_reader :preferred_codecs

      sig { params(preferred_codecs: String).void }
      attr_writer :preferred_codecs

      # Whether to record the entire participant's call leg. Defaults to `false`.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :record

      sig { params(record: T::Boolean).void }
      attr_writer :record

      # The number of channels in the final recording. Defaults to `mono`.
      sig do
        returns(
          T.nilable(
            Telnyx::TexmlInitiateAICallParams::RecordingChannels::OrSymbol
          )
        )
      end
      attr_reader :recording_channels

      sig do
        params(
          recording_channels:
            Telnyx::TexmlInitiateAICallParams::RecordingChannels::OrSymbol
        ).void
      end
      attr_writer :recording_channels

      # The URL the recording callbacks will be sent to.
      sig { returns(T.nilable(String)) }
      attr_reader :recording_status_callback

      sig { params(recording_status_callback: String).void }
      attr_writer :recording_status_callback

      # The changes to the recording's state that should generate a call to
      # `RecordingStatusCallback`. Can be: `in-progress`, `completed` and `absent`.
      # Separate multiple values with a space. Defaults to `completed`.
      sig { returns(T.nilable(String)) }
      attr_reader :recording_status_callback_event

      sig { params(recording_status_callback_event: String).void }
      attr_writer :recording_status_callback_event

      # HTTP request type used for `RecordingStatusCallback`. Defaults to `POST`.
      sig do
        returns(
          T.nilable(
            Telnyx::TexmlInitiateAICallParams::RecordingStatusCallbackMethod::OrSymbol
          )
        )
      end
      attr_reader :recording_status_callback_method

      sig do
        params(
          recording_status_callback_method:
            Telnyx::TexmlInitiateAICallParams::RecordingStatusCallbackMethod::OrSymbol
        ).void
      end
      attr_writer :recording_status_callback_method

      # The number of seconds that Telnyx will wait for the recording to be stopped if
      # silence is detected. The timer only starts when the speech is detected. The
      # minimum value is 0. The default value is 0 (infinite).
      sig { returns(T.nilable(Integer)) }
      attr_reader :recording_timeout

      sig { params(recording_timeout: Integer).void }
      attr_writer :recording_timeout

      # The audio track to record for the call. The default is `both`.
      sig do
        returns(
          T.nilable(Telnyx::TexmlInitiateAICallParams::RecordingTrack::OrSymbol)
        )
      end
      attr_reader :recording_track

      sig do
        params(
          recording_track:
            Telnyx::TexmlInitiateAICallParams::RecordingTrack::OrSymbol
        ).void
      end
      attr_writer :recording_track

      # Whether to send RecordingUrl in webhooks.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :send_recording_url

      sig { params(send_recording_url: T::Boolean).void }
      attr_writer :send_recording_url

      # The password to use for SIP authentication.
      sig { returns(T.nilable(String)) }
      attr_reader :sip_auth_password

      sig { params(sip_auth_password: String).void }
      attr_writer :sip_auth_password

      # The username to use for SIP authentication.
      sig { returns(T.nilable(String)) }
      attr_reader :sip_auth_username

      sig { params(sip_auth_username: String).void }
      attr_writer :sip_auth_username

      # Defines the SIP region to be used for the call.
      sig do
        returns(
          T.nilable(Telnyx::TexmlInitiateAICallParams::SipRegion::OrSymbol)
        )
      end
      attr_reader :sip_region

      sig do
        params(
          sip_region: Telnyx::TexmlInitiateAICallParams::SipRegion::OrSymbol
        ).void
      end
      attr_writer :sip_region

      # URL destination for Telnyx to send status callback events to for the call.
      sig { returns(T.nilable(String)) }
      attr_reader :status_callback

      sig { params(status_callback: String).void }
      attr_writer :status_callback

      # The call events for which Telnyx should send a webhook. Multiple events can be
      # defined when separated by a space. Valid values: initiated, ringing, answered,
      # completed.
      sig { returns(T.nilable(String)) }
      attr_reader :status_callback_event

      sig { params(status_callback_event: String).void }
      attr_writer :status_callback_event

      # HTTP request type used for `StatusCallback`.
      sig do
        returns(
          T.nilable(
            Telnyx::TexmlInitiateAICallParams::StatusCallbackMethod::OrSymbol
          )
        )
      end
      attr_reader :status_callback_method

      sig do
        params(
          status_callback_method:
            Telnyx::TexmlInitiateAICallParams::StatusCallbackMethod::OrSymbol
        ).void
      end
      attr_writer :status_callback_method

      # An array of URL destinations for Telnyx to send status callback events to for
      # the call.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :status_callbacks

      sig { params(status_callbacks: T::Array[String]).void }
      attr_writer :status_callbacks

      # The maximum duration of the call in seconds. The minimum value is 30 and the
      # maximum value is 14400 (4 hours). Default is 14400 seconds.
      sig { returns(T.nilable(Integer)) }
      attr_reader :time_limit

      sig { params(time_limit: Integer).void }
      attr_writer :time_limit

      # The number of seconds to wait for the called party to answer the call before the
      # call is canceled. The minimum value is 5 and the maximum value is 120. Default
      # is 30 seconds.
      sig { returns(T.nilable(Integer)) }
      attr_reader :timeout_seconds

      sig { params(timeout_seconds: Integer).void }
      attr_writer :timeout_seconds

      # Whether to trim any leading and trailing silence from the recording. Defaults to
      # `trim-silence`.
      sig do
        returns(T.nilable(Telnyx::TexmlInitiateAICallParams::Trim::OrSymbol))
      end
      attr_reader :trim

      sig do
        params(trim: Telnyx::TexmlInitiateAICallParams::Trim::OrSymbol).void
      end
      attr_writer :trim

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
        ).returns(T.attached_class)
      end
      def self.new(
        connection_id:,
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

      sig do
        override.returns(
          {
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
              T::Array[Telnyx::TexmlInitiateAICallParams::CustomHeader],
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
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end

      # HTTP request type used for `AsyncAmdStatusCallback`.
      module AsyncAmdStatusCallbackMethod
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Telnyx::TexmlInitiateAICallParams::AsyncAmdStatusCallbackMethod
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        GET =
          T.let(
            :GET,
            Telnyx::TexmlInitiateAICallParams::AsyncAmdStatusCallbackMethod::TaggedSymbol
          )
        POST =
          T.let(
            :POST,
            Telnyx::TexmlInitiateAICallParams::AsyncAmdStatusCallbackMethod::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::TexmlInitiateAICallParams::AsyncAmdStatusCallbackMethod::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # HTTP request type used for `ConversationCallback`.
      module ConversationCallbackMethod
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Telnyx::TexmlInitiateAICallParams::ConversationCallbackMethod
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        GET =
          T.let(
            :GET,
            Telnyx::TexmlInitiateAICallParams::ConversationCallbackMethod::TaggedSymbol
          )
        POST =
          T.let(
            :POST,
            Telnyx::TexmlInitiateAICallParams::ConversationCallbackMethod::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::TexmlInitiateAICallParams::ConversationCallbackMethod::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      class CustomHeader < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::TexmlInitiateAICallParams::CustomHeader,
              Telnyx::Internal::AnyHash
            )
          end

        # The name of the custom header
        sig { returns(String) }
        attr_accessor :name

        # The value of the custom header
        sig { returns(String) }
        attr_accessor :value

        sig { params(name: String, value: String).returns(T.attached_class) }
        def self.new(
          # The name of the custom header
          name:,
          # The value of the custom header
          value:
        )
        end

        sig { override.returns({ name: String, value: String }) }
        def to_hash
        end
      end

      # Allows you to choose between Premium and Standard detections.
      module DetectionMode
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Telnyx::TexmlInitiateAICallParams::DetectionMode)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PREMIUM =
          T.let(
            :Premium,
            Telnyx::TexmlInitiateAICallParams::DetectionMode::TaggedSymbol
          )
        REGULAR =
          T.let(
            :Regular,
            Telnyx::TexmlInitiateAICallParams::DetectionMode::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::TexmlInitiateAICallParams::DetectionMode::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # Enables Answering Machine Detection.
      module MachineDetection
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Telnyx::TexmlInitiateAICallParams::MachineDetection)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ENABLE =
          T.let(
            :Enable,
            Telnyx::TexmlInitiateAICallParams::MachineDetection::TaggedSymbol
          )
        DISABLE =
          T.let(
            :Disable,
            Telnyx::TexmlInitiateAICallParams::MachineDetection::TaggedSymbol
          )
        DETECT_MESSAGE_END =
          T.let(
            :DetectMessageEnd,
            Telnyx::TexmlInitiateAICallParams::MachineDetection::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::TexmlInitiateAICallParams::MachineDetection::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # The number of channels in the final recording. Defaults to `mono`.
      module RecordingChannels
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Telnyx::TexmlInitiateAICallParams::RecordingChannels)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        MONO =
          T.let(
            :mono,
            Telnyx::TexmlInitiateAICallParams::RecordingChannels::TaggedSymbol
          )
        DUAL =
          T.let(
            :dual,
            Telnyx::TexmlInitiateAICallParams::RecordingChannels::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::TexmlInitiateAICallParams::RecordingChannels::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # HTTP request type used for `RecordingStatusCallback`. Defaults to `POST`.
      module RecordingStatusCallbackMethod
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Telnyx::TexmlInitiateAICallParams::RecordingStatusCallbackMethod
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        GET =
          T.let(
            :GET,
            Telnyx::TexmlInitiateAICallParams::RecordingStatusCallbackMethod::TaggedSymbol
          )
        POST =
          T.let(
            :POST,
            Telnyx::TexmlInitiateAICallParams::RecordingStatusCallbackMethod::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::TexmlInitiateAICallParams::RecordingStatusCallbackMethod::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # The audio track to record for the call. The default is `both`.
      module RecordingTrack
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Telnyx::TexmlInitiateAICallParams::RecordingTrack)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        INBOUND =
          T.let(
            :inbound,
            Telnyx::TexmlInitiateAICallParams::RecordingTrack::TaggedSymbol
          )
        OUTBOUND =
          T.let(
            :outbound,
            Telnyx::TexmlInitiateAICallParams::RecordingTrack::TaggedSymbol
          )
        BOTH =
          T.let(
            :both,
            Telnyx::TexmlInitiateAICallParams::RecordingTrack::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::TexmlInitiateAICallParams::RecordingTrack::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # Defines the SIP region to be used for the call.
      module SipRegion
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Telnyx::TexmlInitiateAICallParams::SipRegion)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        US =
          T.let(:US, Telnyx::TexmlInitiateAICallParams::SipRegion::TaggedSymbol)
        EUROPE =
          T.let(
            :Europe,
            Telnyx::TexmlInitiateAICallParams::SipRegion::TaggedSymbol
          )
        CANADA =
          T.let(
            :Canada,
            Telnyx::TexmlInitiateAICallParams::SipRegion::TaggedSymbol
          )
        AUSTRALIA =
          T.let(
            :Australia,
            Telnyx::TexmlInitiateAICallParams::SipRegion::TaggedSymbol
          )
        MIDDLE_EAST =
          T.let(
            :"Middle East",
            Telnyx::TexmlInitiateAICallParams::SipRegion::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Telnyx::TexmlInitiateAICallParams::SipRegion::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # HTTP request type used for `StatusCallback`.
      module StatusCallbackMethod
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Telnyx::TexmlInitiateAICallParams::StatusCallbackMethod
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        GET =
          T.let(
            :GET,
            Telnyx::TexmlInitiateAICallParams::StatusCallbackMethod::TaggedSymbol
          )
        POST =
          T.let(
            :POST,
            Telnyx::TexmlInitiateAICallParams::StatusCallbackMethod::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::TexmlInitiateAICallParams::StatusCallbackMethod::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # Whether to trim any leading and trailing silence from the recording. Defaults to
      # `trim-silence`.
      module Trim
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Telnyx::TexmlInitiateAICallParams::Trim)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        TRIM_SILENCE =
          T.let(
            :"trim-silence",
            Telnyx::TexmlInitiateAICallParams::Trim::TaggedSymbol
          )
        DO_NOT_TRIM =
          T.let(
            :"do-not-trim",
            Telnyx::TexmlInitiateAICallParams::Trim::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Telnyx::TexmlInitiateAICallParams::Trim::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end

# frozen_string_literal: true

module Telnyx
  module Models
    module Texml
      module Accounts
        module Conferences
          # @see Telnyx::Resources::Texml::Accounts::Conferences::Participants#participants
          class ParticipantParticipantsParams < Telnyx::Internal::Type::BaseModel
            extend Telnyx::Internal::Type::RequestParameters::Converter
            include Telnyx::Internal::Type::RequestParameters

            # @!attribute account_sid
            #
            #   @return [String]
            required :account_sid, String

            # @!attribute amd_status_callback
            #   The URL the result of answering machine detection will be sent to.
            #
            #   @return [String, nil]
            optional :amd_status_callback, String, api_name: :AmdStatusCallback

            # @!attribute amd_status_callback_method
            #   HTTP request type used for `AmdStatusCallback`. Defaults to `POST`.
            #
            #   @return [Symbol, Telnyx::Models::Texml::Accounts::Conferences::ParticipantParticipantsParams::AmdStatusCallbackMethod, nil]
            optional :amd_status_callback_method,
                     enum: -> {
                       Telnyx::Texml::Accounts::Conferences::ParticipantParticipantsParams::AmdStatusCallbackMethod
                     },
                     api_name: :AmdStatusCallbackMethod

            # @!attribute beep
            #   Whether to play a notification beep to the conference when the participant
            #   enters and exits.
            #
            #   @return [Symbol, Telnyx::Models::Texml::Accounts::Conferences::ParticipantParticipantsParams::Beep, nil]
            optional :beep,
                     enum: -> { Telnyx::Texml::Accounts::Conferences::ParticipantParticipantsParams::Beep },
                     api_name: :Beep

            # @!attribute caller_id
            #   To be used as the caller id name (SIP From Display Name) presented to the
            #   destination (`To` number). The string should have a maximum of 128 characters,
            #   containing only letters, numbers, spaces, and `-_~!.+` special characters. If
            #   ommited, the display name will be the same as the number in the `From` field.
            #
            #   @return [String, nil]
            optional :caller_id, String, api_name: :CallerId

            # @!attribute call_sid_to_coach
            #   The SID of the participant who is being coached. The participant being coached
            #   is the only participant who can hear the participant who is coaching.
            #
            #   @return [String, nil]
            optional :call_sid_to_coach, String, api_name: :CallSidToCoach

            # @!attribute cancel_playback_on_detect_message_end
            #   Whether to cancel ongoing playback on `greeting ended` detection. Defaults to
            #   `true`.
            #
            #   @return [Boolean, nil]
            optional :cancel_playback_on_detect_message_end,
                     Telnyx::Internal::Type::Boolean,
                     api_name: :CancelPlaybackOnDetectMessageEnd

            # @!attribute cancel_playback_on_machine_detection
            #   Whether to cancel ongoing playback on `machine` detection. Defaults to `true`.
            #
            #   @return [Boolean, nil]
            optional :cancel_playback_on_machine_detection,
                     Telnyx::Internal::Type::Boolean,
                     api_name: :CancelPlaybackOnMachineDetection

            # @!attribute coaching
            #   Whether the participant is coaching another call. When `true`, `CallSidToCoach`
            #   has to be given.
            #
            #   @return [Boolean, nil]
            optional :coaching, Telnyx::Internal::Type::Boolean, api_name: :Coaching

            # @!attribute conference_record
            #   Whether to record the conference the participant is joining. Defualts to
            #   `do-not-record`. The boolean values `true` and `false` are synonymous with
            #   `record-from-start` and `do-not-record` respectively.
            #
            #   @return [Symbol, Telnyx::Models::Texml::Accounts::Conferences::ParticipantParticipantsParams::ConferenceRecord, nil]
            optional :conference_record,
                     enum: -> {
                       Telnyx::Texml::Accounts::Conferences::ParticipantParticipantsParams::ConferenceRecord
                     },
                     api_name: :ConferenceRecord

            # @!attribute conference_recording_status_callback
            #   The URL the conference recording callbacks will be sent to.
            #
            #   @return [String, nil]
            optional :conference_recording_status_callback,
                     String,
                     api_name: :ConferenceRecordingStatusCallback

            # @!attribute conference_recording_status_callback_event
            #   The changes to the conference recording's state that should generate a call to
            #   `RecoridngStatusCallback`. Can be: `in-progress`, `completed` and `absent`.
            #   Separate multiple values with a space. Defaults to `completed`. `failed` and
            #   `absent` are synonymous.
            #
            #   @return [String, nil]
            optional :conference_recording_status_callback_event,
                     String,
                     api_name: :ConferenceRecordingStatusCallbackEvent

            # @!attribute conference_recording_status_callback_method
            #   HTTP request type used for `ConferenceRecordingStatusCallback`. Defaults to
            #   `POST`.
            #
            #   @return [Symbol, Telnyx::Models::Texml::Accounts::Conferences::ParticipantParticipantsParams::ConferenceRecordingStatusCallbackMethod, nil]
            optional :conference_recording_status_callback_method,
                     enum: -> {
                       Telnyx::Texml::Accounts::Conferences::ParticipantParticipantsParams::ConferenceRecordingStatusCallbackMethod
                     },
                     api_name: :ConferenceRecordingStatusCallbackMethod

            # @!attribute conference_recording_timeout
            #   The number of seconds that Telnyx will wait for the recording to be stopped if
            #   silence is detected. The timer only starts when the speech is detected. Please
            #   note that the transcription is used to detect silence and the related charge
            #   will be applied. The minimum value is 0. The default value is 0 (infinite)
            #
            #   @return [Integer, nil]
            optional :conference_recording_timeout, Integer, api_name: :ConferenceRecordingTimeout

            # @!attribute conference_status_callback
            #   The URL the conference callbacks will be sent to.
            #
            #   @return [String, nil]
            optional :conference_status_callback, String, api_name: :ConferenceStatusCallback

            # @!attribute conference_status_callback_event
            #   The changes to the conference's state that should generate a call to
            #   `ConferenceStatusCallback`. Can be: `start`, `end`, `join` and `leave`. Separate
            #   multiple values with a space. By default no callbacks are sent.
            #
            #   @return [String, nil]
            optional :conference_status_callback_event, String, api_name: :ConferenceStatusCallbackEvent

            # @!attribute conference_status_callback_method
            #   HTTP request type used for `ConferenceStatusCallback`. Defaults to `POST`.
            #
            #   @return [Symbol, Telnyx::Models::Texml::Accounts::Conferences::ParticipantParticipantsParams::ConferenceStatusCallbackMethod, nil]
            optional :conference_status_callback_method,
                     enum: -> {
                       Telnyx::Texml::Accounts::Conferences::ParticipantParticipantsParams::ConferenceStatusCallbackMethod
                     },
                     api_name: :ConferenceStatusCallbackMethod

            # @!attribute conference_trim
            #   Whether to trim any leading and trailing silence from the conference recording.
            #   Defaults to `trim-silence`.
            #
            #   @return [Symbol, Telnyx::Models::Texml::Accounts::Conferences::ParticipantParticipantsParams::ConferenceTrim, nil]
            optional :conference_trim,
                     enum: -> {
                       Telnyx::Texml::Accounts::Conferences::ParticipantParticipantsParams::ConferenceTrim
                     },
                     api_name: :ConferenceTrim

            # @!attribute custom_headers
            #   Custom HTTP headers to be sent with the call. Each header should be an object
            #   with 'name' and 'value' properties.
            #
            #   @return [Array<Telnyx::Models::Texml::Accounts::Conferences::ParticipantParticipantsParams::CustomHeader>, nil]
            optional :custom_headers,
                     -> {
                       Telnyx::Internal::Type::ArrayOf[Telnyx::Texml::Accounts::Conferences::ParticipantParticipantsParams::CustomHeader]
                     },
                     api_name: :CustomHeaders

            # @!attribute early_media
            #   Whether participant shall be bridged to conference before the participant
            #   answers (from early media if available). Defaults to `false`.
            #
            #   @return [Boolean, nil]
            optional :early_media, Telnyx::Internal::Type::Boolean, api_name: :EarlyMedia

            # @!attribute end_conference_on_exit
            #   Whether to end the conference when the participant leaves. Defaults to `false`.
            #
            #   @return [Boolean, nil]
            optional :end_conference_on_exit, Telnyx::Internal::Type::Boolean, api_name: :EndConferenceOnExit

            # @!attribute from
            #   The phone number of the party that initiated the call. Phone numbers are
            #   formatted with a `+` and country code.
            #
            #   @return [String, nil]
            optional :from, String, api_name: :From

            # @!attribute machine_detection
            #   Whether to detect if a human or an answering machine picked up the call. Use
            #   `Enable` if you would like to ne notified as soon as the called party is
            #   identified. Use `DetectMessageEnd`, if you would like to leave a message on an
            #   answering machine.
            #
            #   @return [Symbol, Telnyx::Models::Texml::Accounts::Conferences::ParticipantParticipantsParams::MachineDetection, nil]
            optional :machine_detection,
                     enum: -> {
                       Telnyx::Texml::Accounts::Conferences::ParticipantParticipantsParams::MachineDetection
                     },
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
            optional :machine_detection_speech_end_threshold,
                     Integer,
                     api_name: :MachineDetectionSpeechEndThreshold

            # @!attribute machine_detection_speech_threshold
            #   Maximum threshold of a human greeting. If greeting longer than this value,
            #   considered machine. Ignored when `premium` detection is used.
            #
            #   @return [Integer, nil]
            optional :machine_detection_speech_threshold, Integer, api_name: :MachineDetectionSpeechThreshold

            # @!attribute machine_detection_timeout
            #   How long answering machine detection should go on for before sending an
            #   `Unknown` result. Given in milliseconds.
            #
            #   @return [Integer, nil]
            optional :machine_detection_timeout, Integer, api_name: :MachineDetectionTimeout

            # @!attribute max_participants
            #   The maximum number of participants in the conference. Can be a positive integer
            #   from 2 to 800. The default value is 250.
            #
            #   @return [Integer, nil]
            optional :max_participants, Integer, api_name: :MaxParticipants

            # @!attribute muted
            #   Whether the participant should be muted.
            #
            #   @return [Boolean, nil]
            optional :muted, Telnyx::Internal::Type::Boolean, api_name: :Muted

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
            #   @return [Symbol, Telnyx::Models::Texml::Accounts::Conferences::ParticipantParticipantsParams::RecordingChannels, nil]
            optional :recording_channels,
                     enum: -> {
                       Telnyx::Texml::Accounts::Conferences::ParticipantParticipantsParams::RecordingChannels
                     },
                     api_name: :RecordingChannels

            # @!attribute recording_status_callback
            #   The URL the recording callbacks will be sent to.
            #
            #   @return [String, nil]
            optional :recording_status_callback, String, api_name: :RecordingStatusCallback

            # @!attribute recording_status_callback_event
            #   The changes to the recording's state that should generate a call to
            #   `RecoridngStatusCallback`. Can be: `in-progress`, `completed` and `absent`.
            #   Separate multiple values with a space. Defaults to `completed`.
            #
            #   @return [String, nil]
            optional :recording_status_callback_event, String, api_name: :RecordingStatusCallbackEvent

            # @!attribute recording_status_callback_method
            #   HTTP request type used for `RecordingStatusCallback`. Defaults to `POST`.
            #
            #   @return [Symbol, Telnyx::Models::Texml::Accounts::Conferences::ParticipantParticipantsParams::RecordingStatusCallbackMethod, nil]
            optional :recording_status_callback_method,
                     enum: -> {
                       Telnyx::Texml::Accounts::Conferences::ParticipantParticipantsParams::RecordingStatusCallbackMethod
                     },
                     api_name: :RecordingStatusCallbackMethod

            # @!attribute recording_track
            #   The audio track to record for the call. The default is `both`.
            #
            #   @return [Symbol, Telnyx::Models::Texml::Accounts::Conferences::ParticipantParticipantsParams::RecordingTrack, nil]
            optional :recording_track,
                     enum: -> {
                       Telnyx::Texml::Accounts::Conferences::ParticipantParticipantsParams::RecordingTrack
                     },
                     api_name: :RecordingTrack

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

            # @!attribute start_conference_on_enter
            #   Whether to start the conference when the participant enters. Defaults to `true`.
            #
            #   @return [Boolean, nil]
            optional :start_conference_on_enter,
                     Telnyx::Internal::Type::Boolean,
                     api_name: :StartConferenceOnEnter

            # @!attribute status_callback
            #   URL destination for Telnyx to send status callback events to for the call.
            #
            #   @return [String, nil]
            optional :status_callback, String, api_name: :StatusCallback

            # @!attribute status_callback_event
            #   The changes to the call's state that should generate a call to `StatusCallback`.
            #   Can be: `initiated`, `ringing`, `answered`, and `completed`. Separate multiple
            #   values with a space. The default value is `completed`.
            #
            #   @return [String, nil]
            optional :status_callback_event, String, api_name: :StatusCallbackEvent

            # @!attribute status_callback_method
            #   HTTP request type used for `StatusCallback`.
            #
            #   @return [Symbol, Telnyx::Models::Texml::Accounts::Conferences::ParticipantParticipantsParams::StatusCallbackMethod, nil]
            optional :status_callback_method,
                     enum: -> {
                       Telnyx::Texml::Accounts::Conferences::ParticipantParticipantsParams::StatusCallbackMethod
                     },
                     api_name: :StatusCallbackMethod

            # @!attribute time_limit
            #   The maximum duration of the call in seconds.
            #
            #   @return [Integer, nil]
            optional :time_limit, Integer, api_name: :TimeLimit

            # @!attribute timeout_seconds
            #   The number of seconds that we should allow the phone to ring before assuming
            #   there is no answer. Can be an integer between 5 and 120, inclusive. The default
            #   value is 30.
            #
            #   @return [Integer, nil]
            optional :timeout_seconds, Integer, api_name: :Timeout

            # @!attribute to
            #   The phone number of the called party. Phone numbers are formatted with a `+` and
            #   country code.
            #
            #   @return [String, nil]
            optional :to, String, api_name: :To

            # @!attribute trim
            #   Whether to trim any leading and trailing silence from the recording. Defaults to
            #   `trim-silence`.
            #
            #   @return [Symbol, Telnyx::Models::Texml::Accounts::Conferences::ParticipantParticipantsParams::Trim, nil]
            optional :trim,
                     enum: -> { Telnyx::Texml::Accounts::Conferences::ParticipantParticipantsParams::Trim },
                     api_name: :Trim

            # @!attribute wait_url
            #   The URL to call for an audio file to play while the participant is waiting for
            #   the conference to start.
            #
            #   @return [String, nil]
            optional :wait_url, String, api_name: :WaitUrl

            # @!method initialize(account_sid:, amd_status_callback: nil, amd_status_callback_method: nil, beep: nil, caller_id: nil, call_sid_to_coach: nil, cancel_playback_on_detect_message_end: nil, cancel_playback_on_machine_detection: nil, coaching: nil, conference_record: nil, conference_recording_status_callback: nil, conference_recording_status_callback_event: nil, conference_recording_status_callback_method: nil, conference_recording_timeout: nil, conference_status_callback: nil, conference_status_callback_event: nil, conference_status_callback_method: nil, conference_trim: nil, custom_headers: nil, early_media: nil, end_conference_on_exit: nil, from: nil, machine_detection: nil, machine_detection_silence_timeout: nil, machine_detection_speech_end_threshold: nil, machine_detection_speech_threshold: nil, machine_detection_timeout: nil, max_participants: nil, muted: nil, preferred_codecs: nil, record: nil, recording_channels: nil, recording_status_callback: nil, recording_status_callback_event: nil, recording_status_callback_method: nil, recording_track: nil, sip_auth_password: nil, sip_auth_username: nil, start_conference_on_enter: nil, status_callback: nil, status_callback_event: nil, status_callback_method: nil, time_limit: nil, timeout_seconds: nil, to: nil, trim: nil, wait_url: nil, request_options: {})
            #   Some parameter documentations has been truncated, see
            #   {Telnyx::Models::Texml::Accounts::Conferences::ParticipantParticipantsParams}
            #   for more details.
            #
            #   @param account_sid [String]
            #
            #   @param amd_status_callback [String] The URL the result of answering machine detection will be sent to.
            #
            #   @param amd_status_callback_method [Symbol, Telnyx::Models::Texml::Accounts::Conferences::ParticipantParticipantsParams::AmdStatusCallbackMethod] HTTP request type used for `AmdStatusCallback`. Defaults to `POST`.
            #
            #   @param beep [Symbol, Telnyx::Models::Texml::Accounts::Conferences::ParticipantParticipantsParams::Beep] Whether to play a notification beep to the conference when the participant enter
            #
            #   @param caller_id [String] To be used as the caller id name (SIP From Display Name) presented to the destin
            #
            #   @param call_sid_to_coach [String] The SID of the participant who is being coached. The participant being coached i
            #
            #   @param cancel_playback_on_detect_message_end [Boolean] Whether to cancel ongoing playback on `greeting ended` detection. Defaults to `t
            #
            #   @param cancel_playback_on_machine_detection [Boolean] Whether to cancel ongoing playback on `machine` detection. Defaults to `true`.
            #
            #   @param coaching [Boolean] Whether the participant is coaching another call. When `true`, `CallSidToCoach`
            #
            #   @param conference_record [Symbol, Telnyx::Models::Texml::Accounts::Conferences::ParticipantParticipantsParams::ConferenceRecord] Whether to record the conference the participant is joining. Defualts to `do-not
            #
            #   @param conference_recording_status_callback [String] The URL the conference recording callbacks will be sent to.
            #
            #   @param conference_recording_status_callback_event [String] The changes to the conference recording's state that should generate a call to `
            #
            #   @param conference_recording_status_callback_method [Symbol, Telnyx::Models::Texml::Accounts::Conferences::ParticipantParticipantsParams::ConferenceRecordingStatusCallbackMethod] HTTP request type used for `ConferenceRecordingStatusCallback`. Defaults to `POS
            #
            #   @param conference_recording_timeout [Integer] The number of seconds that Telnyx will wait for the recording to be stopped if s
            #
            #   @param conference_status_callback [String] The URL the conference callbacks will be sent to.
            #
            #   @param conference_status_callback_event [String] The changes to the conference's state that should generate a call to `Conference
            #
            #   @param conference_status_callback_method [Symbol, Telnyx::Models::Texml::Accounts::Conferences::ParticipantParticipantsParams::ConferenceStatusCallbackMethod] HTTP request type used for `ConferenceStatusCallback`. Defaults to `POST`.
            #
            #   @param conference_trim [Symbol, Telnyx::Models::Texml::Accounts::Conferences::ParticipantParticipantsParams::ConferenceTrim] Whether to trim any leading and trailing silence from the conference recording.
            #
            #   @param custom_headers [Array<Telnyx::Models::Texml::Accounts::Conferences::ParticipantParticipantsParams::CustomHeader>] Custom HTTP headers to be sent with the call. Each header should be an object wi
            #
            #   @param early_media [Boolean] Whether participant shall be bridged to conference before the participant answer
            #
            #   @param end_conference_on_exit [Boolean] Whether to end the conference when the participant leaves. Defaults to `false`.
            #
            #   @param from [String] The phone number of the party that initiated the call. Phone numbers are formatt
            #
            #   @param machine_detection [Symbol, Telnyx::Models::Texml::Accounts::Conferences::ParticipantParticipantsParams::MachineDetection] Whether to detect if a human or an answering machine picked up the call. Use `En
            #
            #   @param machine_detection_silence_timeout [Integer] If initial silence duration is greater than this value, consider it a machine. I
            #
            #   @param machine_detection_speech_end_threshold [Integer] Silence duration threshold after a greeting message or voice for it be considere
            #
            #   @param machine_detection_speech_threshold [Integer] Maximum threshold of a human greeting. If greeting longer than this value, consi
            #
            #   @param machine_detection_timeout [Integer] How long answering machine detection should go on for before sending an `Unknown
            #
            #   @param max_participants [Integer] The maximum number of participants in the conference. Can be a positive integer
            #
            #   @param muted [Boolean] Whether the participant should be muted.
            #
            #   @param preferred_codecs [String] The list of comma-separated codecs to be offered on a call.
            #
            #   @param record [Boolean] Whether to record the entire participant's call leg. Defaults to `false`.
            #
            #   @param recording_channels [Symbol, Telnyx::Models::Texml::Accounts::Conferences::ParticipantParticipantsParams::RecordingChannels] The number of channels in the final recording. Defaults to `mono`.
            #
            #   @param recording_status_callback [String] The URL the recording callbacks will be sent to.
            #
            #   @param recording_status_callback_event [String] The changes to the recording's state that should generate a call to `RecoridngSt
            #
            #   @param recording_status_callback_method [Symbol, Telnyx::Models::Texml::Accounts::Conferences::ParticipantParticipantsParams::RecordingStatusCallbackMethod] HTTP request type used for `RecordingStatusCallback`. Defaults to `POST`.
            #
            #   @param recording_track [Symbol, Telnyx::Models::Texml::Accounts::Conferences::ParticipantParticipantsParams::RecordingTrack] The audio track to record for the call. The default is `both`.
            #
            #   @param sip_auth_password [String] The password to use for SIP authentication.
            #
            #   @param sip_auth_username [String] The username to use for SIP authentication.
            #
            #   @param start_conference_on_enter [Boolean] Whether to start the conference when the participant enters. Defaults to `true`.
            #
            #   @param status_callback [String] URL destination for Telnyx to send status callback events to for the call.
            #
            #   @param status_callback_event [String] The changes to the call's state that should generate a call to `StatusCallback`.
            #
            #   @param status_callback_method [Symbol, Telnyx::Models::Texml::Accounts::Conferences::ParticipantParticipantsParams::StatusCallbackMethod] HTTP request type used for `StatusCallback`.
            #
            #   @param time_limit [Integer] The maximum duration of the call in seconds.
            #
            #   @param timeout_seconds [Integer] The number of seconds that we should allow the phone to ring before assuming the
            #
            #   @param to [String] The phone number of the called party. Phone numbers are formatted with a `+` and
            #
            #   @param trim [Symbol, Telnyx::Models::Texml::Accounts::Conferences::ParticipantParticipantsParams::Trim] Whether to trim any leading and trailing silence from the recording. Defaults to
            #
            #   @param wait_url [String] The URL to call for an audio file to play while the participant is waiting for t
            #
            #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

            # HTTP request type used for `AmdStatusCallback`. Defaults to `POST`.
            module AmdStatusCallbackMethod
              extend Telnyx::Internal::Type::Enum

              GET = :GET
              POST = :POST

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # Whether to play a notification beep to the conference when the participant
            # enters and exits.
            module Beep
              extend Telnyx::Internal::Type::Enum

              TRUE = :true
              FALSE = :false
              ON_ENTER = :onEnter
              ON_EXIT = :onExit

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # Whether to record the conference the participant is joining. Defualts to
            # `do-not-record`. The boolean values `true` and `false` are synonymous with
            # `record-from-start` and `do-not-record` respectively.
            module ConferenceRecord
              extend Telnyx::Internal::Type::Enum

              TRUE = :true
              FALSE = :false
              RECORD_FROM_START = :"record-from-start"
              DO_NOT_RECORD = :"do-not-record"

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # HTTP request type used for `ConferenceRecordingStatusCallback`. Defaults to
            # `POST`.
            module ConferenceRecordingStatusCallbackMethod
              extend Telnyx::Internal::Type::Enum

              GET = :GET
              POST = :POST

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # HTTP request type used for `ConferenceStatusCallback`. Defaults to `POST`.
            module ConferenceStatusCallbackMethod
              extend Telnyx::Internal::Type::Enum

              GET = :GET
              POST = :POST

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # Whether to trim any leading and trailing silence from the conference recording.
            # Defaults to `trim-silence`.
            module ConferenceTrim
              extend Telnyx::Internal::Type::Enum

              TRIM_SILENCE = :"trim-silence"
              DO_NOT_TRIM = :"do-not-trim"

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

            # Whether to detect if a human or an answering machine picked up the call. Use
            # `Enable` if you would like to ne notified as soon as the called party is
            # identified. Use `DetectMessageEnd`, if you would like to leave a message on an
            # answering machine.
            module MachineDetection
              extend Telnyx::Internal::Type::Enum

              ENABLE = :Enable
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
    end
  end
end

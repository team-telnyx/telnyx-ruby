# typed: strong

module Telnyx
  module Models
    module Texml
      module Accounts
        module Conferences
          class ParticipantParticipantsParams < Telnyx::Internal::Type::BaseModel
            extend Telnyx::Internal::Type::RequestParameters::Converter
            include Telnyx::Internal::Type::RequestParameters

            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Texml::Accounts::Conferences::ParticipantParticipantsParams,
                  Telnyx::Internal::AnyHash
                )
              end

            sig { returns(String) }
            attr_accessor :account_sid

            # The URL the result of answering machine detection will be sent to.
            sig { returns(T.nilable(String)) }
            attr_reader :amd_status_callback

            sig { params(amd_status_callback: String).void }
            attr_writer :amd_status_callback

            # HTTP request type used for `AmdStatusCallback`. Defaults to `POST`.
            sig do
              returns(
                T.nilable(
                  Telnyx::Texml::Accounts::Conferences::ParticipantParticipantsParams::AmdStatusCallbackMethod::OrSymbol
                )
              )
            end
            attr_reader :amd_status_callback_method

            sig do
              params(
                amd_status_callback_method:
                  Telnyx::Texml::Accounts::Conferences::ParticipantParticipantsParams::AmdStatusCallbackMethod::OrSymbol
              ).void
            end
            attr_writer :amd_status_callback_method

            # Whether to play a notification beep to the conference when the participant
            # enters and exits.
            sig do
              returns(
                T.nilable(
                  Telnyx::Texml::Accounts::Conferences::ParticipantParticipantsParams::Beep::OrSymbol
                )
              )
            end
            attr_reader :beep

            sig do
              params(
                beep:
                  Telnyx::Texml::Accounts::Conferences::ParticipantParticipantsParams::Beep::OrSymbol
              ).void
            end
            attr_writer :beep

            # To be used as the caller id name (SIP From Display Name) presented to the
            # destination (`To` number). The string should have a maximum of 128 characters,
            # containing only letters, numbers, spaces, and `-_~!.+` special characters. If
            # ommited, the display name will be the same as the number in the `From` field.
            sig { returns(T.nilable(String)) }
            attr_reader :caller_id

            sig { params(caller_id: String).void }
            attr_writer :caller_id

            # The SID of the participant who is being coached. The participant being coached
            # is the only participant who can hear the participant who is coaching.
            sig { returns(T.nilable(String)) }
            attr_reader :call_sid_to_coach

            sig { params(call_sid_to_coach: String).void }
            attr_writer :call_sid_to_coach

            # Whether to cancel ongoing playback on `greeting ended` detection. Defaults to
            # `true`.
            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :cancel_playback_on_detect_message_end

            sig do
              params(cancel_playback_on_detect_message_end: T::Boolean).void
            end
            attr_writer :cancel_playback_on_detect_message_end

            # Whether to cancel ongoing playback on `machine` detection. Defaults to `true`.
            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :cancel_playback_on_machine_detection

            sig do
              params(cancel_playback_on_machine_detection: T::Boolean).void
            end
            attr_writer :cancel_playback_on_machine_detection

            # Whether the participant is coaching another call. When `true`, `CallSidToCoach`
            # has to be given.
            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :coaching

            sig { params(coaching: T::Boolean).void }
            attr_writer :coaching

            # Whether to record the conference the participant is joining. Defualts to
            # `do-not-record`. The boolean values `true` and `false` are synonymous with
            # `record-from-start` and `do-not-record` respectively.
            sig do
              returns(
                T.nilable(
                  Telnyx::Texml::Accounts::Conferences::ParticipantParticipantsParams::ConferenceRecord::OrSymbol
                )
              )
            end
            attr_reader :conference_record

            sig do
              params(
                conference_record:
                  Telnyx::Texml::Accounts::Conferences::ParticipantParticipantsParams::ConferenceRecord::OrSymbol
              ).void
            end
            attr_writer :conference_record

            # The URL the conference recording callbacks will be sent to.
            sig { returns(T.nilable(String)) }
            attr_reader :conference_recording_status_callback

            sig { params(conference_recording_status_callback: String).void }
            attr_writer :conference_recording_status_callback

            # The changes to the conference recording's state that should generate a call to
            # `RecoridngStatusCallback`. Can be: `in-progress`, `completed` and `absent`.
            # Separate multiple values with a space. Defaults to `completed`. `failed` and
            # `absent` are synonymous.
            sig { returns(T.nilable(String)) }
            attr_reader :conference_recording_status_callback_event

            sig do
              params(conference_recording_status_callback_event: String).void
            end
            attr_writer :conference_recording_status_callback_event

            # HTTP request type used for `ConferenceRecordingStatusCallback`. Defaults to
            # `POST`.
            sig do
              returns(
                T.nilable(
                  Telnyx::Texml::Accounts::Conferences::ParticipantParticipantsParams::ConferenceRecordingStatusCallbackMethod::OrSymbol
                )
              )
            end
            attr_reader :conference_recording_status_callback_method

            sig do
              params(
                conference_recording_status_callback_method:
                  Telnyx::Texml::Accounts::Conferences::ParticipantParticipantsParams::ConferenceRecordingStatusCallbackMethod::OrSymbol
              ).void
            end
            attr_writer :conference_recording_status_callback_method

            # The number of seconds that Telnyx will wait for the recording to be stopped if
            # silence is detected. The timer only starts when the speech is detected. Please
            # note that the transcription is used to detect silence and the related charge
            # will be applied. The minimum value is 0. The default value is 0 (infinite)
            sig { returns(T.nilable(Integer)) }
            attr_reader :conference_recording_timeout

            sig { params(conference_recording_timeout: Integer).void }
            attr_writer :conference_recording_timeout

            # The URL the conference callbacks will be sent to.
            sig { returns(T.nilable(String)) }
            attr_reader :conference_status_callback

            sig { params(conference_status_callback: String).void }
            attr_writer :conference_status_callback

            # The changes to the conference's state that should generate a call to
            # `ConferenceStatusCallback`. Can be: `start`, `end`, `join` and `leave`. Separate
            # multiple values with a space. By default no callbacks are sent.
            sig { returns(T.nilable(String)) }
            attr_reader :conference_status_callback_event

            sig { params(conference_status_callback_event: String).void }
            attr_writer :conference_status_callback_event

            # HTTP request type used for `ConferenceStatusCallback`. Defaults to `POST`.
            sig do
              returns(
                T.nilable(
                  Telnyx::Texml::Accounts::Conferences::ParticipantParticipantsParams::ConferenceStatusCallbackMethod::OrSymbol
                )
              )
            end
            attr_reader :conference_status_callback_method

            sig do
              params(
                conference_status_callback_method:
                  Telnyx::Texml::Accounts::Conferences::ParticipantParticipantsParams::ConferenceStatusCallbackMethod::OrSymbol
              ).void
            end
            attr_writer :conference_status_callback_method

            # Whether to trim any leading and trailing silence from the conference recording.
            # Defaults to `trim-silence`.
            sig do
              returns(
                T.nilable(
                  Telnyx::Texml::Accounts::Conferences::ParticipantParticipantsParams::ConferenceTrim::OrSymbol
                )
              )
            end
            attr_reader :conference_trim

            sig do
              params(
                conference_trim:
                  Telnyx::Texml::Accounts::Conferences::ParticipantParticipantsParams::ConferenceTrim::OrSymbol
              ).void
            end
            attr_writer :conference_trim

            # Whether participant shall be bridged to conference before the participant
            # answers (from early media if available). Defaults to `false`.
            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :early_media

            sig { params(early_media: T::Boolean).void }
            attr_writer :early_media

            # Whether to end the conference when the participant leaves. Defaults to `false`.
            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :end_conference_on_exit

            sig { params(end_conference_on_exit: T::Boolean).void }
            attr_writer :end_conference_on_exit

            # The phone number of the party that initiated the call. Phone numbers are
            # formatted with a `+` and country code.
            sig { returns(T.nilable(String)) }
            attr_reader :from

            sig { params(from: String).void }
            attr_writer :from

            # Whether to detect if a human or an answering machine picked up the call. Use
            # `Enable` if you would like to ne notified as soon as the called party is
            # identified. Use `DetectMessageEnd`, if you would like to leave a message on an
            # answering machine.
            sig do
              returns(
                T.nilable(
                  Telnyx::Texml::Accounts::Conferences::ParticipantParticipantsParams::MachineDetection::OrSymbol
                )
              )
            end
            attr_reader :machine_detection

            sig do
              params(
                machine_detection:
                  Telnyx::Texml::Accounts::Conferences::ParticipantParticipantsParams::MachineDetection::OrSymbol
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

            # How long answering machine detection should go on for before sending an
            # `Unknown` result. Given in milliseconds.
            sig { returns(T.nilable(Integer)) }
            attr_reader :machine_detection_timeout

            sig { params(machine_detection_timeout: Integer).void }
            attr_writer :machine_detection_timeout

            # The maximum number of participants in the conference. Can be a positive integer
            # from 2 to 800. The default value is 250.
            sig { returns(T.nilable(Integer)) }
            attr_reader :max_participants

            sig { params(max_participants: Integer).void }
            attr_writer :max_participants

            # Whether the participant should be muted.
            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :muted

            sig { params(muted: T::Boolean).void }
            attr_writer :muted

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
                  Telnyx::Texml::Accounts::Conferences::ParticipantParticipantsParams::RecordingChannels::OrSymbol
                )
              )
            end
            attr_reader :recording_channels

            sig do
              params(
                recording_channels:
                  Telnyx::Texml::Accounts::Conferences::ParticipantParticipantsParams::RecordingChannels::OrSymbol
              ).void
            end
            attr_writer :recording_channels

            # The URL the recording callbacks will be sent to.
            sig { returns(T.nilable(String)) }
            attr_reader :recording_status_callback

            sig { params(recording_status_callback: String).void }
            attr_writer :recording_status_callback

            # The changes to the recording's state that should generate a call to
            # `RecoridngStatusCallback`. Can be: `in-progress`, `completed` and `absent`.
            # Separate multiple values with a space. Defaults to `completed`.
            sig { returns(T.nilable(String)) }
            attr_reader :recording_status_callback_event

            sig { params(recording_status_callback_event: String).void }
            attr_writer :recording_status_callback_event

            # HTTP request type used for `RecordingStatusCallback`. Defaults to `POST`.
            sig do
              returns(
                T.nilable(
                  Telnyx::Texml::Accounts::Conferences::ParticipantParticipantsParams::RecordingStatusCallbackMethod::OrSymbol
                )
              )
            end
            attr_reader :recording_status_callback_method

            sig do
              params(
                recording_status_callback_method:
                  Telnyx::Texml::Accounts::Conferences::ParticipantParticipantsParams::RecordingStatusCallbackMethod::OrSymbol
              ).void
            end
            attr_writer :recording_status_callback_method

            # The audio track to record for the call. The default is `both`.
            sig do
              returns(
                T.nilable(
                  Telnyx::Texml::Accounts::Conferences::ParticipantParticipantsParams::RecordingTrack::OrSymbol
                )
              )
            end
            attr_reader :recording_track

            sig do
              params(
                recording_track:
                  Telnyx::Texml::Accounts::Conferences::ParticipantParticipantsParams::RecordingTrack::OrSymbol
              ).void
            end
            attr_writer :recording_track

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

            # Whether to start the conference when the participant enters. Defaults to `true`.
            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :start_conference_on_enter

            sig { params(start_conference_on_enter: T::Boolean).void }
            attr_writer :start_conference_on_enter

            # URL destination for Telnyx to send status callback events to for the call.
            sig { returns(T.nilable(String)) }
            attr_reader :status_callback

            sig { params(status_callback: String).void }
            attr_writer :status_callback

            # The changes to the call's state that should generate a call to `StatusCallback`.
            # Can be: `initiated`, `ringing`, `answered`, and `completed`. Separate multiple
            # values with a space. The default value is `completed`.
            sig { returns(T.nilable(String)) }
            attr_reader :status_callback_event

            sig { params(status_callback_event: String).void }
            attr_writer :status_callback_event

            # HTTP request type used for `StatusCallback`.
            sig do
              returns(
                T.nilable(
                  Telnyx::Texml::Accounts::Conferences::ParticipantParticipantsParams::StatusCallbackMethod::OrSymbol
                )
              )
            end
            attr_reader :status_callback_method

            sig do
              params(
                status_callback_method:
                  Telnyx::Texml::Accounts::Conferences::ParticipantParticipantsParams::StatusCallbackMethod::OrSymbol
              ).void
            end
            attr_writer :status_callback_method

            # The maximum duration of the call in seconds.
            sig { returns(T.nilable(Integer)) }
            attr_reader :time_limit

            sig { params(time_limit: Integer).void }
            attr_writer :time_limit

            # The number of seconds that we should allow the phone to ring before assuming
            # there is no answer. Can be an integer between 5 and 120, inclusive. The default
            # value is 30.
            sig { returns(T.nilable(Integer)) }
            attr_reader :timeout_seconds

            sig { params(timeout_seconds: Integer).void }
            attr_writer :timeout_seconds

            # The phone number of the called party. Phone numbers are formatted with a `+` and
            # country code.
            sig { returns(T.nilable(String)) }
            attr_reader :to

            sig { params(to: String).void }
            attr_writer :to

            # Whether to trim any leading and trailing silence from the recording. Defaults to
            # `trim-silence`.
            sig do
              returns(
                T.nilable(
                  Telnyx::Texml::Accounts::Conferences::ParticipantParticipantsParams::Trim::OrSymbol
                )
              )
            end
            attr_reader :trim

            sig do
              params(
                trim:
                  Telnyx::Texml::Accounts::Conferences::ParticipantParticipantsParams::Trim::OrSymbol
              ).void
            end
            attr_writer :trim

            # The URL to call for an audio file to play while the participant is waiting for
            # the conference to start.
            sig { returns(T.nilable(String)) }
            attr_reader :wait_url

            sig { params(wait_url: String).void }
            attr_writer :wait_url

            sig do
              params(
                account_sid: String,
                amd_status_callback: String,
                amd_status_callback_method:
                  Telnyx::Texml::Accounts::Conferences::ParticipantParticipantsParams::AmdStatusCallbackMethod::OrSymbol,
                beep:
                  Telnyx::Texml::Accounts::Conferences::ParticipantParticipantsParams::Beep::OrSymbol,
                caller_id: String,
                call_sid_to_coach: String,
                cancel_playback_on_detect_message_end: T::Boolean,
                cancel_playback_on_machine_detection: T::Boolean,
                coaching: T::Boolean,
                conference_record:
                  Telnyx::Texml::Accounts::Conferences::ParticipantParticipantsParams::ConferenceRecord::OrSymbol,
                conference_recording_status_callback: String,
                conference_recording_status_callback_event: String,
                conference_recording_status_callback_method:
                  Telnyx::Texml::Accounts::Conferences::ParticipantParticipantsParams::ConferenceRecordingStatusCallbackMethod::OrSymbol,
                conference_recording_timeout: Integer,
                conference_status_callback: String,
                conference_status_callback_event: String,
                conference_status_callback_method:
                  Telnyx::Texml::Accounts::Conferences::ParticipantParticipantsParams::ConferenceStatusCallbackMethod::OrSymbol,
                conference_trim:
                  Telnyx::Texml::Accounts::Conferences::ParticipantParticipantsParams::ConferenceTrim::OrSymbol,
                early_media: T::Boolean,
                end_conference_on_exit: T::Boolean,
                from: String,
                machine_detection:
                  Telnyx::Texml::Accounts::Conferences::ParticipantParticipantsParams::MachineDetection::OrSymbol,
                machine_detection_silence_timeout: Integer,
                machine_detection_speech_end_threshold: Integer,
                machine_detection_speech_threshold: Integer,
                machine_detection_timeout: Integer,
                max_participants: Integer,
                muted: T::Boolean,
                preferred_codecs: String,
                record: T::Boolean,
                recording_channels:
                  Telnyx::Texml::Accounts::Conferences::ParticipantParticipantsParams::RecordingChannels::OrSymbol,
                recording_status_callback: String,
                recording_status_callback_event: String,
                recording_status_callback_method:
                  Telnyx::Texml::Accounts::Conferences::ParticipantParticipantsParams::RecordingStatusCallbackMethod::OrSymbol,
                recording_track:
                  Telnyx::Texml::Accounts::Conferences::ParticipantParticipantsParams::RecordingTrack::OrSymbol,
                sip_auth_password: String,
                sip_auth_username: String,
                start_conference_on_enter: T::Boolean,
                status_callback: String,
                status_callback_event: String,
                status_callback_method:
                  Telnyx::Texml::Accounts::Conferences::ParticipantParticipantsParams::StatusCallbackMethod::OrSymbol,
                time_limit: Integer,
                timeout_seconds: Integer,
                to: String,
                trim:
                  Telnyx::Texml::Accounts::Conferences::ParticipantParticipantsParams::Trim::OrSymbol,
                wait_url: String,
                request_options: Telnyx::RequestOptions::OrHash
              ).returns(T.attached_class)
            end
            def self.new(
              account_sid:,
              # The URL the result of answering machine detection will be sent to.
              amd_status_callback: nil,
              # HTTP request type used for `AmdStatusCallback`. Defaults to `POST`.
              amd_status_callback_method: nil,
              # Whether to play a notification beep to the conference when the participant
              # enters and exits.
              beep: nil,
              # To be used as the caller id name (SIP From Display Name) presented to the
              # destination (`To` number). The string should have a maximum of 128 characters,
              # containing only letters, numbers, spaces, and `-_~!.+` special characters. If
              # ommited, the display name will be the same as the number in the `From` field.
              caller_id: nil,
              # The SID of the participant who is being coached. The participant being coached
              # is the only participant who can hear the participant who is coaching.
              call_sid_to_coach: nil,
              # Whether to cancel ongoing playback on `greeting ended` detection. Defaults to
              # `true`.
              cancel_playback_on_detect_message_end: nil,
              # Whether to cancel ongoing playback on `machine` detection. Defaults to `true`.
              cancel_playback_on_machine_detection: nil,
              # Whether the participant is coaching another call. When `true`, `CallSidToCoach`
              # has to be given.
              coaching: nil,
              # Whether to record the conference the participant is joining. Defualts to
              # `do-not-record`. The boolean values `true` and `false` are synonymous with
              # `record-from-start` and `do-not-record` respectively.
              conference_record: nil,
              # The URL the conference recording callbacks will be sent to.
              conference_recording_status_callback: nil,
              # The changes to the conference recording's state that should generate a call to
              # `RecoridngStatusCallback`. Can be: `in-progress`, `completed` and `absent`.
              # Separate multiple values with a space. Defaults to `completed`. `failed` and
              # `absent` are synonymous.
              conference_recording_status_callback_event: nil,
              # HTTP request type used for `ConferenceRecordingStatusCallback`. Defaults to
              # `POST`.
              conference_recording_status_callback_method: nil,
              # The number of seconds that Telnyx will wait for the recording to be stopped if
              # silence is detected. The timer only starts when the speech is detected. Please
              # note that the transcription is used to detect silence and the related charge
              # will be applied. The minimum value is 0. The default value is 0 (infinite)
              conference_recording_timeout: nil,
              # The URL the conference callbacks will be sent to.
              conference_status_callback: nil,
              # The changes to the conference's state that should generate a call to
              # `ConferenceStatusCallback`. Can be: `start`, `end`, `join` and `leave`. Separate
              # multiple values with a space. By default no callbacks are sent.
              conference_status_callback_event: nil,
              # HTTP request type used for `ConferenceStatusCallback`. Defaults to `POST`.
              conference_status_callback_method: nil,
              # Whether to trim any leading and trailing silence from the conference recording.
              # Defaults to `trim-silence`.
              conference_trim: nil,
              # Whether participant shall be bridged to conference before the participant
              # answers (from early media if available). Defaults to `false`.
              early_media: nil,
              # Whether to end the conference when the participant leaves. Defaults to `false`.
              end_conference_on_exit: nil,
              # The phone number of the party that initiated the call. Phone numbers are
              # formatted with a `+` and country code.
              from: nil,
              # Whether to detect if a human or an answering machine picked up the call. Use
              # `Enable` if you would like to ne notified as soon as the called party is
              # identified. Use `DetectMessageEnd`, if you would like to leave a message on an
              # answering machine.
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
              # How long answering machine detection should go on for before sending an
              # `Unknown` result. Given in milliseconds.
              machine_detection_timeout: nil,
              # The maximum number of participants in the conference. Can be a positive integer
              # from 2 to 800. The default value is 250.
              max_participants: nil,
              # Whether the participant should be muted.
              muted: nil,
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
              # The audio track to record for the call. The default is `both`.
              recording_track: nil,
              # The password to use for SIP authentication.
              sip_auth_password: nil,
              # The username to use for SIP authentication.
              sip_auth_username: nil,
              # Whether to start the conference when the participant enters. Defaults to `true`.
              start_conference_on_enter: nil,
              # URL destination for Telnyx to send status callback events to for the call.
              status_callback: nil,
              # The changes to the call's state that should generate a call to `StatusCallback`.
              # Can be: `initiated`, `ringing`, `answered`, and `completed`. Separate multiple
              # values with a space. The default value is `completed`.
              status_callback_event: nil,
              # HTTP request type used for `StatusCallback`.
              status_callback_method: nil,
              # The maximum duration of the call in seconds.
              time_limit: nil,
              # The number of seconds that we should allow the phone to ring before assuming
              # there is no answer. Can be an integer between 5 and 120, inclusive. The default
              # value is 30.
              timeout_seconds: nil,
              # The phone number of the called party. Phone numbers are formatted with a `+` and
              # country code.
              to: nil,
              # Whether to trim any leading and trailing silence from the recording. Defaults to
              # `trim-silence`.
              trim: nil,
              # The URL to call for an audio file to play while the participant is waiting for
              # the conference to start.
              wait_url: nil,
              request_options: {}
            )
            end

            sig do
              override.returns(
                {
                  account_sid: String,
                  amd_status_callback: String,
                  amd_status_callback_method:
                    Telnyx::Texml::Accounts::Conferences::ParticipantParticipantsParams::AmdStatusCallbackMethod::OrSymbol,
                  beep:
                    Telnyx::Texml::Accounts::Conferences::ParticipantParticipantsParams::Beep::OrSymbol,
                  caller_id: String,
                  call_sid_to_coach: String,
                  cancel_playback_on_detect_message_end: T::Boolean,
                  cancel_playback_on_machine_detection: T::Boolean,
                  coaching: T::Boolean,
                  conference_record:
                    Telnyx::Texml::Accounts::Conferences::ParticipantParticipantsParams::ConferenceRecord::OrSymbol,
                  conference_recording_status_callback: String,
                  conference_recording_status_callback_event: String,
                  conference_recording_status_callback_method:
                    Telnyx::Texml::Accounts::Conferences::ParticipantParticipantsParams::ConferenceRecordingStatusCallbackMethod::OrSymbol,
                  conference_recording_timeout: Integer,
                  conference_status_callback: String,
                  conference_status_callback_event: String,
                  conference_status_callback_method:
                    Telnyx::Texml::Accounts::Conferences::ParticipantParticipantsParams::ConferenceStatusCallbackMethod::OrSymbol,
                  conference_trim:
                    Telnyx::Texml::Accounts::Conferences::ParticipantParticipantsParams::ConferenceTrim::OrSymbol,
                  early_media: T::Boolean,
                  end_conference_on_exit: T::Boolean,
                  from: String,
                  machine_detection:
                    Telnyx::Texml::Accounts::Conferences::ParticipantParticipantsParams::MachineDetection::OrSymbol,
                  machine_detection_silence_timeout: Integer,
                  machine_detection_speech_end_threshold: Integer,
                  machine_detection_speech_threshold: Integer,
                  machine_detection_timeout: Integer,
                  max_participants: Integer,
                  muted: T::Boolean,
                  preferred_codecs: String,
                  record: T::Boolean,
                  recording_channels:
                    Telnyx::Texml::Accounts::Conferences::ParticipantParticipantsParams::RecordingChannels::OrSymbol,
                  recording_status_callback: String,
                  recording_status_callback_event: String,
                  recording_status_callback_method:
                    Telnyx::Texml::Accounts::Conferences::ParticipantParticipantsParams::RecordingStatusCallbackMethod::OrSymbol,
                  recording_track:
                    Telnyx::Texml::Accounts::Conferences::ParticipantParticipantsParams::RecordingTrack::OrSymbol,
                  sip_auth_password: String,
                  sip_auth_username: String,
                  start_conference_on_enter: T::Boolean,
                  status_callback: String,
                  status_callback_event: String,
                  status_callback_method:
                    Telnyx::Texml::Accounts::Conferences::ParticipantParticipantsParams::StatusCallbackMethod::OrSymbol,
                  time_limit: Integer,
                  timeout_seconds: Integer,
                  to: String,
                  trim:
                    Telnyx::Texml::Accounts::Conferences::ParticipantParticipantsParams::Trim::OrSymbol,
                  wait_url: String,
                  request_options: Telnyx::RequestOptions
                }
              )
            end
            def to_hash
            end

            # HTTP request type used for `AmdStatusCallback`. Defaults to `POST`.
            module AmdStatusCallbackMethod
              extend Telnyx::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Telnyx::Texml::Accounts::Conferences::ParticipantParticipantsParams::AmdStatusCallbackMethod
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              GET =
                T.let(
                  :GET,
                  Telnyx::Texml::Accounts::Conferences::ParticipantParticipantsParams::AmdStatusCallbackMethod::TaggedSymbol
                )
              POST =
                T.let(
                  :POST,
                  Telnyx::Texml::Accounts::Conferences::ParticipantParticipantsParams::AmdStatusCallbackMethod::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Telnyx::Texml::Accounts::Conferences::ParticipantParticipantsParams::AmdStatusCallbackMethod::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            # Whether to play a notification beep to the conference when the participant
            # enters and exits.
            module Beep
              extend Telnyx::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Telnyx::Texml::Accounts::Conferences::ParticipantParticipantsParams::Beep
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              TRUE =
                T.let(
                  :true,
                  Telnyx::Texml::Accounts::Conferences::ParticipantParticipantsParams::Beep::TaggedSymbol
                )
              FALSE =
                T.let(
                  :false,
                  Telnyx::Texml::Accounts::Conferences::ParticipantParticipantsParams::Beep::TaggedSymbol
                )
              ON_ENTER =
                T.let(
                  :onEnter,
                  Telnyx::Texml::Accounts::Conferences::ParticipantParticipantsParams::Beep::TaggedSymbol
                )
              ON_EXIT =
                T.let(
                  :onExit,
                  Telnyx::Texml::Accounts::Conferences::ParticipantParticipantsParams::Beep::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Telnyx::Texml::Accounts::Conferences::ParticipantParticipantsParams::Beep::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            # Whether to record the conference the participant is joining. Defualts to
            # `do-not-record`. The boolean values `true` and `false` are synonymous with
            # `record-from-start` and `do-not-record` respectively.
            module ConferenceRecord
              extend Telnyx::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Telnyx::Texml::Accounts::Conferences::ParticipantParticipantsParams::ConferenceRecord
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              TRUE =
                T.let(
                  :true,
                  Telnyx::Texml::Accounts::Conferences::ParticipantParticipantsParams::ConferenceRecord::TaggedSymbol
                )
              FALSE =
                T.let(
                  :false,
                  Telnyx::Texml::Accounts::Conferences::ParticipantParticipantsParams::ConferenceRecord::TaggedSymbol
                )
              RECORD_FROM_START =
                T.let(
                  :"record-from-start",
                  Telnyx::Texml::Accounts::Conferences::ParticipantParticipantsParams::ConferenceRecord::TaggedSymbol
                )
              DO_NOT_RECORD =
                T.let(
                  :"do-not-record",
                  Telnyx::Texml::Accounts::Conferences::ParticipantParticipantsParams::ConferenceRecord::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Telnyx::Texml::Accounts::Conferences::ParticipantParticipantsParams::ConferenceRecord::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            # HTTP request type used for `ConferenceRecordingStatusCallback`. Defaults to
            # `POST`.
            module ConferenceRecordingStatusCallbackMethod
              extend Telnyx::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Telnyx::Texml::Accounts::Conferences::ParticipantParticipantsParams::ConferenceRecordingStatusCallbackMethod
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              GET =
                T.let(
                  :GET,
                  Telnyx::Texml::Accounts::Conferences::ParticipantParticipantsParams::ConferenceRecordingStatusCallbackMethod::TaggedSymbol
                )
              POST =
                T.let(
                  :POST,
                  Telnyx::Texml::Accounts::Conferences::ParticipantParticipantsParams::ConferenceRecordingStatusCallbackMethod::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Telnyx::Texml::Accounts::Conferences::ParticipantParticipantsParams::ConferenceRecordingStatusCallbackMethod::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            # HTTP request type used for `ConferenceStatusCallback`. Defaults to `POST`.
            module ConferenceStatusCallbackMethod
              extend Telnyx::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Telnyx::Texml::Accounts::Conferences::ParticipantParticipantsParams::ConferenceStatusCallbackMethod
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              GET =
                T.let(
                  :GET,
                  Telnyx::Texml::Accounts::Conferences::ParticipantParticipantsParams::ConferenceStatusCallbackMethod::TaggedSymbol
                )
              POST =
                T.let(
                  :POST,
                  Telnyx::Texml::Accounts::Conferences::ParticipantParticipantsParams::ConferenceStatusCallbackMethod::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Telnyx::Texml::Accounts::Conferences::ParticipantParticipantsParams::ConferenceStatusCallbackMethod::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            # Whether to trim any leading and trailing silence from the conference recording.
            # Defaults to `trim-silence`.
            module ConferenceTrim
              extend Telnyx::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Telnyx::Texml::Accounts::Conferences::ParticipantParticipantsParams::ConferenceTrim
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              TRIM_SILENCE =
                T.let(
                  :"trim-silence",
                  Telnyx::Texml::Accounts::Conferences::ParticipantParticipantsParams::ConferenceTrim::TaggedSymbol
                )
              DO_NOT_TRIM =
                T.let(
                  :"do-not-trim",
                  Telnyx::Texml::Accounts::Conferences::ParticipantParticipantsParams::ConferenceTrim::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Telnyx::Texml::Accounts::Conferences::ParticipantParticipantsParams::ConferenceTrim::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            # Whether to detect if a human or an answering machine picked up the call. Use
            # `Enable` if you would like to ne notified as soon as the called party is
            # identified. Use `DetectMessageEnd`, if you would like to leave a message on an
            # answering machine.
            module MachineDetection
              extend Telnyx::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Telnyx::Texml::Accounts::Conferences::ParticipantParticipantsParams::MachineDetection
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ENABLE =
                T.let(
                  :Enable,
                  Telnyx::Texml::Accounts::Conferences::ParticipantParticipantsParams::MachineDetection::TaggedSymbol
                )
              DETECT_MESSAGE_END =
                T.let(
                  :DetectMessageEnd,
                  Telnyx::Texml::Accounts::Conferences::ParticipantParticipantsParams::MachineDetection::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Telnyx::Texml::Accounts::Conferences::ParticipantParticipantsParams::MachineDetection::TaggedSymbol
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
                  T.all(
                    Symbol,
                    Telnyx::Texml::Accounts::Conferences::ParticipantParticipantsParams::RecordingChannels
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              MONO =
                T.let(
                  :mono,
                  Telnyx::Texml::Accounts::Conferences::ParticipantParticipantsParams::RecordingChannels::TaggedSymbol
                )
              DUAL =
                T.let(
                  :dual,
                  Telnyx::Texml::Accounts::Conferences::ParticipantParticipantsParams::RecordingChannels::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Telnyx::Texml::Accounts::Conferences::ParticipantParticipantsParams::RecordingChannels::TaggedSymbol
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
                    Telnyx::Texml::Accounts::Conferences::ParticipantParticipantsParams::RecordingStatusCallbackMethod
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              GET =
                T.let(
                  :GET,
                  Telnyx::Texml::Accounts::Conferences::ParticipantParticipantsParams::RecordingStatusCallbackMethod::TaggedSymbol
                )
              POST =
                T.let(
                  :POST,
                  Telnyx::Texml::Accounts::Conferences::ParticipantParticipantsParams::RecordingStatusCallbackMethod::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Telnyx::Texml::Accounts::Conferences::ParticipantParticipantsParams::RecordingStatusCallbackMethod::TaggedSymbol
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
                  T.all(
                    Symbol,
                    Telnyx::Texml::Accounts::Conferences::ParticipantParticipantsParams::RecordingTrack
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              INBOUND =
                T.let(
                  :inbound,
                  Telnyx::Texml::Accounts::Conferences::ParticipantParticipantsParams::RecordingTrack::TaggedSymbol
                )
              OUTBOUND =
                T.let(
                  :outbound,
                  Telnyx::Texml::Accounts::Conferences::ParticipantParticipantsParams::RecordingTrack::TaggedSymbol
                )
              BOTH =
                T.let(
                  :both,
                  Telnyx::Texml::Accounts::Conferences::ParticipantParticipantsParams::RecordingTrack::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Telnyx::Texml::Accounts::Conferences::ParticipantParticipantsParams::RecordingTrack::TaggedSymbol
                  ]
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
                    Telnyx::Texml::Accounts::Conferences::ParticipantParticipantsParams::StatusCallbackMethod
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              GET =
                T.let(
                  :GET,
                  Telnyx::Texml::Accounts::Conferences::ParticipantParticipantsParams::StatusCallbackMethod::TaggedSymbol
                )
              POST =
                T.let(
                  :POST,
                  Telnyx::Texml::Accounts::Conferences::ParticipantParticipantsParams::StatusCallbackMethod::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Telnyx::Texml::Accounts::Conferences::ParticipantParticipantsParams::StatusCallbackMethod::TaggedSymbol
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
                  T.all(
                    Symbol,
                    Telnyx::Texml::Accounts::Conferences::ParticipantParticipantsParams::Trim
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              TRIM_SILENCE =
                T.let(
                  :"trim-silence",
                  Telnyx::Texml::Accounts::Conferences::ParticipantParticipantsParams::Trim::TaggedSymbol
                )
              DO_NOT_TRIM =
                T.let(
                  :"do-not-trim",
                  Telnyx::Texml::Accounts::Conferences::ParticipantParticipantsParams::Trim::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Telnyx::Texml::Accounts::Conferences::ParticipantParticipantsParams::Trim::TaggedSymbol
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
  end
end

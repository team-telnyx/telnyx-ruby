# typed: strong

module Telnyx
  module Resources
    class Texml
      class Accounts
        class Conferences
          class Participants
            # Gets conference participant resource
            sig do
              params(
                call_sid_or_participant_label: String,
                account_sid: String,
                conference_sid: String,
                request_options: Telnyx::RequestOptions::OrHash
              ).returns(
                Telnyx::Models::Texml::Accounts::Conferences::ParticipantRetrieveResponse
              )
            end
            def retrieve(
              # CallSid or Label of the Participant to update.
              call_sid_or_participant_label,
              # The id of the account the resource belongs to.
              account_sid:,
              # The ConferenceSid that uniquely identifies a conference.
              conference_sid:,
              request_options: {}
            )
            end

            # Updates a conference participant
            sig do
              params(
                call_sid_or_participant_label: String,
                account_sid: String,
                conference_sid: String,
                announce_method:
                  Telnyx::Texml::Accounts::Conferences::ParticipantUpdateParams::AnnounceMethod::OrSymbol,
                announce_url: String,
                beep_on_exit: T::Boolean,
                call_sid_to_coach: String,
                coaching: T::Boolean,
                end_conference_on_exit: T::Boolean,
                hold: T::Boolean,
                hold_method:
                  Telnyx::Texml::Accounts::Conferences::ParticipantUpdateParams::HoldMethod::OrSymbol,
                hold_url: String,
                muted: T::Boolean,
                wait_url: String,
                request_options: Telnyx::RequestOptions::OrHash
              ).returns(
                Telnyx::Models::Texml::Accounts::Conferences::ParticipantUpdateResponse
              )
            end
            def update(
              # Path param: CallSid or Label of the Participant to update.
              call_sid_or_participant_label,
              # Path param: The id of the account the resource belongs to.
              account_sid:,
              # Path param: The ConferenceSid that uniquely identifies a conference.
              conference_sid:,
              # Body param: The HTTP method used to call the `AnnounceUrl`. Defaults to `POST`.
              announce_method: nil,
              # Body param: The URL to call to announce something to the participant. The URL
              # may return an MP3 fileo a WAV file, or a TwiML document that contains `<Play>`,
              # `<Say>`, `<Pause>`, or `<Redirect>` verbs.
              announce_url: nil,
              # Body param: Whether to play a notification beep to the conference when the
              # participant exits.
              beep_on_exit: nil,
              # Body param: The SID of the participant who is being coached. The participant
              # being coached is the only participant who can hear the participant who is
              # coaching.
              call_sid_to_coach: nil,
              # Body param: Whether the participant is coaching another call. When `true`,
              # `CallSidToCoach` has to be given.
              coaching: nil,
              # Body param: Whether to end the conference when the participant leaves.
              end_conference_on_exit: nil,
              # Body param: Whether the participant should be on hold.
              hold: nil,
              # Body param: The HTTP method to use when calling the `HoldUrl`.
              hold_method: nil,
              # Body param: The URL to be called using the `HoldMethod` for music that plays
              # when the participant is on hold. The URL may return an MP3 file, a WAV file, or
              # a TwiML document that contains `<Play>`, `<Say>`, `<Pause>`, or `<Redirect>`
              # verbs.
              hold_url: nil,
              # Body param: Whether the participant should be muted.
              muted: nil,
              # Body param: The URL to call for an audio file to play while the participant is
              # waiting for the conference to start.
              wait_url: nil,
              request_options: {}
            )
            end

            # Deletes a conference participant
            sig do
              params(
                call_sid_or_participant_label: String,
                account_sid: String,
                conference_sid: String,
                request_options: Telnyx::RequestOptions::OrHash
              ).void
            end
            def delete(
              # CallSid or Label of the Participant to update.
              call_sid_or_participant_label,
              # The id of the account the resource belongs to.
              account_sid:,
              # The ConferenceSid that uniquely identifies a conference.
              conference_sid:,
              request_options: {}
            )
            end

            # Dials a new conference participant
            sig do
              params(
                conference_sid: String,
                account_sid: String,
                amd_status_callback: String,
                amd_status_callback_method:
                  Telnyx::Texml::Accounts::Conferences::ParticipantParticipantsParams::AmdStatusCallbackMethod::OrSymbol,
                application_sid: String,
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
                custom_headers:
                  T::Array[
                    Telnyx::Texml::Accounts::Conferences::ParticipantParticipantsParams::CustomHeader::OrHash
                  ],
                early_media: T::Boolean,
                end_conference_on_exit: T::Boolean,
                from: String,
                label: String,
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
              ).returns(
                Telnyx::Models::Texml::Accounts::Conferences::ParticipantParticipantsResponse
              )
            end
            def participants(
              # Path param: The ConferenceSid that uniquely identifies a conference.
              conference_sid,
              # Path param: The id of the account the resource belongs to.
              account_sid:,
              # Body param: The URL the result of answering machine detection will be sent to.
              amd_status_callback: nil,
              # Body param: HTTP request type used for `AmdStatusCallback`. Defaults to `POST`.
              amd_status_callback_method: nil,
              # Body param: The SID of the TeXML application that will handle the new
              # participant's call. Required unless joining an existing conference by its
              # ConferenceSid.
              application_sid: nil,
              # Body param: Whether to play a notification beep to the conference when the
              # participant enters and exits.
              beep: nil,
              # Body param: To be used as the caller id name (SIP From Display Name) presented
              # to the destination (`To` number). The string should have a maximum of 128
              # characters, containing only letters, numbers, spaces, and `-_~!.+` special
              # characters. If ommited, the display name will be the same as the number in the
              # `From` field.
              caller_id: nil,
              # Body param: The SID of the participant who is being coached. The participant
              # being coached is the only participant who can hear the participant who is
              # coaching.
              call_sid_to_coach: nil,
              # Body param: Whether to cancel ongoing playback on `greeting ended` detection.
              # Defaults to `true`.
              cancel_playback_on_detect_message_end: nil,
              # Body param: Whether to cancel ongoing playback on `machine` detection. Defaults
              # to `true`.
              cancel_playback_on_machine_detection: nil,
              # Body param: Whether the participant is coaching another call. When `true`,
              # `CallSidToCoach` has to be given.
              coaching: nil,
              # Body param: Whether to record the conference the participant is joining.
              # Defualts to `do-not-record`. The boolean values `true` and `false` are
              # synonymous with `record-from-start` and `do-not-record` respectively.
              conference_record: nil,
              # Body param: The URL the conference recording callbacks will be sent to.
              conference_recording_status_callback: nil,
              # Body param: The changes to the conference recording's state that should generate
              # a call to `RecoridngStatusCallback`. Can be: `in-progress`, `completed` and
              # `absent`. Separate multiple values with a space. Defaults to `completed`.
              # `failed` and `absent` are synonymous.
              conference_recording_status_callback_event: nil,
              # Body param: HTTP request type used for `ConferenceRecordingStatusCallback`.
              # Defaults to `POST`.
              conference_recording_status_callback_method: nil,
              # Body param: The number of seconds that Telnyx will wait for the recording to be
              # stopped if silence is detected. The timer only starts when the speech is
              # detected. Please note that the transcription is used to detect silence and the
              # related charge will be applied. The minimum value is 0. The default value is 0
              # (infinite)
              conference_recording_timeout: nil,
              # Body param: The URL the conference callbacks will be sent to.
              conference_status_callback: nil,
              # Body param: The changes to the conference's state that should generate a call to
              # `ConferenceStatusCallback`. Can be: `start`, `end`, `join` and `leave`. Separate
              # multiple values with a space. By default no callbacks are sent.
              conference_status_callback_event: nil,
              # Body param: HTTP request type used for `ConferenceStatusCallback`. Defaults to
              # `POST`.
              conference_status_callback_method: nil,
              # Body param: Whether to trim any leading and trailing silence from the conference
              # recording. Defaults to `trim-silence`.
              conference_trim: nil,
              # Body param: Custom HTTP headers to be sent with the call. Each header should be
              # an object with 'name' and 'value' properties.
              custom_headers: nil,
              # Body param: Whether participant shall be bridged to conference before the
              # participant answers (from early media if available). Defaults to `false`.
              early_media: nil,
              # Body param: Whether to end the conference when the participant leaves. Defaults
              # to `false`.
              end_conference_on_exit: nil,
              # Body param: The phone number of the party that initiated the call. Phone numbers
              # are formatted with a `+` and country code.
              from: nil,
              # Body param: A unique label for the participant that will be added to the
              # conference. The label can be used to reference the participant for updates via
              # the TeXML REST API.
              label: nil,
              # Body param: Whether to detect if a human or an answering machine picked up the
              # call. Use `Enable` if you would like to ne notified as soon as the called party
              # is identified. Use `DetectMessageEnd`, if you would like to leave a message on
              # an answering machine.
              machine_detection: nil,
              # Body param: If initial silence duration is greater than this value, consider it
              # a machine. Ignored when `premium` detection is used.
              machine_detection_silence_timeout: nil,
              # Body param: Silence duration threshold after a greeting message or voice for it
              # be considered human. Ignored when `premium` detection is used.
              machine_detection_speech_end_threshold: nil,
              # Body param: Maximum threshold of a human greeting. If greeting longer than this
              # value, considered machine. Ignored when `premium` detection is used.
              machine_detection_speech_threshold: nil,
              # Body param: How long answering machine detection should go on for before sending
              # an `Unknown` result. Given in milliseconds.
              machine_detection_timeout: nil,
              # Body param: The maximum number of participants in the conference. Can be a
              # positive integer from 2 to 800. The default value is 250.
              max_participants: nil,
              # Body param: Whether the participant should be muted.
              muted: nil,
              # Body param: The list of comma-separated codecs to be offered on a call.
              preferred_codecs: nil,
              # Body param: Whether to record the entire participant's call leg. Defaults to
              # `false`.
              record: nil,
              # Body param: The number of channels in the final recording. Defaults to `mono`.
              recording_channels: nil,
              # Body param: The URL the recording callbacks will be sent to.
              recording_status_callback: nil,
              # Body param: The changes to the recording's state that should generate a call to
              # `RecoridngStatusCallback`. Can be: `in-progress`, `completed` and `absent`.
              # Separate multiple values with a space. Defaults to `completed`.
              recording_status_callback_event: nil,
              # Body param: HTTP request type used for `RecordingStatusCallback`. Defaults to
              # `POST`.
              recording_status_callback_method: nil,
              # Body param: The audio track to record for the call. The default is `both`.
              recording_track: nil,
              # Body param: The password to use for SIP authentication.
              sip_auth_password: nil,
              # Body param: The username to use for SIP authentication.
              sip_auth_username: nil,
              # Body param: Whether to start the conference when the participant enters.
              # Defaults to `true`.
              start_conference_on_enter: nil,
              # Body param: URL destination for Telnyx to send status callback events to for the
              # call.
              status_callback: nil,
              # Body param: The changes to the call's state that should generate a call to
              # `StatusCallback`. Can be: `initiated`, `ringing`, `answered`, and `completed`.
              # Separate multiple values with a space. The default value is `completed`.
              status_callback_event: nil,
              # Body param: HTTP request type used for `StatusCallback`.
              status_callback_method: nil,
              # Body param: The maximum duration of the call in seconds.
              time_limit: nil,
              # Body param: The number of seconds that we should allow the phone to ring before
              # assuming there is no answer. Can be an integer between 5 and 120, inclusive. The
              # default value is 30.
              timeout_seconds: nil,
              # Body param: The phone number of the called party. Phone numbers are formatted
              # with a `+` and country code.
              to: nil,
              # Body param: Whether to trim any leading and trailing silence from the recording.
              # Defaults to `trim-silence`.
              trim: nil,
              # Body param: The URL to call for an audio file to play while the participant is
              # waiting for the conference to start.
              wait_url: nil,
              request_options: {}
            )
            end

            # Lists conference participants
            sig do
              params(
                conference_sid: String,
                account_sid: String,
                request_options: Telnyx::RequestOptions::OrHash
              ).returns(
                Telnyx::Models::Texml::Accounts::Conferences::ParticipantRetrieveParticipantsResponse
              )
            end
            def retrieve_participants(
              # The ConferenceSid that uniquely identifies a conference.
              conference_sid,
              # The id of the account the resource belongs to.
              account_sid:,
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
  end
end

# typed: strong

module Telnyx
  module Resources
    class Conferences
      class Actions
        # Update conference participant supervisor_role
        sig do
          params(
            id: String,
            call_control_id: String,
            supervisor_role:
              Telnyx::Conferences::UpdateConference::SupervisorRole::OrSymbol,
            command_id: String,
            region: Telnyx::Conferences::UpdateConference::Region::OrSymbol,
            whisper_call_control_ids: T::Array[String],
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::Conferences::ActionUpdateResponse)
        end
        def update(
          # Uniquely identifies the conference by id or name
          id,
          # Unique identifier and token for controlling the call
          call_control_id:,
          # Sets the participant as a supervisor for the conference. A conference can have
          # multiple supervisors. "barge" means the supervisor enters the conference as a
          # normal participant. This is the same as "none". "monitor" means the supervisor
          # is muted but can hear all participants. "whisper" means that only the specified
          # "whisper_call_control_ids" can hear the supervisor. Defaults to "none".
          supervisor_role:,
          # Use this field to avoid execution of duplicate commands. Telnyx will ignore
          # subsequent commands with the same `command_id` as one that has already been
          # executed.
          command_id: nil,
          # Region where the conference data is located. Defaults to the region defined in
          # user's data locality settings (Europe or US).
          region: nil,
          # Array of unique call_control_ids the supervisor can whisper to. If none
          # provided, the supervisor will join the conference as a monitoring participant
          # only.
          whisper_call_control_ids: nil,
          request_options: {}
        )
        end

        # Hold a list of participants in a conference call
        sig do
          params(
            id: String,
            audio_url: String,
            call_control_ids: T::Array[String],
            media_name: String,
            region: Telnyx::Conferences::ActionHoldParams::Region::OrSymbol,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::Conferences::ActionHoldResponse)
        end
        def hold(
          # Uniquely identifies the conference by id or name
          id,
          # The URL of a file to be played to the participants when they are put on hold.
          # media_name and audio_url cannot be used together in one request.
          audio_url: nil,
          # List of unique identifiers and tokens for controlling the call. When empty all
          # participants will be placed on hold.
          call_control_ids: nil,
          # The media_name of a file to be played to the participants when they are put on
          # hold. The media_name must point to a file previously uploaded to
          # api.telnyx.com/v2/media by the same user/organization. The file must either be a
          # WAV or MP3 file.
          media_name: nil,
          # Region where the conference data is located. Defaults to the region defined in
          # user's data locality settings (Europe or US).
          region: nil,
          request_options: {}
        )
        end

        # Join an existing call leg to a conference. Issue the Join Conference command
        # with the conference ID in the path and the `call_control_id` of the leg you wish
        # to join to the conference as an attribute. The conference can have up to a
        # certain amount of active participants, as set by the `max_participants`
        # parameter in conference creation request.
        #
        # **Expected Webhooks:**
        #
        # - `conference.participant.joined`
        # - `conference.participant.left`
        sig do
          params(
            id: String,
            call_control_id: String,
            beep_enabled:
              Telnyx::Conferences::ActionJoinParams::BeepEnabled::OrSymbol,
            client_state: String,
            command_id: String,
            end_conference_on_exit: T::Boolean,
            hold: T::Boolean,
            hold_audio_url: String,
            hold_media_name: String,
            mute: T::Boolean,
            region: Telnyx::Conferences::ActionJoinParams::Region::OrSymbol,
            soft_end_conference_on_exit: T::Boolean,
            start_conference_on_enter: T::Boolean,
            supervisor_role:
              Telnyx::Conferences::ActionJoinParams::SupervisorRole::OrSymbol,
            whisper_call_control_ids: T::Array[String],
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::Conferences::ActionJoinResponse)
        end
        def join(
          # Uniquely identifies the conference by id or name
          id,
          # Unique identifier and token for controlling the call
          call_control_id:,
          # Whether a beep sound should be played when the participant joins and/or leaves
          # the conference. Can be used to override the conference-level setting.
          beep_enabled: nil,
          # Use this field to add state to every subsequent webhook. It must be a valid
          # Base-64 encoded string. Please note that the client_state will be updated for
          # the participient call leg and the change will not affect conferencing webhooks
          # unless the participient is the owner of the conference.
          client_state: nil,
          # Use this field to avoid execution of duplicate commands. Telnyx will ignore
          # subsequent commands with the same `command_id` as one that has already been
          # executed.
          command_id: nil,
          # Whether the conference should end and all remaining participants be hung up
          # after the participant leaves the conference. Defaults to "false".
          end_conference_on_exit: nil,
          # Whether the participant should be put on hold immediately after joining the
          # conference. Defaults to "false".
          hold: nil,
          # The URL of a file to be played to the participant when they are put on hold
          # after joining the conference. hold_media_name and hold_audio_url cannot be used
          # together in one request. Takes effect only when "start_conference_on_create" is
          # set to "false". This property takes effect only if "hold" is set to "true".
          hold_audio_url: nil,
          # The media_name of a file to be played to the participant when they are put on
          # hold after joining the conference. The media_name must point to a file
          # previously uploaded to api.telnyx.com/v2/media by the same user/organization.
          # The file must either be a WAV or MP3 file. Takes effect only when
          # "start_conference_on_create" is set to "false". This property takes effect only
          # if "hold" is set to "true".
          hold_media_name: nil,
          # Whether the participant should be muted immediately after joining the
          # conference. Defaults to "false".
          mute: nil,
          # Region where the conference data is located. Defaults to the region defined in
          # user's data locality settings (Europe or US).
          region: nil,
          # Whether the conference should end after the participant leaves the conference.
          # NOTE this doesn't hang up the other participants. Defaults to "false".
          soft_end_conference_on_exit: nil,
          # Whether the conference should be started after the participant joins the
          # conference. Defaults to "false".
          start_conference_on_enter: nil,
          # Sets the joining participant as a supervisor for the conference. A conference
          # can have multiple supervisors. "barge" means the supervisor enters the
          # conference as a normal participant. This is the same as "none". "monitor" means
          # the supervisor is muted but can hear all participants. "whisper" means that only
          # the specified "whisper_call_control_ids" can hear the supervisor. Defaults to
          # "none".
          supervisor_role: nil,
          # Array of unique call_control_ids the joining supervisor can whisper to. If none
          # provided, the supervisor will join the conference as a monitoring participant
          # only.
          whisper_call_control_ids: nil,
          request_options: {}
        )
        end

        # Removes a call leg from a conference and moves it back to parked state.
        #
        # **Expected Webhooks:**
        #
        # - `conference.participant.left`
        sig do
          params(
            id: String,
            call_control_id: String,
            beep_enabled:
              Telnyx::Conferences::ActionLeaveParams::BeepEnabled::OrSymbol,
            command_id: String,
            region: Telnyx::Conferences::ActionLeaveParams::Region::OrSymbol,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::Conferences::ActionLeaveResponse)
        end
        def leave(
          # Uniquely identifies the conference by id or name
          id,
          # Unique identifier and token for controlling the call
          call_control_id:,
          # Whether a beep sound should be played when the participant leaves the
          # conference. Can be used to override the conference-level setting.
          beep_enabled: nil,
          # Use this field to avoid execution of duplicate commands. Telnyx will ignore
          # subsequent commands with the same `command_id` as one that has already been
          # executed.
          command_id: nil,
          # Region where the conference data is located. Defaults to the region defined in
          # user's data locality settings (Europe or US).
          region: nil,
          request_options: {}
        )
        end

        # Mute a list of participants in a conference call
        sig do
          params(
            id: String,
            call_control_ids: T::Array[String],
            region: Telnyx::Conferences::ActionMuteParams::Region::OrSymbol,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::Conferences::ActionMuteResponse)
        end
        def mute(
          # Uniquely identifies the conference by id or name
          id,
          # Array of unique identifiers and tokens for controlling the call. When empty all
          # participants will be muted.
          call_control_ids: nil,
          # Region where the conference data is located. Defaults to the region defined in
          # user's data locality settings (Europe or US).
          region: nil,
          request_options: {}
        )
        end

        # Play audio to all or some participants on a conference call.
        sig do
          params(
            id: String,
            audio_url: String,
            call_control_ids: T::Array[String],
            loop_: Telnyx::Calls::Loopcount::Variants,
            media_name: String,
            region: Telnyx::Conferences::ActionPlayParams::Region::OrSymbol,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::Conferences::ActionPlayResponse)
        end
        def play(
          # Uniquely identifies the conference by id or name
          id,
          # The URL of a file to be played back in the conference. media_name and audio_url
          # cannot be used together in one request.
          audio_url: nil,
          # List of call control ids identifying participants the audio file should be
          # played to. If not given, the audio file will be played to the entire conference.
          call_control_ids: nil,
          # The number of times the audio file should be played. If supplied, the value must
          # be an integer between 1 and 100, or the special string `infinity` for an endless
          # loop.
          loop_: nil,
          # The media_name of a file to be played back in the conference. The media_name
          # must point to a file previously uploaded to api.telnyx.com/v2/media by the same
          # user/organization. The file must either be a WAV or MP3 file.
          media_name: nil,
          # Region where the conference data is located. Defaults to the region defined in
          # user's data locality settings (Europe or US).
          region: nil,
          request_options: {}
        )
        end

        # Pause conference recording.
        sig do
          params(
            id: String,
            command_id: String,
            recording_id: String,
            region:
              Telnyx::Conferences::ActionRecordPauseParams::Region::OrSymbol,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::Conferences::ActionRecordPauseResponse)
        end
        def record_pause(
          # Specifies the conference by id or name
          id,
          # Use this field to avoid duplicate commands. Telnyx will ignore any command with
          # the same `command_id` for the same `call_control_id`.
          command_id: nil,
          # Use this field to pause specific recording.
          recording_id: nil,
          # Region where the conference data is located. Defaults to the region defined in
          # user's data locality settings (Europe or US).
          region: nil,
          request_options: {}
        )
        end

        # Resume conference recording.
        sig do
          params(
            id: String,
            command_id: String,
            recording_id: String,
            region:
              Telnyx::Conferences::ActionRecordResumeParams::Region::OrSymbol,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::Conferences::ActionRecordResumeResponse)
        end
        def record_resume(
          # Specifies the conference by id or name
          id,
          # Use this field to avoid duplicate commands. Telnyx will ignore any command with
          # the same `command_id` for the same `call_control_id`.
          command_id: nil,
          # Use this field to resume specific recording.
          recording_id: nil,
          # Region where the conference data is located. Defaults to the region defined in
          # user's data locality settings (Europe or US).
          region: nil,
          request_options: {}
        )
        end

        # Start recording the conference. Recording will stop on conference end, or via
        # the Stop Recording command.
        #
        # **Expected Webhooks:**
        #
        # - `conference.recording.saved`
        sig do
          params(
            id: String,
            format_:
              Telnyx::Conferences::ActionRecordStartParams::Format::OrSymbol,
            command_id: String,
            custom_file_name: String,
            play_beep: T::Boolean,
            region:
              Telnyx::Conferences::ActionRecordStartParams::Region::OrSymbol,
            trim: Telnyx::Conferences::ActionRecordStartParams::Trim::OrSymbol,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::Conferences::ActionRecordStartResponse)
        end
        def record_start(
          # Specifies the conference to record by id or name
          id,
          # The audio file format used when storing the conference recording. Can be either
          # `mp3` or `wav`.
          format_:,
          # Use this field to avoid duplicate commands. Telnyx will ignore any command with
          # the same `command_id` for the same `conference_id`.
          command_id: nil,
          # The custom recording file name to be used instead of the default `call_leg_id`.
          # Telnyx will still add a Unix timestamp suffix.
          custom_file_name: nil,
          # If enabled, a beep sound will be played at the start of a recording.
          play_beep: nil,
          # Region where the conference data is located. Defaults to the region defined in
          # user's data locality settings (Europe or US).
          region: nil,
          # When set to `trim-silence`, silence will be removed from the beginning and end
          # of the recording.
          trim: nil,
          request_options: {}
        )
        end

        # Stop recording the conference.
        #
        # **Expected Webhooks:**
        #
        # - `conference.recording.saved`
        sig do
          params(
            id: String,
            client_state: String,
            command_id: String,
            recording_id: String,
            region:
              Telnyx::Conferences::ActionRecordStopParams::Region::OrSymbol,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::Conferences::ActionRecordStopResponse)
        end
        def record_stop(
          # Specifies the conference to stop the recording for by id or name
          id,
          # Use this field to add state to every subsequent webhook. It must be a valid
          # Base-64 encoded string.
          client_state: nil,
          # Use this field to avoid duplicate commands. Telnyx will ignore any command with
          # the same `command_id` for the same `call_control_id`.
          command_id: nil,
          # Uniquely identifies the resource.
          recording_id: nil,
          # Region where the conference data is located. Defaults to the region defined in
          # user's data locality settings (Europe or US).
          region: nil,
          request_options: {}
        )
        end

        # Convert text to speech and play it to all or some participants.
        sig do
          params(
            id: String,
            payload: String,
            voice: String,
            call_control_ids: T::Array[String],
            command_id: String,
            language:
              Telnyx::Conferences::ActionSpeakParams::Language::OrSymbol,
            payload_type:
              Telnyx::Conferences::ActionSpeakParams::PayloadType::OrSymbol,
            region: Telnyx::Conferences::ActionSpeakParams::Region::OrSymbol,
            voice_settings:
              T.any(
                Telnyx::Calls::ElevenLabsVoiceSettings::OrHash,
                Telnyx::Calls::TelnyxVoiceSettings::OrHash,
                Telnyx::Calls::AwsVoiceSettings::OrHash,
                Telnyx::MinimaxVoiceSettings::OrHash
              ),
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::Conferences::ActionSpeakResponse)
        end
        def speak(
          # Specifies the conference by id or name
          id,
          # The text or SSML to be converted into speech. There is a 3,000 character limit.
          payload:,
          # Specifies the voice used in speech synthesis.
          #
          # - Define voices using the format `<Provider>.<Model>.<VoiceId>`. Specifying only
          #   the provider will give default values for voice_id and model_id.
          #
          #   **Supported Providers:**
          #
          # - **AWS:** Use `AWS.Polly.<VoiceId>` (e.g., `AWS.Polly.Joanna`). For neural
          #   voices, which provide more realistic, human-like speech, append `-Neural` to
          #   the `VoiceId` (e.g., `AWS.Polly.Joanna-Neural`). Check the
          #   [available voices](https://docs.aws.amazon.com/polly/latest/dg/available-voices.html)
          #   for compatibility.
          # - **Azure:** Use `Azure.<VoiceId>. (e.g. Azure.en-CA-ClaraNeural,
          #   Azure.en-CA-LiamNeural, Azure.en-US-BrianMultilingualNeural,
          #   Azure.en-US-Ava:DragonHDLatestNeural. For a complete list of voices, go to
          #   [Azure Voice Gallery](https://speech.microsoft.com/portal/voicegallery).)
          # - **ElevenLabs:** Use `ElevenLabs.<ModelId>.<VoiceId>` (e.g.,
          #   `ElevenLabs.eleven_multilingual_v2.21m00Tcm4TlvDq8ikWAM`). The `ModelId` part
          #   is optional. To use ElevenLabs, you must provide your ElevenLabs API key as an
          #   integration identifier secret in
          #   `"voice_settings": {"api_key_ref": "<secret_identifier>"}`. Check
          #   [available voices](https://elevenlabs.io/docs/api-reference/get-voices).
          # - **Telnyx:** Use `Telnyx.<model_id>.<voice_id>`
          # - **Minimax:** Use `Minimax.<ModelId>.<VoiceId>` (e.g.,
          #   `Minimax.speech-02-hd.Wise_Woman`). Supported models: `speech-02-turbo`,
          #   `speech-02-hd`, `speech-2.6-turbo`, `speech-2.8-turbo`. Optional parameters:
          #   `speed` (float, default 1.0), `vol` (float, default 1.0), `pitch` (integer,
          #   default 0).
          # - **Resemble:** Use `Resemble.<ModelId>.<VoiceId>` (e.g.,
          #   `Resemble.Pro.my_voice`). Supported models: `Pro` (multilingual) and `Turbo`
          #   (English only).
          voice:,
          # Call Control IDs of participants who will hear the spoken text. When empty all
          # participants will hear the spoken text.
          call_control_ids: nil,
          # Use this field to avoid execution of duplicate commands. Telnyx will ignore
          # subsequent commands with the same `command_id` as one that has already been
          # executed.
          command_id: nil,
          # The language you want spoken. This parameter is ignored when a `Polly.*` voice
          # is specified.
          language: nil,
          # The type of the provided payload. The payload can either be plain text, or
          # Speech Synthesis Markup Language (SSML).
          payload_type: nil,
          # Region where the conference data is located. Defaults to the region defined in
          # user's data locality settings (Europe or US).
          region: nil,
          # The settings associated with the voice selected
          voice_settings: nil,
          request_options: {}
        )
        end

        # Stop audio being played to all or some participants on a conference call.
        sig do
          params(
            id: String,
            call_control_ids: T::Array[String],
            region: Telnyx::Conferences::ActionStopParams::Region::OrSymbol,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::Conferences::ActionStopResponse)
        end
        def stop(
          # Uniquely identifies the conference by id or name
          id,
          # List of call control ids identifying participants the audio file should stop be
          # played to. If not given, the audio will be stoped to the entire conference.
          call_control_ids: nil,
          # Region where the conference data is located. Defaults to the region defined in
          # user's data locality settings (Europe or US).
          region: nil,
          request_options: {}
        )
        end

        # Unhold a list of participants in a conference call
        sig do
          params(
            id: String,
            call_control_ids: T::Array[String],
            region: Telnyx::Conferences::ActionUnholdParams::Region::OrSymbol,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::Conferences::ActionUnholdResponse)
        end
        def unhold(
          # Uniquely identifies the conference by id or name
          id,
          # List of unique identifiers and tokens for controlling the call. Enter each call
          # control ID to be unheld.
          call_control_ids:,
          # Region where the conference data is located. Defaults to the region defined in
          # user's data locality settings (Europe or US).
          region: nil,
          request_options: {}
        )
        end

        # Unmute a list of participants in a conference call
        sig do
          params(
            id: String,
            call_control_ids: T::Array[String],
            region: Telnyx::Conferences::ActionUnmuteParams::Region::OrSymbol,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::Conferences::ActionUnmuteResponse)
        end
        def unmute(
          # Uniquely identifies the conference by id or name
          id,
          # List of unique identifiers and tokens for controlling the call. Enter each call
          # control ID to be unmuted. When empty all participants will be unmuted.
          call_control_ids: nil,
          # Region where the conference data is located. Defaults to the region defined in
          # user's data locality settings (Europe or US).
          region: nil,
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

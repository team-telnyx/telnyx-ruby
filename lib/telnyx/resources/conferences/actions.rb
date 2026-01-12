# frozen_string_literal: true

module Telnyx
  module Resources
    class Conferences
      class Actions
        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::Conferences::ActionUpdateParams} for more details.
        #
        # Update conference participant supervisor_role
        #
        # @overload update(id, call_control_id:, supervisor_role:, command_id: nil, region: nil, whisper_call_control_ids: nil, request_options: {})
        #
        # @param id [String] Uniquely identifies the conference by id or name
        #
        # @param call_control_id [String] Unique identifier and token for controlling the call
        #
        # @param supervisor_role [Symbol, Telnyx::Models::Conferences::UpdateConference::SupervisorRole] Sets the participant as a supervisor for the conference. A conference can have m
        #
        # @param command_id [String] Use this field to avoid execution of duplicate commands. Telnyx will ignore subs
        #
        # @param region [Symbol, Telnyx::Models::Conferences::UpdateConference::Region] Region where the conference data is located. Defaults to the region defined in u
        #
        # @param whisper_call_control_ids [Array<String>] Array of unique call_control_ids the supervisor can whisper to. If none provided
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Conferences::ActionUpdateResponse]
        #
        # @see Telnyx::Models::Conferences::ActionUpdateParams
        def update(id, params)
          parsed, options = Telnyx::Conferences::ActionUpdateParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["conferences/%1$s/actions/update", id],
            body: parsed,
            model: Telnyx::Models::Conferences::ActionUpdateResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::Conferences::ActionHoldParams} for more details.
        #
        # Hold a list of participants in a conference call
        #
        # @overload hold(id, audio_url: nil, call_control_ids: nil, media_name: nil, region: nil, request_options: {})
        #
        # @param id [String] Uniquely identifies the conference by id or name
        #
        # @param audio_url [String] The URL of a file to be played to the participants when they are put on hold. me
        #
        # @param call_control_ids [Array<String>] List of unique identifiers and tokens for controlling the call. When empty all p
        #
        # @param media_name [String] The media_name of a file to be played to the participants when they are put on h
        #
        # @param region [Symbol, Telnyx::Models::Conferences::ActionHoldParams::Region] Region where the conference data is located. Defaults to the region defined in u
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Conferences::ActionHoldResponse]
        #
        # @see Telnyx::Models::Conferences::ActionHoldParams
        def hold(id, params = {})
          parsed, options = Telnyx::Conferences::ActionHoldParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["conferences/%1$s/actions/hold", id],
            body: parsed,
            model: Telnyx::Models::Conferences::ActionHoldResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::Conferences::ActionJoinParams} for more details.
        #
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
        #
        # @overload join(id, call_control_id:, beep_enabled: nil, client_state: nil, command_id: nil, end_conference_on_exit: nil, hold: nil, hold_audio_url: nil, hold_media_name: nil, mute: nil, region: nil, soft_end_conference_on_exit: nil, start_conference_on_enter: nil, supervisor_role: nil, whisper_call_control_ids: nil, request_options: {})
        #
        # @param id [String] Uniquely identifies the conference by id or name
        #
        # @param call_control_id [String] Unique identifier and token for controlling the call
        #
        # @param beep_enabled [Symbol, Telnyx::Models::Conferences::ActionJoinParams::BeepEnabled] Whether a beep sound should be played when the participant joins and/or leaves t
        #
        # @param client_state [String] Use this field to add state to every subsequent webhook. It must be a valid Base
        #
        # @param command_id [String] Use this field to avoid execution of duplicate commands. Telnyx will ignore subs
        #
        # @param end_conference_on_exit [Boolean] Whether the conference should end and all remaining participants be hung up afte
        #
        # @param hold [Boolean] Whether the participant should be put on hold immediately after joining the conf
        #
        # @param hold_audio_url [String] The URL of a file to be played to the participant when they are put on hold afte
        #
        # @param hold_media_name [String] The media_name of a file to be played to the participant when they are put on ho
        #
        # @param mute [Boolean] Whether the participant should be muted immediately after joining the conference
        #
        # @param region [Symbol, Telnyx::Models::Conferences::ActionJoinParams::Region] Region where the conference data is located. Defaults to the region defined in u
        #
        # @param soft_end_conference_on_exit [Boolean] Whether the conference should end after the participant leaves the conference. N
        #
        # @param start_conference_on_enter [Boolean] Whether the conference should be started after the participant joins the confere
        #
        # @param supervisor_role [Symbol, Telnyx::Models::Conferences::ActionJoinParams::SupervisorRole] Sets the joining participant as a supervisor for the conference. A conference ca
        #
        # @param whisper_call_control_ids [Array<String>] Array of unique call_control_ids the joining supervisor can whisper to. If none
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Conferences::ActionJoinResponse]
        #
        # @see Telnyx::Models::Conferences::ActionJoinParams
        def join(id, params)
          parsed, options = Telnyx::Conferences::ActionJoinParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["conferences/%1$s/actions/join", id],
            body: parsed,
            model: Telnyx::Models::Conferences::ActionJoinResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::Conferences::ActionLeaveParams} for more details.
        #
        # Removes a call leg from a conference and moves it back to parked state.
        #
        # **Expected Webhooks:**
        #
        # - `conference.participant.left`
        #
        # @overload leave(id, call_control_id:, beep_enabled: nil, command_id: nil, region: nil, request_options: {})
        #
        # @param id [String] Uniquely identifies the conference by id or name
        #
        # @param call_control_id [String] Unique identifier and token for controlling the call
        #
        # @param beep_enabled [Symbol, Telnyx::Models::Conferences::ActionLeaveParams::BeepEnabled] Whether a beep sound should be played when the participant leaves the conference
        #
        # @param command_id [String] Use this field to avoid execution of duplicate commands. Telnyx will ignore subs
        #
        # @param region [Symbol, Telnyx::Models::Conferences::ActionLeaveParams::Region] Region where the conference data is located. Defaults to the region defined in u
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Conferences::ActionLeaveResponse]
        #
        # @see Telnyx::Models::Conferences::ActionLeaveParams
        def leave(id, params)
          parsed, options = Telnyx::Conferences::ActionLeaveParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["conferences/%1$s/actions/leave", id],
            body: parsed,
            model: Telnyx::Models::Conferences::ActionLeaveResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::Conferences::ActionMuteParams} for more details.
        #
        # Mute a list of participants in a conference call
        #
        # @overload mute(id, call_control_ids: nil, region: nil, request_options: {})
        #
        # @param id [String] Uniquely identifies the conference by id or name
        #
        # @param call_control_ids [Array<String>] Array of unique identifiers and tokens for controlling the call. When empty all
        #
        # @param region [Symbol, Telnyx::Models::Conferences::ActionMuteParams::Region] Region where the conference data is located. Defaults to the region defined in u
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Conferences::ActionMuteResponse]
        #
        # @see Telnyx::Models::Conferences::ActionMuteParams
        def mute(id, params = {})
          parsed, options = Telnyx::Conferences::ActionMuteParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["conferences/%1$s/actions/mute", id],
            body: parsed,
            model: Telnyx::Models::Conferences::ActionMuteResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::Conferences::ActionPlayParams} for more details.
        #
        # Play audio to all or some participants on a conference call.
        #
        # @overload play(id, audio_url: nil, call_control_ids: nil, loop_: nil, media_name: nil, region: nil, request_options: {})
        #
        # @param id [String] Uniquely identifies the conference by id or name
        #
        # @param audio_url [String] The URL of a file to be played back in the conference. media_name and audio_url
        #
        # @param call_control_ids [Array<String>] List of call control ids identifying participants the audio file should be playe
        #
        # @param loop_ [String, Integer] The number of times the audio file should be played. If supplied, the value must
        #
        # @param media_name [String] The media_name of a file to be played back in the conference. The media_name mus
        #
        # @param region [Symbol, Telnyx::Models::Conferences::ActionPlayParams::Region] Region where the conference data is located. Defaults to the region defined in u
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Conferences::ActionPlayResponse]
        #
        # @see Telnyx::Models::Conferences::ActionPlayParams
        def play(id, params = {})
          parsed, options = Telnyx::Conferences::ActionPlayParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["conferences/%1$s/actions/play", id],
            body: parsed,
            model: Telnyx::Models::Conferences::ActionPlayResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::Conferences::ActionRecordPauseParams} for more details.
        #
        # Pause conference recording.
        #
        # @overload record_pause(id, command_id: nil, recording_id: nil, region: nil, request_options: {})
        #
        # @param id [String] Specifies the conference by id or name
        #
        # @param command_id [String] Use this field to avoid duplicate commands. Telnyx will ignore any command with
        #
        # @param recording_id [String] Use this field to pause specific recording.
        #
        # @param region [Symbol, Telnyx::Models::Conferences::ActionRecordPauseParams::Region] Region where the conference data is located. Defaults to the region defined in u
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Conferences::ActionRecordPauseResponse]
        #
        # @see Telnyx::Models::Conferences::ActionRecordPauseParams
        def record_pause(id, params = {})
          parsed, options = Telnyx::Conferences::ActionRecordPauseParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["conferences/%1$s/actions/record_pause", id],
            body: parsed,
            model: Telnyx::Models::Conferences::ActionRecordPauseResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::Conferences::ActionRecordResumeParams} for more details.
        #
        # Resume conference recording.
        #
        # @overload record_resume(id, command_id: nil, recording_id: nil, region: nil, request_options: {})
        #
        # @param id [String] Specifies the conference by id or name
        #
        # @param command_id [String] Use this field to avoid duplicate commands. Telnyx will ignore any command with
        #
        # @param recording_id [String] Use this field to resume specific recording.
        #
        # @param region [Symbol, Telnyx::Models::Conferences::ActionRecordResumeParams::Region] Region where the conference data is located. Defaults to the region defined in u
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Conferences::ActionRecordResumeResponse]
        #
        # @see Telnyx::Models::Conferences::ActionRecordResumeParams
        def record_resume(id, params = {})
          parsed, options = Telnyx::Conferences::ActionRecordResumeParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["conferences/%1$s/actions/record_resume", id],
            body: parsed,
            model: Telnyx::Models::Conferences::ActionRecordResumeResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::Conferences::ActionRecordStartParams} for more details.
        #
        # Start recording the conference. Recording will stop on conference end, or via
        # the Stop Recording command.
        #
        # **Expected Webhooks:**
        #
        # - `conference.recording.saved`
        #
        # @overload record_start(id, format_:, command_id: nil, custom_file_name: nil, play_beep: nil, region: nil, trim: nil, request_options: {})
        #
        # @param id [String] Specifies the conference to record by id or name
        #
        # @param format_ [Symbol, Telnyx::Models::Conferences::ActionRecordStartParams::Format] The audio file format used when storing the conference recording. Can be either
        #
        # @param command_id [String] Use this field to avoid duplicate commands. Telnyx will ignore any command with
        #
        # @param custom_file_name [String] The custom recording file name to be used instead of the default `call_leg_id`.
        #
        # @param play_beep [Boolean] If enabled, a beep sound will be played at the start of a recording.
        #
        # @param region [Symbol, Telnyx::Models::Conferences::ActionRecordStartParams::Region] Region where the conference data is located. Defaults to the region defined in u
        #
        # @param trim [Symbol, Telnyx::Models::Conferences::ActionRecordStartParams::Trim] When set to `trim-silence`, silence will be removed from the beginning and end o
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Conferences::ActionRecordStartResponse]
        #
        # @see Telnyx::Models::Conferences::ActionRecordStartParams
        def record_start(id, params)
          parsed, options = Telnyx::Conferences::ActionRecordStartParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["conferences/%1$s/actions/record_start", id],
            body: parsed,
            model: Telnyx::Models::Conferences::ActionRecordStartResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::Conferences::ActionRecordStopParams} for more details.
        #
        # Stop recording the conference.
        #
        # **Expected Webhooks:**
        #
        # - `conference.recording.saved`
        #
        # @overload record_stop(id, client_state: nil, command_id: nil, recording_id: nil, region: nil, request_options: {})
        #
        # @param id [String] Specifies the conference to stop the recording for by id or name
        #
        # @param client_state [String] Use this field to add state to every subsequent webhook. It must be a valid Base
        #
        # @param command_id [String] Use this field to avoid duplicate commands. Telnyx will ignore any command with
        #
        # @param recording_id [String] Uniquely identifies the resource.
        #
        # @param region [Symbol, Telnyx::Models::Conferences::ActionRecordStopParams::Region] Region where the conference data is located. Defaults to the region defined in u
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Conferences::ActionRecordStopResponse]
        #
        # @see Telnyx::Models::Conferences::ActionRecordStopParams
        def record_stop(id, params = {})
          parsed, options = Telnyx::Conferences::ActionRecordStopParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["conferences/%1$s/actions/record_stop", id],
            body: parsed,
            model: Telnyx::Models::Conferences::ActionRecordStopResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::Conferences::ActionSpeakParams} for more details.
        #
        # Convert text to speech and play it to all or some participants.
        #
        # @overload speak(id, payload:, voice:, call_control_ids: nil, command_id: nil, language: nil, payload_type: nil, region: nil, voice_settings: nil, request_options: {})
        #
        # @param id [String] Specifies the conference by id or name
        #
        # @param payload [String] The text or SSML to be converted into speech. There is a 3,000 character limit.
        #
        # @param voice [String] Specifies the voice used in speech synthesis.
        #
        # @param call_control_ids [Array<String>] Call Control IDs of participants who will hear the spoken text. When empty all p
        #
        # @param command_id [String] Use this field to avoid execution of duplicate commands. Telnyx will ignore subs
        #
        # @param language [Symbol, Telnyx::Models::Conferences::ActionSpeakParams::Language] The language you want spoken. This parameter is ignored when a `Polly.*` voice i
        #
        # @param payload_type [Symbol, Telnyx::Models::Conferences::ActionSpeakParams::PayloadType] The type of the provided payload. The payload can either be plain text, or Speec
        #
        # @param region [Symbol, Telnyx::Models::Conferences::ActionSpeakParams::Region] Region where the conference data is located. Defaults to the region defined in u
        #
        # @param voice_settings [Telnyx::Models::Calls::ElevenLabsVoiceSettings, Telnyx::Models::Calls::TelnyxVoiceSettings, Telnyx::Models::Calls::AwsVoiceSettings] The settings associated with the voice selected
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Conferences::ActionSpeakResponse]
        #
        # @see Telnyx::Models::Conferences::ActionSpeakParams
        def speak(id, params)
          parsed, options = Telnyx::Conferences::ActionSpeakParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["conferences/%1$s/actions/speak", id],
            body: parsed,
            model: Telnyx::Models::Conferences::ActionSpeakResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::Conferences::ActionStopParams} for more details.
        #
        # Stop audio being played to all or some participants on a conference call.
        #
        # @overload stop(id, call_control_ids: nil, region: nil, request_options: {})
        #
        # @param id [String] Uniquely identifies the conference by id or name
        #
        # @param call_control_ids [Array<String>] List of call control ids identifying participants the audio file should stop be
        #
        # @param region [Symbol, Telnyx::Models::Conferences::ActionStopParams::Region] Region where the conference data is located. Defaults to the region defined in u
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Conferences::ActionStopResponse]
        #
        # @see Telnyx::Models::Conferences::ActionStopParams
        def stop(id, params = {})
          parsed, options = Telnyx::Conferences::ActionStopParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["conferences/%1$s/actions/stop", id],
            body: parsed,
            model: Telnyx::Models::Conferences::ActionStopResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::Conferences::ActionUnholdParams} for more details.
        #
        # Unhold a list of participants in a conference call
        #
        # @overload unhold(id, call_control_ids:, region: nil, request_options: {})
        #
        # @param id [String] Uniquely identifies the conference by id or name
        #
        # @param call_control_ids [Array<String>] List of unique identifiers and tokens for controlling the call. Enter each call
        #
        # @param region [Symbol, Telnyx::Models::Conferences::ActionUnholdParams::Region] Region where the conference data is located. Defaults to the region defined in u
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Conferences::ActionUnholdResponse]
        #
        # @see Telnyx::Models::Conferences::ActionUnholdParams
        def unhold(id, params)
          parsed, options = Telnyx::Conferences::ActionUnholdParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["conferences/%1$s/actions/unhold", id],
            body: parsed,
            model: Telnyx::Models::Conferences::ActionUnholdResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::Conferences::ActionUnmuteParams} for more details.
        #
        # Unmute a list of participants in a conference call
        #
        # @overload unmute(id, call_control_ids: nil, region: nil, request_options: {})
        #
        # @param id [String] Uniquely identifies the conference by id or name
        #
        # @param call_control_ids [Array<String>] List of unique identifiers and tokens for controlling the call. Enter each call
        #
        # @param region [Symbol, Telnyx::Models::Conferences::ActionUnmuteParams::Region] Region where the conference data is located. Defaults to the region defined in u
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Conferences::ActionUnmuteResponse]
        #
        # @see Telnyx::Models::Conferences::ActionUnmuteParams
        def unmute(id, params = {})
          parsed, options = Telnyx::Conferences::ActionUnmuteParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["conferences/%1$s/actions/unmute", id],
            body: parsed,
            model: Telnyx::Models::Conferences::ActionUnmuteResponse,
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

# frozen_string_literal: true

module Telnyx
  module Models
    module Conferences
      # @see Telnyx::Resources::Conferences::Actions#join
      class ActionJoinParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute call_control_id
        #   Unique identifier and token for controlling the call
        #
        #   @return [String]
        required :call_control_id, String

        # @!attribute beep_enabled
        #   Whether a beep sound should be played when the participant joins and/or leaves
        #   the conference. Can be used to override the conference-level setting.
        #
        #   @return [Symbol, Telnyx::Models::Conferences::ActionJoinParams::BeepEnabled, nil]
        optional :beep_enabled, enum: -> { Telnyx::Conferences::ActionJoinParams::BeepEnabled }

        # @!attribute client_state
        #   Use this field to add state to every subsequent webhook. It must be a valid
        #   Base-64 encoded string. Please note that the client_state will be updated for
        #   the participient call leg and the change will not affect conferencing webhooks
        #   unless the participient is the owner of the conference.
        #
        #   @return [String, nil]
        optional :client_state, String

        # @!attribute command_id
        #   Use this field to avoid execution of duplicate commands. Telnyx will ignore
        #   subsequent commands with the same `command_id` as one that has already been
        #   executed.
        #
        #   @return [String, nil]
        optional :command_id, String

        # @!attribute end_conference_on_exit
        #   Whether the conference should end and all remaining participants be hung up
        #   after the participant leaves the conference. Defaults to "false".
        #
        #   @return [Boolean, nil]
        optional :end_conference_on_exit, Telnyx::Internal::Type::Boolean

        # @!attribute hold
        #   Whether the participant should be put on hold immediately after joining the
        #   conference. Defaults to "false".
        #
        #   @return [Boolean, nil]
        optional :hold, Telnyx::Internal::Type::Boolean

        # @!attribute hold_audio_url
        #   The URL of a file to be played to the participant when they are put on hold
        #   after joining the conference. hold_media_name and hold_audio_url cannot be used
        #   together in one request. Takes effect only when "start_conference_on_create" is
        #   set to "false". This property takes effect only if "hold" is set to "true".
        #
        #   @return [String, nil]
        optional :hold_audio_url, String

        # @!attribute hold_media_name
        #   The media_name of a file to be played to the participant when they are put on
        #   hold after joining the conference. The media_name must point to a file
        #   previously uploaded to api.telnyx.com/v2/media by the same user/organization.
        #   The file must either be a WAV or MP3 file. Takes effect only when
        #   "start_conference_on_create" is set to "false". This property takes effect only
        #   if "hold" is set to "true".
        #
        #   @return [String, nil]
        optional :hold_media_name, String

        # @!attribute mute
        #   Whether the participant should be muted immediately after joining the
        #   conference. Defaults to "false".
        #
        #   @return [Boolean, nil]
        optional :mute, Telnyx::Internal::Type::Boolean

        # @!attribute region
        #   Region where the conference data is located. Defaults to the region defined in
        #   user's data locality settings (Europe or US).
        #
        #   @return [Symbol, Telnyx::Models::Conferences::ActionJoinParams::Region, nil]
        optional :region, enum: -> { Telnyx::Conferences::ActionJoinParams::Region }

        # @!attribute soft_end_conference_on_exit
        #   Whether the conference should end after the participant leaves the conference.
        #   NOTE this doesn't hang up the other participants. Defaults to "false".
        #
        #   @return [Boolean, nil]
        optional :soft_end_conference_on_exit, Telnyx::Internal::Type::Boolean

        # @!attribute start_conference_on_enter
        #   Whether the conference should be started after the participant joins the
        #   conference. Defaults to "false".
        #
        #   @return [Boolean, nil]
        optional :start_conference_on_enter, Telnyx::Internal::Type::Boolean

        # @!attribute supervisor_role
        #   Sets the joining participant as a supervisor for the conference. A conference
        #   can have multiple supervisors. "barge" means the supervisor enters the
        #   conference as a normal participant. This is the same as "none". "monitor" means
        #   the supervisor is muted but can hear all participants. "whisper" means that only
        #   the specified "whisper_call_control_ids" can hear the supervisor. Defaults to
        #   "none".
        #
        #   @return [Symbol, Telnyx::Models::Conferences::ActionJoinParams::SupervisorRole, nil]
        optional :supervisor_role, enum: -> { Telnyx::Conferences::ActionJoinParams::SupervisorRole }

        # @!attribute whisper_call_control_ids
        #   Array of unique call_control_ids the joining supervisor can whisper to. If none
        #   provided, the supervisor will join the conference as a monitoring participant
        #   only.
        #
        #   @return [Array<String>, nil]
        optional :whisper_call_control_ids, Telnyx::Internal::Type::ArrayOf[String]

        # @!method initialize(call_control_id:, beep_enabled: nil, client_state: nil, command_id: nil, end_conference_on_exit: nil, hold: nil, hold_audio_url: nil, hold_media_name: nil, mute: nil, region: nil, soft_end_conference_on_exit: nil, start_conference_on_enter: nil, supervisor_role: nil, whisper_call_control_ids: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::Conferences::ActionJoinParams} for more details.
        #
        #   @param call_control_id [String] Unique identifier and token for controlling the call
        #
        #   @param beep_enabled [Symbol, Telnyx::Models::Conferences::ActionJoinParams::BeepEnabled] Whether a beep sound should be played when the participant joins and/or leaves t
        #
        #   @param client_state [String] Use this field to add state to every subsequent webhook. It must be a valid Base
        #
        #   @param command_id [String] Use this field to avoid execution of duplicate commands. Telnyx will ignore subs
        #
        #   @param end_conference_on_exit [Boolean] Whether the conference should end and all remaining participants be hung up afte
        #
        #   @param hold [Boolean] Whether the participant should be put on hold immediately after joining the conf
        #
        #   @param hold_audio_url [String] The URL of a file to be played to the participant when they are put on hold afte
        #
        #   @param hold_media_name [String] The media_name of a file to be played to the participant when they are put on ho
        #
        #   @param mute [Boolean] Whether the participant should be muted immediately after joining the conference
        #
        #   @param region [Symbol, Telnyx::Models::Conferences::ActionJoinParams::Region] Region where the conference data is located. Defaults to the region defined in u
        #
        #   @param soft_end_conference_on_exit [Boolean] Whether the conference should end after the participant leaves the conference. N
        #
        #   @param start_conference_on_enter [Boolean] Whether the conference should be started after the participant joins the confere
        #
        #   @param supervisor_role [Symbol, Telnyx::Models::Conferences::ActionJoinParams::SupervisorRole] Sets the joining participant as a supervisor for the conference. A conference ca
        #
        #   @param whisper_call_control_ids [Array<String>] Array of unique call_control_ids the joining supervisor can whisper to. If none
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

        # Whether a beep sound should be played when the participant joins and/or leaves
        # the conference. Can be used to override the conference-level setting.
        module BeepEnabled
          extend Telnyx::Internal::Type::Enum

          ALWAYS = :always
          NEVER = :never
          ON_ENTER = :on_enter
          ON_EXIT = :on_exit

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Region where the conference data is located. Defaults to the region defined in
        # user's data locality settings (Europe or US).
        module Region
          extend Telnyx::Internal::Type::Enum

          AUSTRALIA = :Australia
          EUROPE = :Europe
          MIDDLE_EAST = :"Middle East"
          US = :US

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Sets the joining participant as a supervisor for the conference. A conference
        # can have multiple supervisors. "barge" means the supervisor enters the
        # conference as a normal participant. This is the same as "none". "monitor" means
        # the supervisor is muted but can hear all participants. "whisper" means that only
        # the specified "whisper_call_control_ids" can hear the supervisor. Defaults to
        # "none".
        module SupervisorRole
          extend Telnyx::Internal::Type::Enum

          BARGE = :barge
          MONITOR = :monitor
          NONE = :none
          WHISPER = :whisper

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end

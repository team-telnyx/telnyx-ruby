# typed: strong

module Telnyx
  module Models
    module Conferences
      class ActionJoinParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Conferences::ActionJoinParams,
              Telnyx::Internal::AnyHash
            )
          end

        # Unique identifier and token for controlling the call
        sig { returns(String) }
        attr_accessor :call_control_id

        # Whether a beep sound should be played when the participant joins and/or leaves
        # the conference. Can be used to override the conference-level setting.
        sig do
          returns(
            T.nilable(
              Telnyx::Conferences::ActionJoinParams::BeepEnabled::OrSymbol
            )
          )
        end
        attr_reader :beep_enabled

        sig do
          params(
            beep_enabled:
              Telnyx::Conferences::ActionJoinParams::BeepEnabled::OrSymbol
          ).void
        end
        attr_writer :beep_enabled

        # Use this field to add state to every subsequent webhook. It must be a valid
        # Base-64 encoded string. Please note that the client_state will be updated for
        # the participient call leg and the change will not affect conferencing webhooks
        # unless the participient is the owner of the conference.
        sig { returns(T.nilable(String)) }
        attr_reader :client_state

        sig { params(client_state: String).void }
        attr_writer :client_state

        # Use this field to avoid execution of duplicate commands. Telnyx will ignore
        # subsequent commands with the same `command_id` as one that has already been
        # executed.
        sig { returns(T.nilable(String)) }
        attr_reader :command_id

        sig { params(command_id: String).void }
        attr_writer :command_id

        # Whether the conference should end and all remaining participants be hung up
        # after the participant leaves the conference. Defaults to "false".
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :end_conference_on_exit

        sig { params(end_conference_on_exit: T::Boolean).void }
        attr_writer :end_conference_on_exit

        # Whether the participant should be put on hold immediately after joining the
        # conference. Defaults to "false".
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :hold

        sig { params(hold: T::Boolean).void }
        attr_writer :hold

        # The URL of a file to be played to the participant when they are put on hold
        # after joining the conference. hold_media_name and hold_audio_url cannot be used
        # together in one request. Takes effect only when "start_conference_on_create" is
        # set to "false". This property takes effect only if "hold" is set to "true".
        sig { returns(T.nilable(String)) }
        attr_reader :hold_audio_url

        sig { params(hold_audio_url: String).void }
        attr_writer :hold_audio_url

        # The media_name of a file to be played to the participant when they are put on
        # hold after joining the conference. The media_name must point to a file
        # previously uploaded to api.telnyx.com/v2/media by the same user/organization.
        # The file must either be a WAV or MP3 file. Takes effect only when
        # "start_conference_on_create" is set to "false". This property takes effect only
        # if "hold" is set to "true".
        sig { returns(T.nilable(String)) }
        attr_reader :hold_media_name

        sig { params(hold_media_name: String).void }
        attr_writer :hold_media_name

        # Whether the participant should be muted immediately after joining the
        # conference. Defaults to "false".
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :mute

        sig { params(mute: T::Boolean).void }
        attr_writer :mute

        # Whether the conference should end after the participant leaves the conference.
        # NOTE this doesn't hang up the other participants. Defaults to "false".
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :soft_end_conference_on_exit

        sig { params(soft_end_conference_on_exit: T::Boolean).void }
        attr_writer :soft_end_conference_on_exit

        # Whether the conference should be started after the participant joins the
        # conference. Defaults to "false".
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :start_conference_on_enter

        sig { params(start_conference_on_enter: T::Boolean).void }
        attr_writer :start_conference_on_enter

        # Sets the joining participant as a supervisor for the conference. A conference
        # can have multiple supervisors. "barge" means the supervisor enters the
        # conference as a normal participant. This is the same as "none". "monitor" means
        # the supervisor is muted but can hear all participants. "whisper" means that only
        # the specified "whisper_call_control_ids" can hear the supervisor. Defaults to
        # "none".
        sig do
          returns(
            T.nilable(
              Telnyx::Conferences::ActionJoinParams::SupervisorRole::OrSymbol
            )
          )
        end
        attr_reader :supervisor_role

        sig do
          params(
            supervisor_role:
              Telnyx::Conferences::ActionJoinParams::SupervisorRole::OrSymbol
          ).void
        end
        attr_writer :supervisor_role

        # Array of unique call_control_ids the joining supervisor can whisper to. If none
        # provided, the supervisor will join the conference as a monitoring participant
        # only.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :whisper_call_control_ids

        sig { params(whisper_call_control_ids: T::Array[String]).void }
        attr_writer :whisper_call_control_ids

        sig do
          params(
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
            soft_end_conference_on_exit: T::Boolean,
            start_conference_on_enter: T::Boolean,
            supervisor_role:
              Telnyx::Conferences::ActionJoinParams::SupervisorRole::OrSymbol,
            whisper_call_control_ids: T::Array[String],
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
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

        sig do
          override.returns(
            {
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
              soft_end_conference_on_exit: T::Boolean,
              start_conference_on_enter: T::Boolean,
              supervisor_role:
                Telnyx::Conferences::ActionJoinParams::SupervisorRole::OrSymbol,
              whisper_call_control_ids: T::Array[String],
              request_options: Telnyx::RequestOptions
            }
          )
        end
        def to_hash
        end

        # Whether a beep sound should be played when the participant joins and/or leaves
        # the conference. Can be used to override the conference-level setting.
        module BeepEnabled
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::Conferences::ActionJoinParams::BeepEnabled)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ALWAYS =
            T.let(
              :always,
              Telnyx::Conferences::ActionJoinParams::BeepEnabled::TaggedSymbol
            )
          NEVER =
            T.let(
              :never,
              Telnyx::Conferences::ActionJoinParams::BeepEnabled::TaggedSymbol
            )
          ON_ENTER =
            T.let(
              :on_enter,
              Telnyx::Conferences::ActionJoinParams::BeepEnabled::TaggedSymbol
            )
          ON_EXIT =
            T.let(
              :on_exit,
              Telnyx::Conferences::ActionJoinParams::BeepEnabled::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Conferences::ActionJoinParams::BeepEnabled::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Sets the joining participant as a supervisor for the conference. A conference
        # can have multiple supervisors. "barge" means the supervisor enters the
        # conference as a normal participant. This is the same as "none". "monitor" means
        # the supervisor is muted but can hear all participants. "whisper" means that only
        # the specified "whisper_call_control_ids" can hear the supervisor. Defaults to
        # "none".
        module SupervisorRole
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::Conferences::ActionJoinParams::SupervisorRole
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          BARGE =
            T.let(
              :barge,
              Telnyx::Conferences::ActionJoinParams::SupervisorRole::TaggedSymbol
            )
          MONITOR =
            T.let(
              :monitor,
              Telnyx::Conferences::ActionJoinParams::SupervisorRole::TaggedSymbol
            )
          NONE =
            T.let(
              :none,
              Telnyx::Conferences::ActionJoinParams::SupervisorRole::TaggedSymbol
            )
          WHISPER =
            T.let(
              :whisper,
              Telnyx::Conferences::ActionJoinParams::SupervisorRole::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Conferences::ActionJoinParams::SupervisorRole::TaggedSymbol
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

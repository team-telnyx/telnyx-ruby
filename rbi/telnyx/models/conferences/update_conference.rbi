# typed: strong

module Telnyx
  module Models
    UpdateConference = Conferences::UpdateConference

    module Conferences
      class UpdateConference < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Conferences::UpdateConference,
              Telnyx::Internal::AnyHash
            )
          end

        # Unique identifier and token for controlling the call
        sig { returns(String) }
        attr_accessor :call_control_id

        # Sets the participant as a supervisor for the conference. A conference can have
        # multiple supervisors. "barge" means the supervisor enters the conference as a
        # normal participant. This is the same as "none". "monitor" means the supervisor
        # is muted but can hear all participants. "whisper" means that only the specified
        # "whisper_call_control_ids" can hear the supervisor. Defaults to "none".
        sig do
          returns(
            Telnyx::Conferences::UpdateConference::SupervisorRole::OrSymbol
          )
        end
        attr_accessor :supervisor_role

        # Use this field to avoid execution of duplicate commands. Telnyx will ignore
        # subsequent commands with the same `command_id` as one that has already been
        # executed.
        sig { returns(T.nilable(String)) }
        attr_reader :command_id

        sig { params(command_id: String).void }
        attr_writer :command_id

        # Array of unique call_control_ids the supervisor can whisper to. If none
        # provided, the supervisor will join the conference as a monitoring participant
        # only.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :whisper_call_control_ids

        sig { params(whisper_call_control_ids: T::Array[String]).void }
        attr_writer :whisper_call_control_ids

        sig do
          params(
            call_control_id: String,
            supervisor_role:
              Telnyx::Conferences::UpdateConference::SupervisorRole::OrSymbol,
            command_id: String,
            whisper_call_control_ids: T::Array[String]
          ).returns(T.attached_class)
        end
        def self.new(
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
          # Array of unique call_control_ids the supervisor can whisper to. If none
          # provided, the supervisor will join the conference as a monitoring participant
          # only.
          whisper_call_control_ids: nil
        )
        end

        sig do
          override.returns(
            {
              call_control_id: String,
              supervisor_role:
                Telnyx::Conferences::UpdateConference::SupervisorRole::OrSymbol,
              command_id: String,
              whisper_call_control_ids: T::Array[String]
            }
          )
        end
        def to_hash
        end

        # Sets the participant as a supervisor for the conference. A conference can have
        # multiple supervisors. "barge" means the supervisor enters the conference as a
        # normal participant. This is the same as "none". "monitor" means the supervisor
        # is muted but can hear all participants. "whisper" means that only the specified
        # "whisper_call_control_ids" can hear the supervisor. Defaults to "none".
        module SupervisorRole
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::Conferences::UpdateConference::SupervisorRole
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          BARGE =
            T.let(
              :barge,
              Telnyx::Conferences::UpdateConference::SupervisorRole::TaggedSymbol
            )
          MONITOR =
            T.let(
              :monitor,
              Telnyx::Conferences::UpdateConference::SupervisorRole::TaggedSymbol
            )
          NONE =
            T.let(
              :none,
              Telnyx::Conferences::UpdateConference::SupervisorRole::TaggedSymbol
            )
          WHISPER =
            T.let(
              :whisper,
              Telnyx::Conferences::UpdateConference::SupervisorRole::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Conferences::UpdateConference::SupervisorRole::TaggedSymbol
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

# frozen_string_literal: true

module Telnyx
  module Models
    module Conferences
      class UpdateConference < Telnyx::Internal::Type::BaseModel
        # @!attribute call_control_id
        #   Unique identifier and token for controlling the call
        #
        #   @return [String]
        required :call_control_id, String

        # @!attribute supervisor_role
        #   Sets the participant as a supervisor for the conference. A conference can have
        #   multiple supervisors. "barge" means the supervisor enters the conference as a
        #   normal participant. This is the same as "none". "monitor" means the supervisor
        #   is muted but can hear all participants. "whisper" means that only the specified
        #   "whisper_call_control_ids" can hear the supervisor. Defaults to "none".
        #
        #   @return [Symbol, Telnyx::Models::Conferences::UpdateConference::SupervisorRole]
        required :supervisor_role, enum: -> { Telnyx::Conferences::UpdateConference::SupervisorRole }

        # @!attribute command_id
        #   Use this field to avoid execution of duplicate commands. Telnyx will ignore
        #   subsequent commands with the same `command_id` as one that has already been
        #   executed.
        #
        #   @return [String, nil]
        optional :command_id, String

        # @!attribute region
        #   Region where the conference data is located. Defaults to the region defined in
        #   user's data locality settings (Europe or US).
        #
        #   @return [Symbol, Telnyx::Models::Conferences::UpdateConference::Region, nil]
        optional :region, enum: -> { Telnyx::Conferences::UpdateConference::Region }

        # @!attribute whisper_call_control_ids
        #   Array of unique call_control_ids the supervisor can whisper to. If none
        #   provided, the supervisor will join the conference as a monitoring participant
        #   only.
        #
        #   @return [Array<String>, nil]
        optional :whisper_call_control_ids, Telnyx::Internal::Type::ArrayOf[String]

        # @!method initialize(call_control_id:, supervisor_role:, command_id: nil, region: nil, whisper_call_control_ids: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::Conferences::UpdateConference} for more details.
        #
        #   @param call_control_id [String] Unique identifier and token for controlling the call
        #
        #   @param supervisor_role [Symbol, Telnyx::Models::Conferences::UpdateConference::SupervisorRole] Sets the participant as a supervisor for the conference. A conference can have m
        #
        #   @param command_id [String] Use this field to avoid execution of duplicate commands. Telnyx will ignore subs
        #
        #   @param region [Symbol, Telnyx::Models::Conferences::UpdateConference::Region] Region where the conference data is located. Defaults to the region defined in u
        #
        #   @param whisper_call_control_ids [Array<String>] Array of unique call_control_ids the supervisor can whisper to. If none provided

        # Sets the participant as a supervisor for the conference. A conference can have
        # multiple supervisors. "barge" means the supervisor enters the conference as a
        # normal participant. This is the same as "none". "monitor" means the supervisor
        # is muted but can hear all participants. "whisper" means that only the specified
        # "whisper_call_control_ids" can hear the supervisor. Defaults to "none".
        #
        # @see Telnyx::Models::Conferences::UpdateConference#supervisor_role
        module SupervisorRole
          extend Telnyx::Internal::Type::Enum

          BARGE = :barge
          MONITOR = :monitor
          NONE = :none
          WHISPER = :whisper

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Region where the conference data is located. Defaults to the region defined in
        # user's data locality settings (Europe or US).
        #
        # @see Telnyx::Models::Conferences::UpdateConference#region
        module Region
          extend Telnyx::Internal::Type::Enum

          AUSTRALIA = :Australia
          EUROPE = :Europe
          MIDDLE_EAST = :"Middle East"
          US = :US

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end

    UpdateConference = Conferences::UpdateConference
  end
end

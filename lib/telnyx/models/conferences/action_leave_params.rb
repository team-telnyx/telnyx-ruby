# frozen_string_literal: true

module Telnyx
  module Models
    module Conferences
      # @see Telnyx::Resources::Conferences::Actions#leave
      class ActionLeaveParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute call_control_id
        #   Unique identifier and token for controlling the call
        #
        #   @return [String]
        required :call_control_id, String

        # @!attribute beep_enabled
        #   Whether a beep sound should be played when the participant leaves the
        #   conference. Can be used to override the conference-level setting.
        #
        #   @return [Symbol, Telnyx::Models::Conferences::ActionLeaveParams::BeepEnabled, nil]
        optional :beep_enabled, enum: -> { Telnyx::Conferences::ActionLeaveParams::BeepEnabled }

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
        #   @return [Symbol, Telnyx::Models::Conferences::ActionLeaveParams::Region, nil]
        optional :region, enum: -> { Telnyx::Conferences::ActionLeaveParams::Region }

        # @!method initialize(call_control_id:, beep_enabled: nil, command_id: nil, region: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::Conferences::ActionLeaveParams} for more details.
        #
        #   @param call_control_id [String] Unique identifier and token for controlling the call
        #
        #   @param beep_enabled [Symbol, Telnyx::Models::Conferences::ActionLeaveParams::BeepEnabled] Whether a beep sound should be played when the participant leaves the conference
        #
        #   @param command_id [String] Use this field to avoid execution of duplicate commands. Telnyx will ignore subs
        #
        #   @param region [Symbol, Telnyx::Models::Conferences::ActionLeaveParams::Region] Region where the conference data is located. Defaults to the region defined in u
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

        # Whether a beep sound should be played when the participant leaves the
        # conference. Can be used to override the conference-level setting.
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
      end
    end
  end
end

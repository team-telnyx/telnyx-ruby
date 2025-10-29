# frozen_string_literal: true

module Telnyx
  module Models
    module Conferences
      # @see Telnyx::Resources::Conferences::Actions#record_pause
      class ActionRecordPauseParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute command_id
        #   Use this field to avoid duplicate commands. Telnyx will ignore any command with
        #   the same `command_id` for the same `call_control_id`.
        #
        #   @return [String, nil]
        optional :command_id, String

        # @!attribute recording_id
        #   Use this field to pause specific recording.
        #
        #   @return [String, nil]
        optional :recording_id, String

        # @!attribute region
        #   Region where the conference data is located. Defaults to the region defined in
        #   user's data locality settings (Europe or US).
        #
        #   @return [Symbol, Telnyx::Models::Conferences::ActionRecordPauseParams::Region, nil]
        optional :region, enum: -> { Telnyx::Conferences::ActionRecordPauseParams::Region }

        # @!method initialize(command_id: nil, recording_id: nil, region: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::Conferences::ActionRecordPauseParams} for more details.
        #
        #   @param command_id [String] Use this field to avoid duplicate commands. Telnyx will ignore any command with
        #
        #   @param recording_id [String] Use this field to pause specific recording.
        #
        #   @param region [Symbol, Telnyx::Models::Conferences::ActionRecordPauseParams::Region] Region where the conference data is located. Defaults to the region defined in u
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

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

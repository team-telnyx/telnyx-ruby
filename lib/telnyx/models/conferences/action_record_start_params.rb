# frozen_string_literal: true

module Telnyx
  module Models
    module Conferences
      # @see Telnyx::Resources::Conferences::Actions#record_start
      class ActionRecordStartParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute format_
        #   The audio file format used when storing the conference recording. Can be either
        #   `mp3` or `wav`.
        #
        #   @return [Symbol, Telnyx::Models::Conferences::ActionRecordStartParams::Format]
        required :format_,
                 enum: -> {
                   Telnyx::Conferences::ActionRecordStartParams::Format
                 },
                 api_name: :format

        # @!attribute command_id
        #   Use this field to avoid duplicate commands. Telnyx will ignore any command with
        #   the same `command_id` for the same `conference_id`.
        #
        #   @return [String, nil]
        optional :command_id, String

        # @!attribute custom_file_name
        #   The custom recording file name to be used instead of the default `call_leg_id`.
        #   Telnyx will still add a Unix timestamp suffix.
        #
        #   @return [String, nil]
        optional :custom_file_name, String

        # @!attribute play_beep
        #   If enabled, a beep sound will be played at the start of a recording.
        #
        #   @return [Boolean, nil]
        optional :play_beep, Telnyx::Internal::Type::Boolean

        # @!attribute region
        #   Region where the conference data is located. Defaults to the region defined in
        #   user's data locality settings (Europe or US).
        #
        #   @return [Symbol, Telnyx::Models::Conferences::ActionRecordStartParams::Region, nil]
        optional :region, enum: -> { Telnyx::Conferences::ActionRecordStartParams::Region }

        # @!attribute trim
        #   When set to `trim-silence`, silence will be removed from the beginning and end
        #   of the recording.
        #
        #   @return [Symbol, Telnyx::Models::Conferences::ActionRecordStartParams::Trim, nil]
        optional :trim, enum: -> { Telnyx::Conferences::ActionRecordStartParams::Trim }

        # @!method initialize(format_:, command_id: nil, custom_file_name: nil, play_beep: nil, region: nil, trim: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::Conferences::ActionRecordStartParams} for more details.
        #
        #   @param format_ [Symbol, Telnyx::Models::Conferences::ActionRecordStartParams::Format] The audio file format used when storing the conference recording. Can be either
        #
        #   @param command_id [String] Use this field to avoid duplicate commands. Telnyx will ignore any command with
        #
        #   @param custom_file_name [String] The custom recording file name to be used instead of the default `call_leg_id`.
        #
        #   @param play_beep [Boolean] If enabled, a beep sound will be played at the start of a recording.
        #
        #   @param region [Symbol, Telnyx::Models::Conferences::ActionRecordStartParams::Region] Region where the conference data is located. Defaults to the region defined in u
        #
        #   @param trim [Symbol, Telnyx::Models::Conferences::ActionRecordStartParams::Trim] When set to `trim-silence`, silence will be removed from the beginning and end o
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

        # The audio file format used when storing the conference recording. Can be either
        # `mp3` or `wav`.
        module Format
          extend Telnyx::Internal::Type::Enum

          WAV = :wav
          MP3 = :mp3

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

        # When set to `trim-silence`, silence will be removed from the beginning and end
        # of the recording.
        module Trim
          extend Telnyx::Internal::Type::Enum

          TRIM_SILENCE = :"trim-silence"

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end

# frozen_string_literal: true

module Telnyx
  module Models
    module Conferences
      # @see Telnyx::Resources::Conferences::Actions#stop
      class ActionStopParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute call_control_ids
        #   List of call control ids identifying participants the audio file should stop be
        #   played to. If not given, the audio will be stoped to the entire conference.
        #
        #   @return [Array<String>, nil]
        optional :call_control_ids, Telnyx::Internal::Type::ArrayOf[String]

        # @!attribute region
        #   Region where the conference data is located. Defaults to the region defined in
        #   user's data locality settings (Europe or US).
        #
        #   @return [Symbol, Telnyx::Models::Conferences::ActionStopParams::Region, nil]
        optional :region, enum: -> { Telnyx::Conferences::ActionStopParams::Region }

        # @!method initialize(call_control_ids: nil, region: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::Conferences::ActionStopParams} for more details.
        #
        #   @param call_control_ids [Array<String>] List of call control ids identifying participants the audio file should stop be
        #
        #   @param region [Symbol, Telnyx::Models::Conferences::ActionStopParams::Region] Region where the conference data is located. Defaults to the region defined in u
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

# frozen_string_literal: true

module Telnyx
  module Models
    module Conferences
      # @see Telnyx::Resources::Conferences::Actions#gather_using_audio
      class ActionGatherUsingAudioResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Telnyx::Models::Conferences::ConferenceCommandResult, nil]
        optional :data, -> { Telnyx::Conferences::ConferenceCommandResult }

        # @!method initialize(data: nil)
        #   @param data [Telnyx::Models::Conferences::ConferenceCommandResult]
      end
    end
  end
end

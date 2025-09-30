# frozen_string_literal: true

module Telnyx
  module Models
    module Calls
      # @see Telnyx::Resources::Calls::Actions#answer
      class ActionAnswerResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Telnyx::Models::Calls::ActionAnswerResponse::Data, nil]
        optional :data, -> { Telnyx::Models::Calls::ActionAnswerResponse::Data }

        # @!method initialize(data: nil)
        #   @param data [Telnyx::Models::Calls::ActionAnswerResponse::Data]

        # @see Telnyx::Models::Calls::ActionAnswerResponse#data
        class Data < Telnyx::Internal::Type::BaseModel
          # @!attribute recording_id
          #   The ID of the recording. Only present when the record parameter is set to
          #   record-from-answer.
          #
          #   @return [String, nil]
          optional :recording_id, String

          # @!attribute result
          #
          #   @return [String, nil]
          optional :result, String

          # @!method initialize(recording_id: nil, result: nil)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::Calls::ActionAnswerResponse::Data} for more details.
          #
          #   @param recording_id [String] The ID of the recording. Only present when the record parameter is set to record
          #
          #   @param result [String]
        end
      end
    end
  end
end

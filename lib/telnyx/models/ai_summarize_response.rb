# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::AI#summarize
    class AISummarizeResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::AISummarizeResponse::Data]
      required :data, -> { Telnyx::Models::AISummarizeResponse::Data }

      # @!method initialize(data:)
      #   @param data [Telnyx::Models::AISummarizeResponse::Data]

      # @see Telnyx::Models::AISummarizeResponse#data
      class Data < Telnyx::Internal::Type::BaseModel
        # @!attribute summary
        #
        #   @return [String]
        required :summary, String

        # @!method initialize(summary:)
        #   @param summary [String]
      end
    end
  end
end

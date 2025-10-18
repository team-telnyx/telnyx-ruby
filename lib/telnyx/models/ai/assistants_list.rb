# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      # @see Telnyx::Resources::AI::Assistants#list
      class AssistantsList < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Array<Telnyx::Models::AI::InferenceEmbedding>]
        required :data, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::AI::InferenceEmbedding] }

        # @!method initialize(data:)
        #   @param data [Array<Telnyx::Models::AI::InferenceEmbedding>]
      end
    end
  end
end

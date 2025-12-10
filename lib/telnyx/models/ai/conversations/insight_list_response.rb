# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      module Conversations
        # @see Telnyx::Resources::AI::Conversations::Insights#list
        class InsightListResponse < Telnyx::Internal::Type::BaseModel
          # @!attribute data
          #
          #   @return [Array<Telnyx::Models::AI::Conversations::InsightTemplate>]
          required :data, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::AI::Conversations::InsightTemplate] }

          # @!attribute meta
          #
          #   @return [Telnyx::Models::AI::Assistants::Tests::TestSuites::Meta]
          required :meta, -> { Telnyx::AI::Assistants::Tests::TestSuites::Meta }

          # @!method initialize(data:, meta:)
          #   @param data [Array<Telnyx::Models::AI::Conversations::InsightTemplate>]
          #   @param meta [Telnyx::Models::AI::Assistants::Tests::TestSuites::Meta]
        end
      end
    end
  end
end

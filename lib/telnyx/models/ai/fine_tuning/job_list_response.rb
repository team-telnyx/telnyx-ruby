# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      module FineTuning
        # @see Telnyx::Resources::AI::FineTuning::Jobs#list
        class JobListResponse < Telnyx::Internal::Type::BaseModel
          # @!attribute data
          #
          #   @return [Array<Telnyx::Models::AI::FineTuning::FineTuningJob>]
          required :data, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::AI::FineTuning::FineTuningJob] }

          # @!method initialize(data:)
          #   @param data [Array<Telnyx::Models::AI::FineTuning::FineTuningJob>]
        end
      end
    end
  end
end

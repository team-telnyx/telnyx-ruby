# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      # @see Telnyx::Resources::AI::Collections#create
      class CollectionEnvelope < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Telnyx::Models::AI::Collection, nil]
        optional :data, -> { Telnyx::AI::Collection }

        # @!method initialize(data: nil)
        #   @param data [Telnyx::Models::AI::Collection]
      end
    end
  end
end

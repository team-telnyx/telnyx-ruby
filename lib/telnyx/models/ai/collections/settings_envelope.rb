# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      module Collections
        # @see Telnyx::Resources::AI::Collections::Settings#create
        class SettingsEnvelope < Telnyx::Internal::Type::BaseModel
          # @!attribute data
          #
          #   @return [Telnyx::Models::AI::Collections::RetrievalSettingsWrapper, nil]
          optional :data, -> { Telnyx::AI::Collections::RetrievalSettingsWrapper }

          # @!method initialize(data: nil)
          #   @param data [Telnyx::Models::AI::Collections::RetrievalSettingsWrapper]
        end
      end
    end
  end
end

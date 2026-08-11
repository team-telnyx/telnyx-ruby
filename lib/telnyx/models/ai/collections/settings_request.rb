# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      module Collections
        class SettingsRequest < Telnyx::Internal::Type::BaseModel
          # @!attribute retrieval
          #   How documents are retrieved when searching the collection.
          #
          #   @return [Telnyx::Models::AI::Collections::RetrievalSettings, nil]
          optional :retrieval, -> { Telnyx::AI::Collections::RetrievalSettings }

          # @!method initialize(retrieval: nil)
          #   @param retrieval [Telnyx::Models::AI::Collections::RetrievalSettings] How documents are retrieved when searching the collection.
        end
      end
    end
  end
end

# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      module Collections
        class RetrievalSettingsWrapper < Telnyx::Internal::Type::BaseModel
          # @!attribute retrieval
          #   How documents are retrieved when searching the collection.
          #
          #   @return [Telnyx::Models::AI::Collections::RetrievalSettings, nil]
          optional :retrieval, -> { Telnyx::AI::Collections::RetrievalSettings }

          response_only do
            # @!attribute record_type
            #   Identifies the record type. Always `ai_collection_settings`.
            #
            #   @return [String, nil]
            optional :record_type, String
          end

          # @!method initialize(record_type: nil, retrieval: nil)
          #   @param record_type [String] Identifies the record type. Always `ai_collection_settings`.
          #
          #   @param retrieval [Telnyx::Models::AI::Collections::RetrievalSettings] How documents are retrieved when searching the collection.
        end
      end
    end
  end
end

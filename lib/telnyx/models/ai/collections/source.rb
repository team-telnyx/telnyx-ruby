# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      module Collections
        class Source < Telnyx::Internal::Type::BaseModel
          # @!attribute id
          #   Identifies one source within its profile: an ingested session, or one remembered
          #   fact. Returned by `ingest` and `remember` when the write is accepted.
          #   Re-ingesting a session keeps its source id.
          #
          #   @return [String]
          required :id, String

          # @!attribute memory_count
          #   Memories extracted from this source. A memory derived from several sources is
          #   not counted here.
          #
          #   @return [Integer]
          required :memory_count, Integer

          # @!attribute session_id
          #   The session this source was ingested as. Null for a remembered fact.
          #
          #   @return [String, nil]
          required :session_id, String, nil?: true

          # @!attribute created_at
          #   When the source was first stored.
          #
          #   @return [String, nil]
          optional :created_at, String, nil?: true

          # @!attribute updated_at
          #   When the source was last written; re-ingesting moves it.
          #
          #   @return [String, nil]
          optional :updated_at, String, nil?: true

          # @!method initialize(id:, memory_count:, session_id:, created_at: nil, updated_at: nil)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::AI::Collections::Source} for more details.
          #
          #   @param id [String] Identifies one source within its profile: an ingested session, or one remembered
          #
          #   @param memory_count [Integer] Memories extracted from this source. A memory derived from several sources is no
          #
          #   @param session_id [String, nil] The session this source was ingested as. Null for a remembered fact.
          #
          #   @param created_at [String, nil] When the source was first stored.
          #
          #   @param updated_at [String, nil] When the source was last written; re-ingesting moves it.
        end
      end
    end
  end
end

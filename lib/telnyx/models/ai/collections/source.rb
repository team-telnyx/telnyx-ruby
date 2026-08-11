# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      module Collections
        class Source < Telnyx::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String, nil]
          optional :id, String

          # @!attribute bucket_id
          #   The Telnyx Storage bucket name. Present only for `bucket` sources.
          #
          #   @return [String, nil]
          optional :bucket_id, String

          # @!attribute collection_id
          #
          #   @return [String, nil]
          optional :collection_id, String

          # @!attribute record_type
          #   Identifies the record type. Always `ai_collection_source`.
          #
          #   @return [String, nil]
          optional :record_type, String

          # @!attribute source_type
          #   The type of Telnyx data attached as a source. `bucket` requires an additional
          #   `bucket_id`. Only `voice` is searchable today; `meeting_bot`, `message`, and
          #   `bucket` attach but are not yet searchable (Coming soon).
          #
          #   @return [Symbol, Telnyx::Models::AI::Collections::SourceType, nil]
          optional :source_type, enum: -> { Telnyx::AI::Collections::SourceType }

          # @!attribute status
          #
          #   @return [String, nil]
          optional :status, String

          # @!method initialize(id: nil, bucket_id: nil, collection_id: nil, record_type: nil, source_type: nil, status: nil)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::AI::Collections::Source} for more details.
          #
          #   @param id [String]
          #
          #   @param bucket_id [String] The Telnyx Storage bucket name. Present only for `bucket` sources.
          #
          #   @param collection_id [String]
          #
          #   @param record_type [String] Identifies the record type. Always `ai_collection_source`.
          #
          #   @param source_type [Symbol, Telnyx::Models::AI::Collections::SourceType] The type of Telnyx data attached as a source. `bucket` requires an additional `b
          #
          #   @param status [String]
        end
      end
    end
  end
end

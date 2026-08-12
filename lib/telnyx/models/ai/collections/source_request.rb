# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      module Collections
        class SourceRequest < Telnyx::Internal::Type::BaseModel
          # @!attribute source_type
          #   The type of Telnyx data attached as a source. `bucket` requires an additional
          #   `bucket_id`. Only `voice` is searchable today; `meeting_bot`, `message`, and
          #   `bucket` attach but are not yet searchable (Coming soon).
          #
          #   @return [Symbol, Telnyx::Models::AI::Collections::SourceType]
          required :source_type, enum: -> { Telnyx::AI::Collections::SourceType }

          # @!attribute bucket_id
          #   The Telnyx Storage bucket name. Required when `source_type` is `bucket`; ignored
          #   otherwise.
          #
          #   @return [String, nil]
          optional :bucket_id, String

          # @!method initialize(source_type:, bucket_id: nil)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::AI::Collections::SourceRequest} for more details.
          #
          #   @param source_type [Symbol, Telnyx::Models::AI::Collections::SourceType] The type of Telnyx data attached as a source. `bucket` requires an additional `b
          #
          #   @param bucket_id [String] The Telnyx Storage bucket name. Required when `source_type` is `bucket`; ignored
        end
      end
    end
  end
end

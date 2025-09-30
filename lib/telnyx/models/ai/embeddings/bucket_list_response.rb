# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      module Embeddings
        # @see Telnyx::Resources::AI::Embeddings::Buckets#list
        class BucketListResponse < Telnyx::Internal::Type::BaseModel
          # @!attribute data
          #
          #   @return [Telnyx::Models::AI::Embeddings::BucketListResponse::Data]
          required :data, -> { Telnyx::Models::AI::Embeddings::BucketListResponse::Data }

          # @!method initialize(data:)
          #   @param data [Telnyx::Models::AI::Embeddings::BucketListResponse::Data]

          # @see Telnyx::Models::AI::Embeddings::BucketListResponse#data
          class Data < Telnyx::Internal::Type::BaseModel
            # @!attribute buckets
            #
            #   @return [Array<String>]
            required :buckets, Telnyx::Internal::Type::ArrayOf[String]

            # @!method initialize(buckets:)
            #   @param buckets [Array<String>]
          end
        end
      end
    end
  end
end

# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      class BucketIDs < Telnyx::Internal::Type::BaseModel
        # @!attribute bucket_ids
        #
        #   @return [Array<String>]
        required :bucket_ids, Telnyx::Internal::Type::ArrayOf[String]

        # @!attribute max_num_results
        #   The maximum number of results to retrieve as context for the language model.
        #
        #   @return [Integer, nil]
        optional :max_num_results, Integer

        # @!method initialize(bucket_ids:, max_num_results: nil)
        #   @param bucket_ids [Array<String>]
        #
        #   @param max_num_results [Integer] The maximum number of results to retrieve as context for the language model.
      end
    end
  end
end

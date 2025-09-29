# frozen_string_literal: true

module Telnyx
  module Models
    module Storage
      module Buckets
        # @see Telnyx::Resources::Storage::Buckets::Usage#get_bucket_usage
        class UsageGetBucketUsageResponse < Telnyx::Internal::Type::BaseModel
          # @!attribute data
          #
          #   @return [Array<Telnyx::Models::Storage::Buckets::UsageGetBucketUsageResponse::Data>, nil]
          optional :data,
                   -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::Storage::Buckets::UsageGetBucketUsageResponse::Data] }

          # @!attribute meta
          #
          #   @return [Telnyx::Models::Storage::Buckets::PaginationMetaSimple, nil]
          optional :meta, -> { Telnyx::Storage::Buckets::PaginationMetaSimple }

          # @!method initialize(data: nil, meta: nil)
          #   @param data [Array<Telnyx::Models::Storage::Buckets::UsageGetBucketUsageResponse::Data>]
          #   @param meta [Telnyx::Models::Storage::Buckets::PaginationMetaSimple]

          class Data < Telnyx::Internal::Type::BaseModel
            # @!attribute num_objects
            #   The number of objects in the bucket
            #
            #   @return [Integer, nil]
            optional :num_objects, Integer

            # @!attribute size
            #   The size of the bucket in bytes
            #
            #   @return [Integer, nil]
            optional :size, Integer

            # @!attribute size_kb
            #   The size of the bucket in kilobytes
            #
            #   @return [Integer, nil]
            optional :size_kb, Integer

            # @!attribute timestamp
            #   The time the snapshot was taken
            #
            #   @return [Time, nil]
            optional :timestamp, Time

            # @!method initialize(num_objects: nil, size: nil, size_kb: nil, timestamp: nil)
            #   @param num_objects [Integer] The number of objects in the bucket
            #
            #   @param size [Integer] The size of the bucket in bytes
            #
            #   @param size_kb [Integer] The size of the bucket in kilobytes
            #
            #   @param timestamp [Time] The time the snapshot was taken
          end
        end
      end
    end
  end
end

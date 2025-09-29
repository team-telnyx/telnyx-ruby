# frozen_string_literal: true

module Telnyx
  module Models
    module Storage
      module Buckets
        # @see Telnyx::Resources::Storage::Buckets::Usage#get_api_usage
        class UsageGetAPIUsageResponse < Telnyx::Internal::Type::BaseModel
          # @!attribute data
          #
          #   @return [Array<Telnyx::Models::Storage::Buckets::UsageGetAPIUsageResponse::Data>, nil]
          optional :data,
                   -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::Storage::Buckets::UsageGetAPIUsageResponse::Data] }

          # @!method initialize(data: nil)
          #   @param data [Array<Telnyx::Models::Storage::Buckets::UsageGetAPIUsageResponse::Data>]

          class Data < Telnyx::Internal::Type::BaseModel
            # @!attribute categories
            #
            #   @return [Array<Telnyx::Models::Storage::Buckets::UsageGetAPIUsageResponse::Data::Category>, nil]
            optional :categories,
                     -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::Storage::Buckets::UsageGetAPIUsageResponse::Data::Category] }

            # @!attribute timestamp
            #   The time the usage was recorded
            #
            #   @return [Time, nil]
            optional :timestamp, Time

            # @!attribute total
            #
            #   @return [Telnyx::Models::Storage::Buckets::UsageGetAPIUsageResponse::Data::Total, nil]
            optional :total, -> { Telnyx::Models::Storage::Buckets::UsageGetAPIUsageResponse::Data::Total }

            # @!method initialize(categories: nil, timestamp: nil, total: nil)
            #   @param categories [Array<Telnyx::Models::Storage::Buckets::UsageGetAPIUsageResponse::Data::Category>]
            #
            #   @param timestamp [Time] The time the usage was recorded
            #
            #   @param total [Telnyx::Models::Storage::Buckets::UsageGetAPIUsageResponse::Data::Total]

            class Category < Telnyx::Internal::Type::BaseModel
              # @!attribute bytes_received
              #   The number of bytes received
              #
              #   @return [Integer, nil]
              optional :bytes_received, Integer

              # @!attribute bytes_sent
              #   The number of bytes sent
              #
              #   @return [Integer, nil]
              optional :bytes_sent, Integer

              # @!attribute category
              #   The category of the bucket operation
              #
              #   @return [Symbol, Telnyx::Models::Storage::Buckets::UsageGetAPIUsageResponse::Data::Category::Category, nil]
              optional :category,
                       enum: -> { Telnyx::Models::Storage::Buckets::UsageGetAPIUsageResponse::Data::Category::Category }

              # @!attribute ops
              #   The number of operations
              #
              #   @return [Integer, nil]
              optional :ops, Integer

              # @!attribute successful_ops
              #   The number of successful operations
              #
              #   @return [Integer, nil]
              optional :successful_ops, Integer

              # @!method initialize(bytes_received: nil, bytes_sent: nil, category: nil, ops: nil, successful_ops: nil)
              #   @param bytes_received [Integer] The number of bytes received
              #
              #   @param bytes_sent [Integer] The number of bytes sent
              #
              #   @param category [Symbol, Telnyx::Models::Storage::Buckets::UsageGetAPIUsageResponse::Data::Category::Category] The category of the bucket operation
              #
              #   @param ops [Integer] The number of operations
              #
              #   @param successful_ops [Integer] The number of successful operations

              # The category of the bucket operation
              #
              # @see Telnyx::Models::Storage::Buckets::UsageGetAPIUsageResponse::Data::Category#category
              module Category
                extend Telnyx::Internal::Type::Enum

                LIST_BUCKET = :list_bucket
                LIST_BUCKETS = :list_buckets
                GET_BUCKET_LOCATION = :"get-bucket_location"
                CREATE_BUCKET = :create_bucket
                STAT_BUCKET = :stat_bucket
                GET_BUCKET_VERSIONING = :get_bucket_versioning
                SET_BUCKET_VERSIONING = :set_bucket_versioning
                GET_OBJ = :get_obj
                PUT_OBJ = :put_obj
                DELETE_OBJ = :delete_obj

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Telnyx::Models::Storage::Buckets::UsageGetAPIUsageResponse::Data#total
            class Total < Telnyx::Internal::Type::BaseModel
              # @!attribute bytes_received
              #   The number of bytes received
              #
              #   @return [Integer, nil]
              optional :bytes_received, Integer

              # @!attribute bytes_sent
              #   The number of bytes sent
              #
              #   @return [Integer, nil]
              optional :bytes_sent, Integer

              # @!attribute ops
              #   The number of operations
              #
              #   @return [Integer, nil]
              optional :ops, Integer

              # @!attribute successful_ops
              #   The number of successful operations
              #
              #   @return [Integer, nil]
              optional :successful_ops, Integer

              # @!method initialize(bytes_received: nil, bytes_sent: nil, ops: nil, successful_ops: nil)
              #   @param bytes_received [Integer] The number of bytes received
              #
              #   @param bytes_sent [Integer] The number of bytes sent
              #
              #   @param ops [Integer] The number of operations
              #
              #   @param successful_ops [Integer] The number of successful operations
            end
          end
        end
      end
    end
  end
end

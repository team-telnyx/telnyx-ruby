# typed: strong

module Telnyx
  module Resources
    class Storage
      class Buckets
        class Usage
          # Returns the detail on API usage on a bucket of a particular time period, group
          # by method category.
          sig do
            params(
              bucket_name: String,
              filter:
                Telnyx::Storage::Buckets::UsageGetAPIUsageParams::Filter::OrHash,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(
              Telnyx::Models::Storage::Buckets::UsageGetAPIUsageResponse
            )
          end
          def get_api_usage(
            # The name of the bucket
            bucket_name,
            # Consolidated filter parameter (deepObject style). Originally:
            # filter[start_time], filter[end_time]
            filter:,
            request_options: {}
          )
          end

          # Returns the amount of storage space and number of files a bucket takes up.
          sig do
            params(
              bucket_name: String,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(
              Telnyx::Models::Storage::Buckets::UsageGetBucketUsageResponse
            )
          end
          def get_bucket_usage(
            # The name of the bucket
            bucket_name,
            request_options: {}
          )
          end

          # @api private
          sig { params(client: Telnyx::Client).returns(T.attached_class) }
          def self.new(client:)
          end
        end
      end
    end
  end
end

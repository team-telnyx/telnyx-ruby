# frozen_string_literal: true

module Telnyx
  module Resources
    class Storage
      class Buckets
        class Usage
          # Some parameter documentations has been truncated, see
          # {Telnyx::Models::Storage::Buckets::UsageGetAPIUsageParams} for more details.
          #
          # Returns the detail on API usage on a bucket of a particular time period, group
          # by method category.
          #
          # @overload get_api_usage(bucket_name, filter:, request_options: {})
          #
          # @param bucket_name [String] The name of the bucket
          #
          # @param filter [Telnyx::Models::Storage::Buckets::UsageGetAPIUsageParams::Filter] Consolidated filter parameter (deepObject style). Originally: filter[start_time]
          #
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Telnyx::Models::Storage::Buckets::UsageGetAPIUsageResponse]
          #
          # @see Telnyx::Models::Storage::Buckets::UsageGetAPIUsageParams
          def get_api_usage(bucket_name, params)
            parsed, options = Telnyx::Storage::Buckets::UsageGetAPIUsageParams.dump_request(params)
            @client.request(
              method: :get,
              path: ["storage/buckets/%1$s/usage/api", bucket_name],
              query: parsed,
              model: Telnyx::Models::Storage::Buckets::UsageGetAPIUsageResponse,
              options: options
            )
          end

          # Returns the amount of storage space and number of files a bucket takes up.
          #
          # @overload get_bucket_usage(bucket_name, request_options: {})
          #
          # @param bucket_name [String] The name of the bucket
          #
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Telnyx::Models::Storage::Buckets::UsageGetBucketUsageResponse]
          #
          # @see Telnyx::Models::Storage::Buckets::UsageGetBucketUsageParams
          def get_bucket_usage(bucket_name, params = {})
            @client.request(
              method: :get,
              path: ["storage/buckets/%1$s/usage/storage", bucket_name],
              model: Telnyx::Models::Storage::Buckets::UsageGetBucketUsageResponse,
              options: params[:request_options]
            )
          end

          # @api private
          #
          # @param client [Telnyx::Client]
          def initialize(client:)
            @client = client
          end
        end
      end
    end
  end
end

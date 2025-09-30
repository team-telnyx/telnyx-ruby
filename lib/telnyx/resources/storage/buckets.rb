# frozen_string_literal: true

module Telnyx
  module Resources
    class Storage
      class Buckets
        # @return [Telnyx::Resources::Storage::Buckets::SslCertificate]
        attr_reader :ssl_certificate

        # @return [Telnyx::Resources::Storage::Buckets::Usage]
        attr_reader :usage

        # Returns a timed and authenticated URL to get an object. This is the equivalent
        # to AWS S3’s “presigned” URL. Please note that Telnyx performs authentication
        # differently from AWS S3 and you MUST NOT use the presign method of AWS s3api CLI
        # or sdk to generate the presigned URL.
        #
        # Refer to: https://developers.telnyx.com/docs/cloud-storage/presigned-urls
        #
        # @overload create_presigned_url(object_name, bucket_name:, ttl: nil, request_options: {})
        #
        # @param object_name [String] Path param: The name of the object
        #
        # @param bucket_name [String] Path param: The name of the bucket
        #
        # @param ttl [Integer] Body param: The time to live of the token in seconds
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Storage::BucketCreatePresignedURLResponse]
        #
        # @see Telnyx::Models::Storage::BucketCreatePresignedURLParams
        def create_presigned_url(object_name, params)
          parsed, options = Telnyx::Storage::BucketCreatePresignedURLParams.dump_request(params)
          bucket_name =
            parsed.delete(:bucket_name) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :post,
            path: ["storage/buckets/%1$s/%2$s/presigned_url", bucket_name, object_name],
            body: parsed,
            model: Telnyx::Models::Storage::BucketCreatePresignedURLResponse,
            options: options
          )
        end

        # @api private
        #
        # @param client [Telnyx::Client]
        def initialize(client:)
          @client = client
          @ssl_certificate = Telnyx::Resources::Storage::Buckets::SslCertificate.new(client: client)
          @usage = Telnyx::Resources::Storage::Buckets::Usage.new(client: client)
        end
      end
    end
  end
end

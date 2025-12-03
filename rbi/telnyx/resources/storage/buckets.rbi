# typed: strong

module Telnyx
  module Resources
    class Storage
      class Buckets
        sig { returns(Telnyx::Resources::Storage::Buckets::SslCertificate) }
        attr_reader :ssl_certificate

        sig { returns(Telnyx::Resources::Storage::Buckets::Usage) }
        attr_reader :usage

        # Returns a timed and authenticated URL to download (GET) or upload (PUT) an
        # object. This is the equivalent to AWS S3’s “presigned” URL. Please note that
        # Telnyx performs authentication differently from AWS S3 and you MUST NOT use the
        # presign method of AWS s3api CLI or SDK to generate the presigned URL.
        #
        # Refer to: https://developers.telnyx.com/docs/cloud-storage/presigned-urls
        sig do
          params(
            object_name: String,
            bucket_name: String,
            ttl: Integer,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::Storage::BucketCreatePresignedURLResponse)
        end
        def create_presigned_url(
          # Path param: The name of the object
          object_name,
          # Path param: The name of the bucket
          bucket_name:,
          # Body param: The time to live of the token in seconds
          ttl: nil,
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

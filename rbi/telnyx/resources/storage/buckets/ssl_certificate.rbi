# typed: strong

module Telnyx
  module Resources
    class Storage
      class Buckets
        class SslCertificate
          # Uploads an SSL certificate and its matching secret so that you can use Telnyx's
          # storage as your CDN.
          sig do
            params(
              bucket_name: String,
              certificate: Telnyx::Internal::FileInput,
              private_key: Telnyx::Internal::FileInput,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(
              Telnyx::Models::Storage::Buckets::SslCertificateCreateResponse
            )
          end
          def create(
            # The name of the bucket
            bucket_name,
            # The SSL certificate file
            certificate: nil,
            # The private key file
            private_key: nil,
            request_options: {}
          )
          end

          # Returns the stored certificate detail of a bucket, if applicable.
          sig do
            params(
              bucket_name: String,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(
              Telnyx::Models::Storage::Buckets::SslCertificateRetrieveResponse
            )
          end
          def retrieve(
            # The name of the bucket
            bucket_name,
            request_options: {}
          )
          end

          # Deletes an SSL certificate and its matching secret.
          sig do
            params(
              bucket_name: String,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(
              Telnyx::Models::Storage::Buckets::SslCertificateDeleteResponse
            )
          end
          def delete(
            # Bucket Name
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

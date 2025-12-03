# frozen_string_literal: true

module Telnyx
  module Resources
    class Storage
      class Buckets
        class SslCertificate
          # Uploads an SSL certificate and its matching secret so that you can use Telnyx's
          # storage as your CDN.
          #
          # @overload create(bucket_name, certificate: nil, private_key: nil, request_options: {})
          #
          # @param bucket_name [String] The name of the bucket
          #
          # @param certificate [Pathname, StringIO, IO, String, Telnyx::FilePart] The SSL certificate file
          #
          # @param private_key [Pathname, StringIO, IO, String, Telnyx::FilePart] The private key file
          #
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Telnyx::Models::Storage::Buckets::SslCertificateCreateResponse]
          #
          # @see Telnyx::Models::Storage::Buckets::SslCertificateCreateParams
          def create(bucket_name, params = {})
            parsed, options = Telnyx::Storage::Buckets::SslCertificateCreateParams.dump_request(params)
            @client.request(
              method: :put,
              path: ["storage/buckets/%1$s/ssl_certificate", bucket_name],
              headers: {"content-type" => "multipart/form-data"},
              body: parsed,
              model: Telnyx::Models::Storage::Buckets::SslCertificateCreateResponse,
              options: options
            )
          end

          # Returns the stored certificate detail of a bucket, if applicable.
          #
          # @overload retrieve(bucket_name, request_options: {})
          #
          # @param bucket_name [String] The name of the bucket
          #
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Telnyx::Models::Storage::Buckets::SslCertificateRetrieveResponse]
          #
          # @see Telnyx::Models::Storage::Buckets::SslCertificateRetrieveParams
          def retrieve(bucket_name, params = {})
            @client.request(
              method: :get,
              path: ["storage/buckets/%1$s/ssl_certificate", bucket_name],
              model: Telnyx::Models::Storage::Buckets::SslCertificateRetrieveResponse,
              options: params[:request_options]
            )
          end

          # Deletes an SSL certificate and its matching secret.
          #
          # @overload delete(bucket_name, request_options: {})
          #
          # @param bucket_name [String] Bucket Name
          #
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Telnyx::Models::Storage::Buckets::SslCertificateDeleteResponse]
          #
          # @see Telnyx::Models::Storage::Buckets::SslCertificateDeleteParams
          def delete(bucket_name, params = {})
            @client.request(
              method: :delete,
              path: ["storage/buckets/%1$s/ssl_certificate", bucket_name],
              model: Telnyx::Models::Storage::Buckets::SslCertificateDeleteResponse,
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

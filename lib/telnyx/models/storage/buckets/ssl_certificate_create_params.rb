# frozen_string_literal: true

module Telnyx
  module Models
    module Storage
      module Buckets
        # @see Telnyx::Resources::Storage::Buckets::SslCertificate#create
        class SslCertificateCreateParams < Telnyx::Internal::Type::BaseModel
          extend Telnyx::Internal::Type::RequestParameters::Converter
          include Telnyx::Internal::Type::RequestParameters

          # @!attribute bucket_name
          #
          #   @return [String]
          required :bucket_name, String

          # @!attribute certificate
          #   The SSL certificate file
          #
          #   @return [Pathname, StringIO, IO, String, Telnyx::FilePart, nil]
          optional :certificate, Telnyx::Internal::Type::FileInput

          # @!attribute private_key
          #   The private key file
          #
          #   @return [Pathname, StringIO, IO, String, Telnyx::FilePart, nil]
          optional :private_key, Telnyx::Internal::Type::FileInput

          # @!method initialize(bucket_name:, certificate: nil, private_key: nil, request_options: {})
          #   @param bucket_name [String]
          #
          #   @param certificate [Pathname, StringIO, IO, String, Telnyx::FilePart] The SSL certificate file
          #
          #   @param private_key [Pathname, StringIO, IO, String, Telnyx::FilePart] The private key file
          #
          #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end

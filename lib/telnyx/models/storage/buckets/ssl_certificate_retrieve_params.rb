# frozen_string_literal: true

module Telnyx
  module Models
    module Storage
      module Buckets
        # @see Telnyx::Resources::Storage::Buckets::SslCertificate#retrieve
        class SslCertificateRetrieveParams < Telnyx::Internal::Type::BaseModel
          extend Telnyx::Internal::Type::RequestParameters::Converter
          include Telnyx::Internal::Type::RequestParameters

          # @!attribute bucket_name
          #
          #   @return [String]
          required :bucket_name, String

          # @!method initialize(bucket_name:, request_options: {})
          #   @param bucket_name [String]
          #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end

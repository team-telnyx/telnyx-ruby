# frozen_string_literal: true

module Telnyx
  module Models
    module Storage
      # @see Telnyx::Resources::Storage::Buckets#create_presigned_url
      class BucketCreatePresignedURLParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute bucket_name
        #
        #   @return [String]
        required :bucket_name, String

        # @!attribute ttl
        #   The time to live of the token in seconds
        #
        #   @return [Integer, nil]
        optional :ttl, Integer

        # @!method initialize(bucket_name:, ttl: nil, request_options: {})
        #   @param bucket_name [String]
        #
        #   @param ttl [Integer] The time to live of the token in seconds
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end

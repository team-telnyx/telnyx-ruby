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

        # @!attribute object_name
        #
        #   @return [String]
        required :object_name, String

        # @!attribute body
        #
        #   @return [Telnyx::Models::Storage::BucketCreatePresignedURLParams::Body, nil]
        optional :body, -> { Telnyx::Storage::BucketCreatePresignedURLParams::Body }

        # @!method initialize(bucket_name:, object_name:, body: nil, request_options: {})
        #   @param bucket_name [String]
        #   @param object_name [String]
        #   @param body [Telnyx::Models::Storage::BucketCreatePresignedURLParams::Body]
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

        class Body < Telnyx::Internal::Type::BaseModel
          # @!attribute ttl
          #   The time to live of the token in seconds
          #
          #   @return [Integer, nil]
          optional :ttl, Integer

          # @!method initialize(ttl: nil)
          #   @param ttl [Integer] The time to live of the token in seconds
        end
      end
    end
  end
end

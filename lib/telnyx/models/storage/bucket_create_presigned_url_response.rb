# frozen_string_literal: true

module Telnyx
  module Models
    module Storage
      # @see Telnyx::Resources::Storage::Buckets#create_presigned_url
      class BucketCreatePresignedURLResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute content
        #
        #   @return [Telnyx::Models::Storage::BucketCreatePresignedURLResponse::Content, nil]
        optional :content, -> { Telnyx::Models::Storage::BucketCreatePresignedURLResponse::Content }

        # @!method initialize(content: nil)
        #   @param content [Telnyx::Models::Storage::BucketCreatePresignedURLResponse::Content]

        # @see Telnyx::Models::Storage::BucketCreatePresignedURLResponse#content
        class Content < Telnyx::Internal::Type::BaseModel
          # @!attribute token
          #   The token for the object
          #
          #   @return [String, nil]
          optional :token, String

          # @!attribute expires_at
          #   The expiration time of the token
          #
          #   @return [Time, nil]
          optional :expires_at, Time

          # @!attribute presigned_url
          #   The presigned URL for the object
          #
          #   @return [String, nil]
          optional :presigned_url, String

          # @!method initialize(token: nil, expires_at: nil, presigned_url: nil)
          #   @param token [String] The token for the object
          #
          #   @param expires_at [Time] The expiration time of the token
          #
          #   @param presigned_url [String] The presigned URL for the object
        end
      end
    end
  end
end

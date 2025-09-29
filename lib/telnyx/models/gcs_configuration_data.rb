# frozen_string_literal: true

module Telnyx
  module Models
    class GcsConfigurationData < Telnyx::Internal::Type::BaseModel
      # @!attribute bucket
      #   Name of the bucket to be used to store recording files.
      #
      #   @return [String, nil]
      optional :bucket, String

      # @!attribute credentials
      #   Opaque credential token used to authenticate and authorize with storage
      #   provider.
      #
      #   @return [String, nil]
      optional :credentials, String

      # @!method initialize(bucket: nil, credentials: nil)
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::GcsConfigurationData} for more details.
      #
      #   @param bucket [String] Name of the bucket to be used to store recording files.
      #
      #   @param credentials [String] Opaque credential token used to authenticate and authorize with storage provider
    end
  end
end

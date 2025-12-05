# frozen_string_literal: true

module Telnyx
  module Models
    class GcsConfigurationData < Telnyx::Internal::Type::BaseModel
      # @!attribute backend
      #   Storage backend type
      #
      #   @return [Symbol, Telnyx::Models::GcsConfigurationData::Backend]
      required :backend, enum: -> { Telnyx::GcsConfigurationData::Backend }

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

      # @!method initialize(backend:, bucket: nil, credentials: nil)
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::GcsConfigurationData} for more details.
      #
      #   @param backend [Symbol, Telnyx::Models::GcsConfigurationData::Backend] Storage backend type
      #
      #   @param bucket [String] Name of the bucket to be used to store recording files.
      #
      #   @param credentials [String] Opaque credential token used to authenticate and authorize with storage provider

      # Storage backend type
      #
      # @see Telnyx::Models::GcsConfigurationData#backend
      module Backend
        extend Telnyx::Internal::Type::Enum

        GCS = :gcs

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end

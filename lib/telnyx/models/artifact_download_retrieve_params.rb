# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::ArtifactDownloads#retrieve
    class ArtifactDownloadRetrieveParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute artifact_id
      #
      #   @return [String]
      required :artifact_id, String

      # @!attribute expires
      #
      #   @return [String]
      required :expires, String

      # @!attribute sig_
      #
      #   @return [String]
      required :sig_, String

      # @!method initialize(artifact_id:, expires:, sig_:, request_options: {})
      #   @param artifact_id [String]
      #   @param expires [String]
      #   @param sig_ [String]
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end

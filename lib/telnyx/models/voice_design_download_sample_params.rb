# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::VoiceDesigns#download_sample
    class VoiceDesignDownloadSampleParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute version
      #   Specific version number to download the sample for. Defaults to the latest
      #   version.
      #
      #   @return [Integer, nil]
      optional :version, Integer

      # @!method initialize(id:, version: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::VoiceDesignDownloadSampleParams} for more details.
      #
      #   @param id [String]
      #
      #   @param version [Integer] Specific version number to download the sample for. Defaults to the latest versi
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end

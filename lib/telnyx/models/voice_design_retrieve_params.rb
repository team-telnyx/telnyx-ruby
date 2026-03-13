# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::VoiceDesigns#retrieve
    class VoiceDesignRetrieveParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute version
      #   Specific version number to retrieve. Defaults to the latest version.
      #
      #   @return [Integer, nil]
      optional :version, Integer

      # @!method initialize(id:, version: nil, request_options: {})
      #   @param id [String]
      #
      #   @param version [Integer] Specific version number to retrieve. Defaults to the latest version.
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end

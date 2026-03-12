# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::VoiceDesigns#delete_version
    class VoiceDesignDeleteVersionParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute version
      #
      #   @return [Integer]
      required :version, Integer

      # @!method initialize(id:, version:, request_options: {})
      #   @param id [String]
      #   @param version [Integer]
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end

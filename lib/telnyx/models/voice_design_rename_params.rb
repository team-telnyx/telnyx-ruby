# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::VoiceDesigns#rename
    class VoiceDesignRenameParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute name
      #   New name for the voice design.
      #
      #   @return [String]
      required :name, String

      # @!method initialize(id:, name:, request_options: {})
      #   @param id [String]
      #
      #   @param name [String] New name for the voice design.
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end

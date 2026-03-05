# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::Media#retrieve
    class MediaRetrieveParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute media_name
      #
      #   @return [String]
      required :media_name, String

      # @!method initialize(media_name:, request_options: {})
      #   @param media_name [String]
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end

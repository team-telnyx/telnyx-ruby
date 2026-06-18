# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::AI#create_response_deprecated
    class AICreateResponseDeprecatedParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute response_request
      #
      #   @return [Hash{Symbol=>Object}]
      required :response_request, Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]

      # @!method initialize(response_request:, request_options: {})
      #   @param response_request [Hash{Symbol=>Object}]
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end

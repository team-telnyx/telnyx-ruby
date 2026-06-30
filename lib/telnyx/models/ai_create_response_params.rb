# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::AI#create_response
    class AICreateResponseParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute input
      #
      #   @return [Hash{Symbol=>Object}]
      required :input, Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]

      # @!method initialize(input:, request_options: {})
      #   @param input [Hash{Symbol=>Object}]
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end

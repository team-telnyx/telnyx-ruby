# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::AI#create_response
    class AICreateResponseParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute params
      #
      #   @return [Hash{Symbol=>Object}]
      required :params, Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]

      # @!method initialize(params:, request_options: {})
      #   @param params [Hash{Symbol=>Object}]
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end

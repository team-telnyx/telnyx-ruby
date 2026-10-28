# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::PayConnectors#retrieve
    class PayConnectorRetrieveParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute name
      #
      #   @return [String]
      required :name, String

      # @!method initialize(name:, request_options: {})
      #   @param name [String]
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end

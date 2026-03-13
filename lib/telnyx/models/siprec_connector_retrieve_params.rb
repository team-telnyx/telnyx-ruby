# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::SiprecConnectors#retrieve
    class SiprecConnectorRetrieveParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute connector_name
      #
      #   @return [String]
      required :connector_name, String

      # @!method initialize(connector_name:, request_options: {})
      #   @param connector_name [String]
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end

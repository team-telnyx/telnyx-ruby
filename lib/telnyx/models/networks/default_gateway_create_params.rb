# frozen_string_literal: true

module Telnyx
  module Models
    module Networks
      # @see Telnyx::Resources::Networks::DefaultGateway#create
      class DefaultGatewayCreateParams < Telnyx::Models::Networks::NetworksDefaultGateway
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute network_identifier
        #
        #   @return [String]
        required :network_identifier, String

        # @!method initialize(network_identifier:, request_options: {})
        #   @param network_identifier [String]
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end

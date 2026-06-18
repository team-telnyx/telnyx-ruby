# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::PublicInternetGateways#create
    class PublicInternetGatewayCreateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute body
      #
      #   @return [Telnyx::Models::PublicInternetGatewayCreateParams::Body]
      required :body, -> { Telnyx::PublicInternetGatewayCreateParams::Body }

      # @!method initialize(body:, request_options: {})
      #   @param body [Telnyx::Models::PublicInternetGatewayCreateParams::Body]
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      class Body < Telnyx::Models::PublicInternetGateway
        # @!method initialize
      end
    end
  end
end

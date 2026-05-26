# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::PublicInternetGateways#retrieve
    class PublicInternetGatewayRetrieveResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::PublicInternetGatewayRetrieveResponse::Data, nil]
      optional :data, -> { Telnyx::Models::PublicInternetGatewayRetrieveResponse::Data }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::PublicInternetGatewayRetrieveResponse::Data]

      # @see Telnyx::Models::PublicInternetGatewayRetrieveResponse#data
      class Data < Telnyx::Models::Record
        # @!method initialize
      end
    end
  end
end

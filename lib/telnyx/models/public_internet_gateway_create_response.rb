# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::PublicInternetGateways#create
    class PublicInternetGatewayCreateResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::PublicInternetGatewayCreateResponse::Data, nil]
      optional :data, -> { Telnyx::Models::PublicInternetGatewayCreateResponse::Data }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::PublicInternetGatewayCreateResponse::Data]

      # @see Telnyx::Models::PublicInternetGatewayCreateResponse#data
      class Data < Telnyx::Models::Record
        # @!method initialize
      end
    end
  end
end

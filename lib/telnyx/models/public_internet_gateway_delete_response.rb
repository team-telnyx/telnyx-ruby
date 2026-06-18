# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::PublicInternetGateways#delete
    class PublicInternetGatewayDeleteResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::PublicInternetGatewayRead, nil]
      optional :data, -> { Telnyx::PublicInternetGatewayRead }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::PublicInternetGatewayRead]
    end
  end
end

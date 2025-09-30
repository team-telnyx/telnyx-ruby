# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::PublicInternetGateways#delete
    class PublicInternetGatewayDeleteResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::PublicInternetGatewayDeleteResponse::Data, nil]
      optional :data, -> { Telnyx::Models::PublicInternetGatewayDeleteResponse::Data }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::PublicInternetGatewayDeleteResponse::Data]
    end
  end
end

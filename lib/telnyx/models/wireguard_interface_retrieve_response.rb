# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::WireguardInterfaces#retrieve
    class WireguardInterfaceRetrieveResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::WireguardInterfaceRetrieveResponse::Data, nil]
      optional :data, -> { Telnyx::Models::WireguardInterfaceRetrieveResponse::Data }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::WireguardInterfaceRetrieveResponse::Data]
    end
  end
end

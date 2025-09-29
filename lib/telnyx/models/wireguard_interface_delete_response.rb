# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::WireguardInterfaces#delete
    class WireguardInterfaceDeleteResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::WireguardInterfaceDeleteResponse::Data, nil]
      optional :data, -> { Telnyx::Models::WireguardInterfaceDeleteResponse::Data }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::WireguardInterfaceDeleteResponse::Data]
    end
  end
end

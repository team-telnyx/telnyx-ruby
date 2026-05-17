# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::WireguardInterfaces#retrieve
    class WireguardInterfaceRetrieveResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::WireguardInterfaceRead, nil]
      optional :data, -> { Telnyx::WireguardInterfaceRead }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::WireguardInterfaceRead]
    end
  end
end

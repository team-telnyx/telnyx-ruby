# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::WireguardInterfaces#create
    class WireguardInterfaceCreateResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::WireguardInterfaceCreateResponse::Data, nil]
      optional :data, -> { Telnyx::Models::WireguardInterfaceCreateResponse::Data }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::WireguardInterfaceCreateResponse::Data]

      # @see Telnyx::Models::WireguardInterfaceCreateResponse#data
      class Data < Telnyx::Models::Record
        # @!method initialize
      end
    end
  end
end

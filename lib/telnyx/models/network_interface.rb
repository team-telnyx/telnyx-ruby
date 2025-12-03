# frozen_string_literal: true

module Telnyx
  module Models
    class NetworkInterface < Telnyx::Internal::Type::BaseModel
      # @!attribute name
      #   A user specified name for the interface.
      #
      #   @return [String, nil]
      optional :name, String

      # @!attribute network_id
      #   The id of the network associated with the interface.
      #
      #   @return [String, nil]
      optional :network_id, String

      response_only do
        # @!attribute status
        #   The current status of the interface deployment.
        #
        #   @return [Symbol, Telnyx::Models::InterfaceStatus, nil]
        optional :status, enum: -> { Telnyx::InterfaceStatus }
      end

      # @!method initialize(name: nil, network_id: nil, status: nil)
      #   @param name [String] A user specified name for the interface.
      #
      #   @param network_id [String] The id of the network associated with the interface.
      #
      #   @param status [Symbol, Telnyx::Models::InterfaceStatus] The current status of the interface deployment.
    end
  end
end

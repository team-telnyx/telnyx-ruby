# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::GlobalIPs#retrieve
    class GlobalIPRetrieveResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::GlobalIPRetrieveResponse::Data, nil]
      optional :data, -> { Telnyx::Models::GlobalIPRetrieveResponse::Data }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::GlobalIPRetrieveResponse::Data]

      # @see Telnyx::Models::GlobalIPRetrieveResponse#data
      class Data < Telnyx::Models::Record
        # @!attribute description
        #   A user specified description for the address.
        #
        #   @return [String, nil]
        optional :description, String

        # @!attribute name
        #   A user specified name for the address.
        #
        #   @return [String, nil]
        optional :name, String

        # @!attribute ports
        #   A Global IP ports grouped by protocol code.
        #
        #   @return [Hash{Symbol=>Object}, nil]
        optional :ports, Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]

        response_only do
          # @!attribute ip_address
          #   The Global IP address.
          #
          #   @return [String, nil]
          optional :ip_address, String
        end

        # @!method initialize(description: nil, ip_address: nil, name: nil, ports: nil)
        #   @param description [String] A user specified description for the address.
        #
        #   @param ip_address [String] The Global IP address.
        #
        #   @param name [String] A user specified name for the address.
        #
        #   @param ports [Hash{Symbol=>Object}] A Global IP ports grouped by protocol code.
      end
    end
  end
end

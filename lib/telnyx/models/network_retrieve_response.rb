# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::Networks#retrieve
    class NetworkRetrieveResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::NetworkRetrieveResponse::Data, nil]
      optional :data, -> { Telnyx::Models::NetworkRetrieveResponse::Data }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::NetworkRetrieveResponse::Data]

      # @see Telnyx::Models::NetworkRetrieveResponse#data
      class Data < Telnyx::Models::Record
        # @!attribute name
        #   A user specified name for the network.
        #
        #   @return [String, nil]
        optional :name, String

        # @!method initialize(name: nil)
        #   @param name [String] A user specified name for the network.
      end
    end
  end
end

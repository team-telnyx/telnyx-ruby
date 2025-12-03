# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::Networks#update
    class NetworkUpdateResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::NetworkUpdateResponse::Data, nil]
      optional :data, -> { Telnyx::Models::NetworkUpdateResponse::Data }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::NetworkUpdateResponse::Data]

      # @see Telnyx::Models::NetworkUpdateResponse#data
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

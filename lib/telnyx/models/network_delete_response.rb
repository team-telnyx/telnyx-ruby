# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::Networks#delete
    class NetworkDeleteResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::NetworkDeleteResponse::Data, nil]
      optional :data, -> { Telnyx::Models::NetworkDeleteResponse::Data }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::NetworkDeleteResponse::Data]

      # @see Telnyx::Models::NetworkDeleteResponse#data
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

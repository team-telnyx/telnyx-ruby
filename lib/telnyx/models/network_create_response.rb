# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::Networks#create
    class NetworkCreateResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::NetworkCreateResponse::Data, nil]
      optional :data, -> { Telnyx::Models::NetworkCreateResponse::Data }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::NetworkCreateResponse::Data]

      # @see Telnyx::Models::NetworkCreateResponse#data
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

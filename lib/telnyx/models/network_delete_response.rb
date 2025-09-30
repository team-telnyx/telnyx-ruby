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

        response_only do
          # @!attribute record_type
          #   Identifies the type of the resource.
          #
          #   @return [String, nil]
          optional :record_type, String
        end

        # @!method initialize(name: nil, record_type: nil)
        #   @param name [String] A user specified name for the network.
        #
        #   @param record_type [String] Identifies the type of the resource.
      end
    end
  end
end

# frozen_string_literal: true

module Telnyx
  module Models
    module ExternalConnections
      # @see Telnyx::Resources::ExternalConnections::CivicAddresses#retrieve
      class CivicAddressRetrieveResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Telnyx::Models::ExternalConnections::CivicAddress, nil]
        optional :data, -> { Telnyx::ExternalConnections::CivicAddress }

        # @!method initialize(data: nil)
        #   @param data [Telnyx::Models::ExternalConnections::CivicAddress]
      end
    end
  end
end

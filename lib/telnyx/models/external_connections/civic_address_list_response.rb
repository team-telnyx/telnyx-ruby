# frozen_string_literal: true

module Telnyx
  module Models
    module ExternalConnections
      # @see Telnyx::Resources::ExternalConnections::CivicAddresses#list
      class CivicAddressListResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Array<Telnyx::Models::ExternalConnections::CivicAddress>, nil]
        optional :data, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::ExternalConnections::CivicAddress] }

        # @!method initialize(data: nil)
        #   @param data [Array<Telnyx::Models::ExternalConnections::CivicAddress>]
      end
    end
  end
end
